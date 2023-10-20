/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'EventDetail.dart' as _i4;
import 'Events_class.dart' as _i5;
import 'MemberClass.dart' as _i6;
import 'MyMessage.dart' as _i7;
import 'OnGoingEvent.dart' as _i8;
import 'OnGoingTeams.dart' as _i9;
import 'Question.dart' as _i10;
import 'Result.dart' as _i11;
import 'TeamInfo.dart' as _i12;
import 'TeamModel.dart' as _i13;
import 'example.dart' as _i14;
import 'protocol.dart' as _i15;
import 'package:quiz_competition_server/src/generated/Events_class.dart'
    as _i16;
import 'package:quiz_competition_server/src/generated/MemberClass.dart' as _i17;
import 'package:quiz_competition_server/src/generated/OnGoingTeams.dart'
    as _i18;
import 'package:quiz_competition_server/src/generated/Question.dart' as _i19;
export 'EventDetail.dart';
export 'Events_class.dart';
export 'MemberClass.dart';
export 'MyMessage.dart';
export 'OnGoingEvent.dart';
export 'OnGoingTeams.dart';
export 'Question.dart';
export 'Result.dart';
export 'TeamInfo.dart';
export 'TeamModel.dart';
export 'example.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final targetDatabaseDefinition = _i2.DatabaseDefinition(tables: [
    _i2.TableDefinition(
      name: 'eventdetail',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'eventdetail_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'eventId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'teamId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'eventdetail_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'eventmodel',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'eventmodel_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'tTeams',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'eventmodel_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'membertable',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'membertable_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNo',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'aridNo',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'semester',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'membertable_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'ongoingevent',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'ongoingevent_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'question',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Question?',
        ),
        _i2.ColumnDefinition(
          name: 'eventId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'questionForTeam',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'round',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'questionNo',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'totalQuestions',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'ongoingevent_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'question',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'question_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'ques',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'opt1',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'opt2',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'opt3',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'opt4',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'answer',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'eventId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'question_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'teaminfotable',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'teaminfotable_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'teamId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'memberId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'teaminfotable_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'teamtable',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'teamtable_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'teamName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'teamType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'scores',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'totalMembers',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'buzzerRound',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'mcqRound',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'rapidRound',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'buzzerWrong',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'teamtable_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetDatabaseDefinition.tables,
    ..._i2.Protocol.targetDatabaseDefinition.tables,
  ]);

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.EventDetail) {
      return _i4.EventDetail.fromJson(data, this) as T;
    }
    if (t == _i5.EventModel) {
      return _i5.EventModel.fromJson(data, this) as T;
    }
    if (t == _i6.MemberModel) {
      return _i6.MemberModel.fromJson(data, this) as T;
    }
    if (t == _i7.MyMessage) {
      return _i7.MyMessage.fromJson(data, this) as T;
    }
    if (t == _i8.OnGoingEvent) {
      return _i8.OnGoingEvent.fromJson(data, this) as T;
    }
    if (t == _i9.OnGoingTeams) {
      return _i9.OnGoingTeams.fromJson(data, this) as T;
    }
    if (t == _i10.Question) {
      return _i10.Question.fromJson(data, this) as T;
    }
    if (t == _i11.ResultApi) {
      return _i11.ResultApi.fromJson(data, this) as T;
    }
    if (t == _i12.TeamInfoModel) {
      return _i12.TeamInfoModel.fromJson(data, this) as T;
    }
    if (t == _i13.TeamModel) {
      return _i13.TeamModel.fromJson(data, this) as T;
    }
    if (t == _i14.Example) {
      return _i14.Example.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.EventDetail?>()) {
      return (data != null ? _i4.EventDetail.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.EventModel?>()) {
      return (data != null ? _i5.EventModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.MemberModel?>()) {
      return (data != null ? _i6.MemberModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.MyMessage?>()) {
      return (data != null ? _i7.MyMessage.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.OnGoingEvent?>()) {
      return (data != null ? _i8.OnGoingEvent.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.OnGoingTeams?>()) {
      return (data != null ? _i9.OnGoingTeams.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Question?>()) {
      return (data != null ? _i10.Question.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.ResultApi?>()) {
      return (data != null ? _i11.ResultApi.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.TeamInfoModel?>()) {
      return (data != null ? _i12.TeamInfoModel.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.TeamModel?>()) {
      return (data != null ? _i13.TeamModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.Example?>()) {
      return (data != null ? _i14.Example.fromJson(data, this) : null) as T;
    }
    if (t == List<_i15.MemberModel>) {
      return (data as List)
          .map((e) => deserialize<_i15.MemberModel>(e))
          .toList() as dynamic;
    }
    if (t == List<_i16.EventModel>) {
      return (data as List).map((e) => deserialize<_i16.EventModel>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.MemberModel>) {
      return (data as List)
          .map((e) => deserialize<_i17.MemberModel>(e))
          .toList() as dynamic;
    }
    if (t == List<_i18.OnGoingTeams>) {
      return (data as List)
          .map((e) => deserialize<_i18.OnGoingTeams>(e))
          .toList() as dynamic;
    }
    if (t == List<_i19.Question>) {
      return (data as List).map((e) => deserialize<_i19.Question>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.EventDetail) {
      return 'EventDetail';
    }
    if (data is _i5.EventModel) {
      return 'EventModel';
    }
    if (data is _i6.MemberModel) {
      return 'MemberModel';
    }
    if (data is _i7.MyMessage) {
      return 'MyMessage';
    }
    if (data is _i8.OnGoingEvent) {
      return 'OnGoingEvent';
    }
    if (data is _i9.OnGoingTeams) {
      return 'OnGoingTeams';
    }
    if (data is _i10.Question) {
      return 'Question';
    }
    if (data is _i11.ResultApi) {
      return 'ResultApi';
    }
    if (data is _i12.TeamInfoModel) {
      return 'TeamInfoModel';
    }
    if (data is _i13.TeamModel) {
      return 'TeamModel';
    }
    if (data is _i14.Example) {
      return 'Example';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'EventDetail') {
      return deserialize<_i4.EventDetail>(data['data']);
    }
    if (data['className'] == 'EventModel') {
      return deserialize<_i5.EventModel>(data['data']);
    }
    if (data['className'] == 'MemberModel') {
      return deserialize<_i6.MemberModel>(data['data']);
    }
    if (data['className'] == 'MyMessage') {
      return deserialize<_i7.MyMessage>(data['data']);
    }
    if (data['className'] == 'OnGoingEvent') {
      return deserialize<_i8.OnGoingEvent>(data['data']);
    }
    if (data['className'] == 'OnGoingTeams') {
      return deserialize<_i9.OnGoingTeams>(data['data']);
    }
    if (data['className'] == 'Question') {
      return deserialize<_i10.Question>(data['data']);
    }
    if (data['className'] == 'ResultApi') {
      return deserialize<_i11.ResultApi>(data['data']);
    }
    if (data['className'] == 'TeamInfoModel') {
      return deserialize<_i12.TeamInfoModel>(data['data']);
    }
    if (data['className'] == 'TeamModel') {
      return deserialize<_i13.TeamModel>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i14.Example>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.EventDetail:
        return _i4.EventDetail.t;
      case _i5.EventModel:
        return _i5.EventModel.t;
      case _i6.MemberModel:
        return _i6.MemberModel.t;
      case _i8.OnGoingEvent:
        return _i8.OnGoingEvent.t;
      case _i10.Question:
        return _i10.Question.t;
      case _i12.TeamInfoModel:
        return _i12.TeamInfoModel.t;
      case _i13.TeamModel:
        return _i13.TeamModel.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
