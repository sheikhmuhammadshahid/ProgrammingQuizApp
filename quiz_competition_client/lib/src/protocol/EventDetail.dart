/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class EventDetail extends _i1.SerializableEntity {
  EventDetail({
    this.id,
    required this.eventId,
    required this.teamId,
  });

  factory EventDetail.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventDetail(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
      teamId:
          serializationManager.deserialize<int>(jsonSerialization['teamId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int eventId;

  int teamId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'eventId': eventId,
      'teamId': teamId,
    };
  }
}
