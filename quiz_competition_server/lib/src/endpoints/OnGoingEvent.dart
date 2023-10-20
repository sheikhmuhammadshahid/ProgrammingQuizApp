import 'package:quiz_competition_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

import 'Member_endpoint.dart';

class PixoramaEndpoint extends Endpoint {
  static OnGoingEvent onGoingEvent = OnGoingEvent(
    question: null,
    questionForTeam: '-1',
    eventId: -1,
    questionNo: 0,
    totalQuestions: 0,
    round: '',
  );
  static List<StreamingSession> sessions = [];
  static List<OnGoingTeams> totalTeams = [];
  static List<String> connectds = [];

  @override
  Future<void> streamOpened(StreamingSession session) async {
    print('========checking stream session');
    if (sessions.any((element) => element.webSocket == session.webSocket)) {
      print('===============session already exists...');
    } else {
      print('===========stream session added===========');
      sessions.add(session);
    }
    // onGoingEvent = null;
    // session.messages.addListener(
    //   'user_${await session.auth.authenticatedUserId}',
    //   (message) {
    //     sendStreamMessage(session, message);
    //   },
    // );
    return super.streamOpened(session);
  }

  @override
  Future<void> streamClosed(StreamingSession session) {
    // TODO: implement streamClosed
    print('stream closed');
    sessions.remove(session);
    return super.streamClosed(session);
  }

  @override
  Future<void> handleStreamMessage(
      StreamingSession session, SerializableEntity message) async {
    print(message);
    MyMessage myMessage = MyMessage(todo: '', value: '');

    // handle message
    if (message is MyMessage) {
      // handle if event is not started yet by the admin
      if (message.value == 'admin' || message.value == 'admin1') {
        await sendStreamMessage(session, message);
      } else if (message.todo == 'eventId') {
        getTeams(session, int.parse(message.value));
        sendStreamMessage(session, message);
      } else if (onGoingEvent.eventId == -1) {
        if (message.value != 'admin' && message.value != 'admin1') {
          message.todo = 'issue';

          message.value =
              '${message.value} please wait event is not started yet.';
        }
        await sendStreamMessage(session, message);
      }
      //  handle when trying to connect

      else if (message.todo == 'connected') {
        int result = await checkConnected(message.value);
        if (result == -1 || result == 1) {
          message.value = result == -1
              ? 'No team found with this name'
              : 'Already connected';
          message.todo = 'issue';
        }
        sendMessages(message);
      }
      // handle when anyone disconnected

      else if (message.todo == 'disconnected') {
        connectds.remove(message.value);
        sendMessages(message);
      }

      // Handle when event started

      // Handle when event started
      else if (message.todo == 'round') {
        onGoingEvent.round = message.value;
        sendMessages(message);
      } else {
        sendMessages(message);
      }
    }
    if (message is OnGoingEvent) {
      onGoingEvent.question = message.question;
      onGoingEvent.eventId = message.eventId;
      sendMessages(message);
    }

    return super.handleStreamMessage(session, message);
  }

  sendMessages(message) async {
    for (var element in sessions) {
      await sendStreamMessage(element, message);
    }
  }

  checkConnected(String name) async {
    if (totalTeams.any((element) => element.team.teamName == name)) {
      if (connectds.any((element) => element == name)) {
        return 1;
      }
      connectds.add(name);
      return 0;
    }
    return -1;
  }

  getTeams(Session session, int eventId) async {
    try {
      onGoingEvent.eventId = eventId;
      totalTeams =
          await MembersEndpoint().getMembersDetail(session, eventId: eventId);
      print(totalTeams);
    } catch (e) {}
  }

  @override
  Future<void> sendStreamMessage(
      StreamingSession session, SerializableEntity message) async {
    // TODO: implement sendStreamMessage
    return await super.sendStreamMessage(session, message);
  }
}
