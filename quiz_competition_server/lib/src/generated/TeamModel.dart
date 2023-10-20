/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TeamModel extends _i1.TableRow {
  TeamModel({
    int? id,
    required this.teamName,
    required this.teamType,
    required this.scores,
    required this.totalMembers,
    required this.buzzerRound,
    required this.mcqRound,
    required this.rapidRound,
    required this.buzzerWrong,
  }) : super(id);

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

  static final t = TeamModelTable();

  String teamName;

  String teamType;

  int scores;

  int totalMembers;

  int buzzerRound;

  int mcqRound;

  int rapidRound;

  int buzzerWrong;

  @override
  String get tableName => 'teamtable';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'teamName':
        teamName = value;
        return;
      case 'teamType':
        teamType = value;
        return;
      case 'scores':
        scores = value;
        return;
      case 'totalMembers':
        totalMembers = value;
        return;
      case 'buzzerRound':
        buzzerRound = value;
        return;
      case 'mcqRound':
        mcqRound = value;
        return;
      case 'rapidRound':
        rapidRound = value;
        return;
      case 'buzzerWrong':
        buzzerWrong = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<TeamModel>> find(
    _i1.Session session, {
    TeamModelExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TeamModel>(
      where: where != null ? where(TeamModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TeamModel?> findSingleRow(
    _i1.Session session, {
    TeamModelExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TeamModel>(
      where: where != null ? where(TeamModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TeamModel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TeamModel>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TeamModelExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TeamModel>(
      where: where(TeamModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    TeamModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    TeamModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    TeamModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TeamModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TeamModel>(
      where: where != null ? where(TeamModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TeamModelExpressionBuilder = _i1.Expression Function(TeamModelTable);

class TeamModelTable extends _i1.Table {
  TeamModelTable() : super(tableName: 'teamtable');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final teamName = _i1.ColumnString('teamName');

  final teamType = _i1.ColumnString('teamType');

  final scores = _i1.ColumnInt('scores');

  final totalMembers = _i1.ColumnInt('totalMembers');

  final buzzerRound = _i1.ColumnInt('buzzerRound');

  final mcqRound = _i1.ColumnInt('mcqRound');

  final rapidRound = _i1.ColumnInt('rapidRound');

  final buzzerWrong = _i1.ColumnInt('buzzerWrong');

  @override
  List<_i1.Column> get columns => [
        id,
        teamName,
        teamType,
        scores,
        totalMembers,
        buzzerRound,
        mcqRound,
        rapidRound,
        buzzerWrong,
      ];
}

@Deprecated('Use TeamModelTable.t instead.')
TeamModelTable tTeamModel = TeamModelTable();
