/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TeamInfoModel extends _i1.TableRow {
  TeamInfoModel({
    int? id,
    required this.teamId,
    required this.memberId,
  }) : super(id);

  factory TeamInfoModel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TeamInfoModel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      teamId:
          serializationManager.deserialize<int>(jsonSerialization['teamId']),
      memberId:
          serializationManager.deserialize<int>(jsonSerialization['memberId']),
    );
  }

  static final t = TeamInfoModelTable();

  int teamId;

  int memberId;

  @override
  String get tableName => 'teaminfotable';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'teamId': teamId,
      'memberId': memberId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'teamId': teamId,
      'memberId': memberId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'teamId': teamId,
      'memberId': memberId,
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
      case 'teamId':
        teamId = value;
        return;
      case 'memberId':
        memberId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<TeamInfoModel>> find(
    _i1.Session session, {
    TeamInfoModelExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TeamInfoModel>(
      where: where != null ? where(TeamInfoModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TeamInfoModel?> findSingleRow(
    _i1.Session session, {
    TeamInfoModelExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TeamInfoModel>(
      where: where != null ? where(TeamInfoModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TeamInfoModel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TeamInfoModel>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TeamInfoModelExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TeamInfoModel>(
      where: where(TeamInfoModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    TeamInfoModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    TeamInfoModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    TeamInfoModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TeamInfoModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TeamInfoModel>(
      where: where != null ? where(TeamInfoModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TeamInfoModelExpressionBuilder = _i1.Expression Function(
    TeamInfoModelTable);

class TeamInfoModelTable extends _i1.Table {
  TeamInfoModelTable() : super(tableName: 'teaminfotable');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final teamId = _i1.ColumnInt('teamId');

  final memberId = _i1.ColumnInt('memberId');

  @override
  List<_i1.Column> get columns => [
        id,
        teamId,
        memberId,
      ];
}

@Deprecated('Use TeamInfoModelTable.t instead.')
TeamInfoModelTable tTeamInfoModel = TeamInfoModelTable();
