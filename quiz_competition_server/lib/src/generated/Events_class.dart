/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class EventModel extends _i1.TableRow {
  EventModel({
    int? id,
    this.date,
    required this.type,
    required this.tTeams,
    required this.status,
  }) : super(id);

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

  static final t = EventModelTable();

  DateTime? date;

  String type;

  int tTeams;

  String status;

  @override
  String get tableName => 'eventmodel';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'type': type,
      'tTeams': tTeams,
      'status': status,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'date': date,
      'type': type,
      'tTeams': tTeams,
      'status': status,
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
      case 'date':
        date = value;
        return;
      case 'type':
        type = value;
        return;
      case 'tTeams':
        tTeams = value;
        return;
      case 'status':
        status = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<EventModel>> find(
    _i1.Session session, {
    EventModelExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EventModel>(
      where: where != null ? where(EventModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<EventModel?> findSingleRow(
    _i1.Session session, {
    EventModelExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<EventModel>(
      where: where != null ? where(EventModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<EventModel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<EventModel>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required EventModelExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventModel>(
      where: where(EventModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    EventModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    EventModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    EventModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    EventModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventModel>(
      where: where != null ? where(EventModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef EventModelExpressionBuilder = _i1.Expression Function(EventModelTable);

class EventModelTable extends _i1.Table {
  EventModelTable() : super(tableName: 'eventmodel');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final date = _i1.ColumnDateTime('date');

  final type = _i1.ColumnString('type');

  final tTeams = _i1.ColumnInt('tTeams');

  final status = _i1.ColumnString('status');

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        type,
        tTeams,
        status,
      ];
}

@Deprecated('Use EventModelTable.t instead.')
EventModelTable tEventModel = EventModelTable();
