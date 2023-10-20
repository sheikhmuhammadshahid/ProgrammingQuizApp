/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:quiz_competition_client/src/protocol/Result.dart' as _i3;
import 'package:quiz_competition_client/src/protocol/Events_class.dart' as _i4;
import 'package:quiz_competition_client/src/protocol/MemberClass.dart' as _i5;
import 'package:quiz_competition_client/src/protocol/OnGoingTeams.dart' as _i6;
import 'package:quiz_competition_client/src/protocol/Question.dart' as _i7;
import 'package:serverpod_auth_client/module.dart' as _i8;
import 'dart:io' as _i9;
import 'protocol.dart' as _i10;

class _EndpointEvent extends _i1.EndpointRef {
  _EndpointEvent(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'event';

  _i2.Future<_i3.ResultApi> addEvent({required _i4.EventModel eventModel}) =>
      caller.callServerEndpoint<_i3.ResultApi>(
        'event',
        'addEvent',
        {'eventModel': eventModel},
      );

  _i2.Future<_i3.ResultApi> updateEvent({required _i4.EventModel eventModel}) =>
      caller.callServerEndpoint<_i3.ResultApi>(
        'event',
        'updateEvent',
        {'eventModel': eventModel},
      );

  _i2.Future<_i3.ResultApi> deleteEvent({required _i4.EventModel eventModel}) =>
      caller.callServerEndpoint<_i3.ResultApi>(
        'event',
        'deleteEvent',
        {'eventModel': eventModel},
      );

  _i2.Future<List<_i4.EventModel>> getEvents() =>
      caller.callServerEndpoint<List<_i4.EventModel>>(
        'event',
        'getEvents',
        {},
      );
}

class _EndpointMembers extends _i1.EndpointRef {
  _EndpointMembers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'members';

  _i2.Future<bool> addMembers({
    required List<_i5.MemberModel> members,
    required int teamId,
  }) =>
      caller.callServerEndpoint<bool>(
        'members',
        'addMembers',
        {
          'members': members,
          'teamId': teamId,
        },
      );

  _i2.Future<bool> deleteMember({required int memberId}) =>
      caller.callServerEndpoint<bool>(
        'members',
        'deleteMember',
        {'memberId': memberId},
      );

  _i2.Future<List<_i6.OnGoingTeams>> getMembersDetail({required int eventId}) =>
      caller.callServerEndpoint<List<_i6.OnGoingTeams>>(
        'members',
        'getMembersDetail',
        {'eventId': eventId},
      );

  _i2.Future<bool> addTeam({
    required List<_i6.OnGoingTeams> teams,
    required int eventId,
  }) =>
      caller.callServerEndpoint<bool>(
        'members',
        'addTeam',
        {
          'teams': teams,
          'eventId': eventId,
        },
      );
}

class _EndpointPixorama extends _i1.EndpointRef {
  _EndpointPixorama(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pixorama';
}

class _EndpointQuestion extends _i1.EndpointRef {
  _EndpointQuestion(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'question';

  _i2.Future<_i3.ResultApi> addQuestions(
          {required List<_i7.Question> questions}) =>
      caller.callServerEndpoint<_i3.ResultApi>(
        'question',
        'addQuestions',
        {'questions': questions},
      );

  _i2.Future<_i3.ResultApi> updateQuestion({required _i7.Question question}) =>
      caller.callServerEndpoint<_i3.ResultApi>(
        'question',
        'updateQuestion',
        {'question': question},
      );

  _i2.Future<_i3.ResultApi> deleteQuestion({required _i7.Question question}) =>
      caller.callServerEndpoint<_i3.ResultApi>(
        'question',
        'deleteQuestion',
        {'question': question},
      );

  _i2.Future<List<_i7.Question>> getQuestions({required int eventId}) =>
      caller.callServerEndpoint<List<_i7.Question>>(
        'question',
        'getQuestions',
        {'eventId': eventId},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i8.Caller(client);
  }

  late final _i8.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i9.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i10.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    event = _EndpointEvent(this);
    members = _EndpointMembers(this);
    pixorama = _EndpointPixorama(this);
    question = _EndpointQuestion(this);
    example = _EndpointExample(this);
    modules = _Modules(this);
  }

  late final _EndpointEvent event;

  late final _EndpointMembers members;

  late final _EndpointPixorama pixorama;

  late final _EndpointQuestion question;

  late final _EndpointExample example;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'event': event,
        'members': members,
        'pixorama': pixorama,
        'question': question,
        'example': example,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
