/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class OnGoingEvent extends _i1.TableRow {
  OnGoingEvent({
    int? id,
    this.question,
    required this.eventId,
    required this.questionForTeam,
    required this.round,
    required this.questionNo,
    required this.totalQuestions,
  }) : super(id);

  factory OnGoingEvent.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return OnGoingEvent(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      question: serializationManager
          .deserialize<_i2.Question?>(jsonSerialization['question']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
      questionForTeam: serializationManager
          .deserialize<String>(jsonSerialization['questionForTeam']),
      round:
          serializationManager.deserialize<String>(jsonSerialization['round']),
      questionNo: serializationManager
          .deserialize<int>(jsonSerialization['questionNo']),
      totalQuestions: serializationManager
          .deserialize<int>(jsonSerialization['totalQuestions']),
    );
  }

  static final t = OnGoingEventTable();

  _i2.Question? question;

  int eventId;

  String questionForTeam;

  String round;

  int questionNo;

  int totalQuestions;

  @override
  String get tableName => 'ongoingevent';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'eventId': eventId,
      'questionForTeam': questionForTeam,
      'round': round,
      'questionNo': questionNo,
      'totalQuestions': totalQuestions,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'question': question,
      'eventId': eventId,
      'questionForTeam': questionForTeam,
      'round': round,
      'questionNo': questionNo,
      'totalQuestions': totalQuestions,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'question': question,
      'eventId': eventId,
      'questionForTeam': questionForTeam,
      'round': round,
      'questionNo': questionNo,
      'totalQuestions': totalQuestions,
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
      case 'question':
        question = value;
        return;
      case 'eventId':
        eventId = value;
        return;
      case 'questionForTeam':
        questionForTeam = value;
        return;
      case 'round':
        round = value;
        return;
      case 'questionNo':
        questionNo = value;
        return;
      case 'totalQuestions':
        totalQuestions = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<OnGoingEvent>> find(
    _i1.Session session, {
    OnGoingEventExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<OnGoingEvent>(
      where: where != null ? where(OnGoingEvent.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<OnGoingEvent?> findSingleRow(
    _i1.Session session, {
    OnGoingEventExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<OnGoingEvent>(
      where: where != null ? where(OnGoingEvent.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<OnGoingEvent?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<OnGoingEvent>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required OnGoingEventExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OnGoingEvent>(
      where: where(OnGoingEvent.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    OnGoingEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    OnGoingEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    OnGoingEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    OnGoingEventExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OnGoingEvent>(
      where: where != null ? where(OnGoingEvent.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef OnGoingEventExpressionBuilder = _i1.Expression Function(
    OnGoingEventTable);

class OnGoingEventTable extends _i1.Table {
  OnGoingEventTable() : super(tableName: 'ongoingevent');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final question = _i1.ColumnSerializable('question');

  final eventId = _i1.ColumnInt('eventId');

  final questionForTeam = _i1.ColumnString('questionForTeam');

  final round = _i1.ColumnString('round');

  final questionNo = _i1.ColumnInt('questionNo');

  final totalQuestions = _i1.ColumnInt('totalQuestions');

  @override
  List<_i1.Column> get columns => [
        id,
        question,
        eventId,
        questionForTeam,
        round,
        questionNo,
        totalQuestions,
      ];
}

@Deprecated('Use OnGoingEventTable.t instead.')
OnGoingEventTable tOnGoingEvent = OnGoingEventTable();
