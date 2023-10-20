/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class MyMessage extends _i1.SerializableEntity {
  MyMessage({
    required this.todo,
    required this.value,
  });

  factory MyMessage.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MyMessage(
      todo: serializationManager.deserialize<String>(jsonSerialization['todo']),
      value:
          serializationManager.deserialize<String>(jsonSerialization['value']),
    );
  }

  String todo;

  String value;

  @override
  Map<String, dynamic> toJson() {
    return {
      'todo': todo,
      'value': value,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'todo': todo,
      'value': value,
    };
  }
}
