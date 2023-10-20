/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class MemberModel extends _i1.SerializableEntity {
  MemberModel({
    this.id,
    required this.name,
    required this.image,
    required this.phoneNo,
    required this.aridNo,
    required this.semester,
  });

  factory MemberModel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MemberModel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      phoneNo: serializationManager
          .deserialize<String>(jsonSerialization['phoneNo']),
      aridNo:
          serializationManager.deserialize<String>(jsonSerialization['aridNo']),
      semester: serializationManager
          .deserialize<String>(jsonSerialization['semester']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String image;

  String phoneNo;

  String aridNo;

  String semester;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'phoneNo': phoneNo,
      'aridNo': aridNo,
      'semester': semester,
    };
  }
}
