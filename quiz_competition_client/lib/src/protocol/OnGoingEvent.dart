/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class OnGoingEvent extends _i1.SerializableEntity {
  OnGoingEvent({
    this.id,
    this.question,
    required this.eventId,
    required this.questionForTeam,
    required this.round,
    required this.questionNo,
    required this.totalQuestions,
  });

  factory OnGoingEvent.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return OnGoingEvent(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      question: serializationManager
          .deserialize<_i2.Question?>(jsonSerialization['question']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
      questionForTeam: serializationManager
          .deserialize<String>(jsonSerialization['questionForTeam']),
      round:
          serializationManager.deserialize<String>(jsonSerialization['round']),
      questionNo: serializationManager
          .deserialize<int>(jsonSerialization['questionNo']),
      totalQuestions: serializationManager
          .deserialize<int>(jsonSerialization['totalQuestions']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.Question? question;

  int eventId;

  String questionForTeam;

  String round;

  int questionNo;

  int totalQuestions;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'eventId': eventId,
      'questionForTeam': questionForTeam,
      'round': round,
      'questionNo': questionNo,
      'totalQuestions': totalQuestions,
    };
  }
}
