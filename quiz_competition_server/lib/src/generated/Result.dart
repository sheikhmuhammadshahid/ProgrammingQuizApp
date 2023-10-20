/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class ResultApi extends _i1.SerializableEntity {
  ResultApi({
    required this.status,
    required this.message,
  });

  factory ResultApi.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ResultApi(
      status:
          serializationManager.deserialize<int>(jsonSerialization['status']),
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
    );
  }

  int status;

  String message;

  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'status': status,
      'message': message,
    };
  }
}
