/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Question extends _i1.SerializableEntity {
  Question({
    this.id,
    required this.ques,
    required this.opt1,
    required this.opt2,
    required this.opt3,
    required this.opt4,
    required this.answer,
    required this.type,
    required this.eventId,
  });

  factory Question.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Question(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ques: serializationManager.deserialize<String>(jsonSerialization['ques']),
      opt1: serializationManager.deserialize<String>(jsonSerialization['opt1']),
      opt2: serializationManager.deserialize<String>(jsonSerialization['opt2']),
      opt3: serializationManager.deserialize<String>(jsonSerialization['opt3']),
      opt4: serializationManager.deserialize<String>(jsonSerialization['opt4']),
      answer:
          serializationManager.deserialize<String>(jsonSerialization['answer']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String ques;

  String opt1;

  String opt2;

  String opt3;

  String opt4;

  String answer;

  String type;

  int eventId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ques': ques,
      'opt1': opt1,
      'opt2': opt2,
      'opt3': opt3,
      'opt4': opt4,
      'answer': answer,
      'type': type,
      'eventId': eventId,
    };
  }
}
