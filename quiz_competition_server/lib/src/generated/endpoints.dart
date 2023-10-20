/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/Event_endpoint.dart' as _i2;
import '../endpoints/Member_endpoint.dart' as _i3;
import '../endpoints/OnGoingEvent.dart' as _i4;
import '../endpoints/Questions_endpoint.dart' as _i5;
import '../endpoints/example_endpoint.dart' as _i6;
import 'package:quiz_competition_server/src/generated/Events_class.dart' as _i7;
import 'package:quiz_competition_server/src/generated/MemberClass.dart' as _i8;
import 'package:quiz_competition_server/src/generated/OnGoingTeams.dart' as _i9;
import 'package:quiz_competition_server/src/generated/Question.dart' as _i10;
import 'package:serverpod_auth_server/module.dart' as _i11;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'event': _i2.EventEndpoint()
        ..initialize(
          server,
          'event',
          null,
        ),
      'members': _i3.MembersEndpoint()
        ..initialize(
          server,
          'members',
          null,
        ),
      'pixorama': _i4.PixoramaEndpoint()
        ..initialize(
          server,
          'pixorama',
          null,
        ),
      'question': _i5.QuestionEndpoint()
        ..initialize(
          server,
          'question',
          null,
        ),
      'example': _i6.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
    };
    connectors['event'] = _i1.EndpointConnector(
      name: 'event',
      endpoint: endpoints['event']!,
      methodConnectors: {
        'addEvent': _i1.MethodConnector(
          name: 'addEvent',
          params: {
            'eventModel': _i1.ParameterDescription(
              name: 'eventModel',
              type: _i1.getType<_i7.EventModel>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['event'] as _i2.EventEndpoint).addEvent(
            session,
            eventModel: params['eventModel'],
          ),
        ),
        'updateEvent': _i1.MethodConnector(
          name: 'updateEvent',
          params: {
            'eventModel': _i1.ParameterDescription(
              name: 'eventModel',
              type: _i1.getType<_i7.EventModel>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['event'] as _i2.EventEndpoint).updateEvent(
            session,
            eventModel: params['eventModel'],
          ),
        ),
        'deleteEvent': _i1.MethodConnector(
          name: 'deleteEvent',
          params: {
            'eventModel': _i1.ParameterDescription(
              name: 'eventModel',
              type: _i1.getType<_i7.EventModel>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['event'] as _i2.EventEndpoint).deleteEvent(
            session,
            eventModel: params['eventModel'],
          ),
        ),
        'getEvents': _i1.MethodConnector(
          name: 'getEvents',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['event'] as _i2.EventEndpoint).getEvents(session),
        ),
      },
    );
    connectors['members'] = _i1.EndpointConnector(
      name: 'members',
      endpoint: endpoints['members']!,
      methodConnectors: {
        'addMembers': _i1.MethodConnector(
          name: 'addMembers',
          params: {
            'members': _i1.ParameterDescription(
              name: 'members',
              type: _i1.getType<List<_i8.MemberModel>>(),
              nullable: false,
            ),
            'teamId': _i1.ParameterDescription(
              name: 'teamId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i3.MembersEndpoint).addMembers(
            session,
            members: params['members'],
            teamId: params['teamId'],
          ),
        ),
        'deleteMember': _i1.MethodConnector(
          name: 'deleteMember',
          params: {
            'memberId': _i1.ParameterDescription(
              name: 'memberId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i3.MembersEndpoint).deleteMember(
            session,
            memberId: params['memberId'],
          ),
        ),
        'getMembersDetail': _i1.MethodConnector(
          name: 'getMembersDetail',
          params: {
            'eventId': _i1.ParameterDescription(
              name: 'eventId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i3.MembersEndpoint).getMembersDetail(
            session,
            eventId: params['eventId'],
          ),
        ),
        'addTeam': _i1.MethodConnector(
          name: 'addTeam',
          params: {
            'teams': _i1.ParameterDescription(
              name: 'teams',
              type: _i1.getType<List<_i9.OnGoingTeams>>(),
              nullable: false,
            ),
            'eventId': _i1.ParameterDescription(
              name: 'eventId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i3.MembersEndpoint).addTeam(
            session,
            teams: params['teams'],
            eventId: params['eventId'],
          ),
        ),
      },
    );
    connectors['pixorama'] = _i1.EndpointConnector(
      name: 'pixorama',
      endpoint: endpoints['pixorama']!,
      methodConnectors: {},
    );
    connectors['question'] = _i1.EndpointConnector(
      name: 'question',
      endpoint: endpoints['question']!,
      methodConnectors: {
        'addQuestions': _i1.MethodConnector(
          name: 'addQuestions',
          params: {
            'questions': _i1.ParameterDescription(
              name: 'questions',
              type: _i1.getType<List<_i10.Question>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['question'] as _i5.QuestionEndpoint).addQuestions(
            session,
            questions: params['questions'],
          ),
        ),
        'updateQuestion': _i1.MethodConnector(
          name: 'updateQuestion',
          params: {
            'question': _i1.ParameterDescription(
              name: 'question',
              type: _i1.getType<_i10.Question>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['question'] as _i5.QuestionEndpoint).updateQuestion(
            session,
            question: params['question'],
          ),
        ),
        'deleteQuestion': _i1.MethodConnector(
          name: 'deleteQuestion',
          params: {
            'question': _i1.ParameterDescription(
              name: 'question',
              type: _i1.getType<_i10.Question>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['question'] as _i5.QuestionEndpoint).deleteQuestion(
            session,
            question: params['question'],
          ),
        ),
        'getQuestions': _i1.MethodConnector(
          name: 'getQuestions',
          params: {
            'eventId': _i1.ParameterDescription(
              name: 'eventId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['question'] as _i5.QuestionEndpoint).getQuestions(
            session,
            eventId: params['eventId'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i11.Endpoints()..initializeEndpoints(server);
  }
}
