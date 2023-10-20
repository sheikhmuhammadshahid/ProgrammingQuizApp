/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Question extends _i1.TableRow {
  Question({
    int? id,
    required this.ques,
    required this.opt1,
    required this.opt2,
    required this.opt3,
    required this.opt4,
    required this.answer,
    required this.type,
    required this.eventId,
  }) : super(id);

  factory Question.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Question(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ques: serializationManager.deserialize<String>(jsonSerialization['ques']),
      opt1: serializationManager.deserialize<String>(jsonSerialization['opt1']),
      opt2: serializationManager.deserialize<String>(jsonSerialization['opt2']),
      opt3: serializationManager.deserialize<String>(jsonSerialization['opt3']),
      opt4: serializationManager.deserialize<String>(jsonSerialization['opt4']),
      answer:
          serializationManager.deserialize<String>(jsonSerialization['answer']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
    );
  }

  static final t = QuestionTable();

  String ques;

  String opt1;

  String opt2;

  String opt3;

  String opt4;

  String answer;

  String type;

  int eventId;

  @override
  String get tableName => 'question';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ques': ques,
      'opt1': opt1,
      'opt2': opt2,
      'opt3': opt3,
      'opt4': opt4,
      'answer': answer,
      'type': type,
      'eventId': eventId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'ques': ques,
      'opt1': opt1,
      'opt2': opt2,
      'opt3': opt3,
      'opt4': opt4,
      'answer': answer,
      'type': type,
      'eventId': eventId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'ques': ques,
      'opt1': opt1,
      'opt2': opt2,
      'opt3': opt3,
      'opt4': opt4,
      'answer': answer,
      'type': type,
      'eventId': eventId,
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
      case 'ques':
        ques = value;
        return;
      case 'opt1':
        opt1 = value;
        return;
      case 'opt2':
        opt2 = value;
        return;
      case 'opt3':
        opt3 = value;
        return;
      case 'opt4':
        opt4 = value;
        return;
      case 'answer':
        answer = value;
        return;
      case 'type':
        type = value;
        return;
      case 'eventId':
        eventId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Question>> find(
    _i1.Session session, {
    QuestionExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Question>(
      where: where != null ? where(Question.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Question?> findSingleRow(
    _i1.Session session, {
    QuestionExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Question>(
      where: where != null ? where(Question.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Question?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Question>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required QuestionExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Question>(
      where: where(Question.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Question row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Question row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Question row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    QuestionExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Question>(
      where: where != null ? where(Question.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef QuestionExpressionBuilder = _i1.Expression Function(QuestionTable);

class QuestionTable extends _i1.Table {
  QuestionTable() : super(tableName: 'question');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final ques = _i1.ColumnString('ques');

  final opt1 = _i1.ColumnString('opt1');

  final opt2 = _i1.ColumnString('opt2');

  final opt3 = _i1.ColumnString('opt3');

  final opt4 = _i1.ColumnString('opt4');

  final answer = _i1.ColumnString('answer');

  final type = _i1.ColumnString('type');

  final eventId = _i1.ColumnInt('eventId');

  @override
  List<_i1.Column> get columns => [
        id,
        ques,
        opt1,
        opt2,
        opt3,
        opt4,
        answer,
        type,
        eventId,
      ];
}

@Deprecated('Use QuestionTable.t instead.')
QuestionTable tQuestion = QuestionTable();
