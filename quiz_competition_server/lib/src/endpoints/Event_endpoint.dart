import 'package:quiz_competition_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class EventEndpoint extends Endpoint {
  Future<ResultApi> addEvent(Session session,
      {required EventModel eventModel}) async {
    try {
      await EventModel.insert(session, eventModel);

      return _okResult;
    } catch (e) {}
    return _errorResult;
  }

  final ResultApi _okResult =
      ResultApi(status: 200, message: 'Added successfully!');
  final ResultApi _errorResult =
      ResultApi(status: 300, message: 'Added successfully!');

  Future<ResultApi> updateEvent(Session session,
      {required EventModel eventModel}) async {
    try {
      await EventModel.update(session, eventModel);
      return _okResult;
    } catch (e) {}
    return _errorResult;
  }

  Future<ResultApi> deleteEvent(Session session,
      {required EventModel eventModel}) async {
    try {
      await EventModel.deleteRow(session, eventModel);
      return _okResult;
    } catch (e) {}
    return _errorResult;
  }

  Future<List<EventModel>> getEvents(
    Session session,
  ) async {
    try {
      return EventModel.find(session);
    } catch (e) {}
    return [];
  }
}
