/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class MemberModel extends _i1.TableRow {
  MemberModel({
    int? id,
    required this.name,
    required this.image,
    required this.phoneNo,
    required this.aridNo,
    required this.semester,
  }) : super(id);

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

  static final t = MemberModelTable();

  String name;

  String image;

  String phoneNo;

  String aridNo;

  String semester;

  @override
  String get tableName => 'membertable';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'phoneNo': phoneNo,
      'aridNo': aridNo,
      'semester': semester,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'phoneNo': phoneNo,
      'aridNo': aridNo,
      'semester': semester,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'image':
        image = value;
        return;
      case 'phoneNo':
        phoneNo = value;
        return;
      case 'aridNo':
        aridNo = value;
        return;
      case 'semester':
        semester = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<MemberModel>> find(
    _i1.Session session, {
    MemberModelExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MemberModel>(
      where: where != null ? where(MemberModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MemberModel?> findSingleRow(
    _i1.Session session, {
    MemberModelExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MemberModel>(
      where: where != null ? where(MemberModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MemberModel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<MemberModel>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MemberModelExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MemberModel>(
      where: where(MemberModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    MemberModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    MemberModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    MemberModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MemberModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MemberModel>(
      where: where != null ? where(MemberModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MemberModelExpressionBuilder = _i1.Expression Function(
    MemberModelTable);

class MemberModelTable extends _i1.Table {
  MemberModelTable() : super(tableName: 'membertable');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final image = _i1.ColumnString('image');

  final phoneNo = _i1.ColumnString('phoneNo');

  final aridNo = _i1.ColumnString('aridNo');

  final semester = _i1.ColumnString('semester');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        image,
        phoneNo,
        aridNo,
        semester,
      ];
}

@Deprecated('Use MemberModelTable.t instead.')
MemberModelTable tMemberModel = MemberModelTable();
