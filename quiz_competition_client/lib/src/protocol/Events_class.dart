/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class EventModel extends _i1.SerializableEntity {
  EventModel({
    this.id,
    this.date,
    required this.type,
    required this.tTeams,
    required this.status,
  });

  factory EventModel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventModel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date: serializationManager
          .deserialize<DateTime?>(jsonSerialization['date']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      tTeams:
          serializationManager.deserialize<int>(jsonSerialization['tTeams']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime? date;

  String type;

  int tTeams;

  String status;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'type': type,
      'tTeams': tTeams,
      'status': status,
    };
  }
}
