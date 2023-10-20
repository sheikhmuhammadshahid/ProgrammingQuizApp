/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class TeamModel extends _i1.SerializableEntity {
  TeamModel({
    this.id,
    required this.teamName,
    required this.teamType,
    required this.scores,
    required this.totalMembers,
    required this.buzzerRound,
    required this.mcqRound,
    required this.rapidRound,
    required this.buzzerWrong,
  });

  factory TeamModel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TeamModel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      teamName: serializationManager
          .deserialize<String>(jsonSerialization['teamName']),
      teamType: serializationManager
          .deserialize<String>(jsonSerialization['teamType']),
      scores:
          serializationManager.deserialize<int>(jsonSerialization['scores']),
      totalMembers: serializationManager
          .deserialize<int>(jsonSerialization['totalMembers']),
      buzzerRound: serializationManager
          .deserialize<int>(jsonSerialization['buzzerRound']),
      mcqRound:
          serializationManager.deserialize<int>(jsonSerialization['mcqRound']),
      rapidRound: serializationManager
          .deserialize<int>(jsonSerialization['rapidRound']),
      buzzerWrong: serializationManager
          .deserialize<int>(jsonSerialization['buzzerWrong']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String teamName;

  String teamType;

  int scores;

  int totalMembers;

  int buzzerRound;

  int mcqRound;

  int rapidRound;

  int buzzerWrong;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'teamName': teamName,
      'teamType': teamType,
      'scores': scores,
      'totalMembers': totalMembers,
      'buzzerRound': buzzerRound,
      'mcqRound': mcqRound,
      'rapidRound': rapidRound,
      'buzzerWrong': buzzerWrong,
    };
  }
}
