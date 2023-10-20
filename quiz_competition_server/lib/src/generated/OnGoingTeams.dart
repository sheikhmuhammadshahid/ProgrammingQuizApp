/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class OnGoingTeams extends _i1.SerializableEntity {
  OnGoingTeams({
    required this.members,
    required this.team,
    required this.teamId,
  });

  factory OnGoingTeams.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return OnGoingTeams(
      members: serializationManager
          .deserialize<List<_i2.MemberModel>>(jsonSerialization['members']),
      team: serializationManager
          .deserialize<_i2.TeamModel>(jsonSerialization['team']),
      teamId:
          serializationManager.deserialize<int>(jsonSerialization['teamId']),
    );
  }

  List<_i2.MemberModel> members;

  _i2.TeamModel team;

  int teamId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'members': members,
      'team': team,
      'teamId': teamId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'members': members,
      'team': team,
      'teamId': teamId,
    };
  }
}