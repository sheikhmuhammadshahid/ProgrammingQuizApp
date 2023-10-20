import 'dart:convert';

import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class QuestionEndpoint extends Endpoint {
  Future<ResultApi> addQuestions(Session session,
      {required List<Question> questions}) async {
    try {
      for (var element in questions) {
        await Question.insert(session, element);
      }
      return _okResult;
    } catch (e) {}
    return _errorResult;
  }

  final ResultApi _okResult =
      ResultApi(status: 200, message: 'Added successfully!');
  final ResultApi _errorResult =
      ResultApi(status: 300, message: 'Added successfully!');

  Future<ResultApi> updateQuestion(Session session,
      {required Question question}) async {
    try {
      await Question.update(session, question);
      return _okResult;
    } catch (e) {}
    return _errorResult;
  }

  Future<ResultApi> deleteQuestion(Session session,
      {required Question question}) async {
    try {
      await Question.deleteRow(session, question);
      return _okResult;
    } catch (e) {}
    return _errorResult;
  }

  Future<List<Question>> getQuestions(Session session,
      {required int eventId}) async {
    print('done----');
    print(getUserObject(session));
    List<Question> question = [];
    try {
      question = await Question.find(
        session,
        where: (p0) => p0.eventId.equals(eventId),
      );
      print(question);
    } catch (e) {
      print('erorrrrrr');
      print(e);
    }
    return question;
  }
}
