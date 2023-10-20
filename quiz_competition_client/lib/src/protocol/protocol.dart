/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'EventDetail.dart' as _i2;
import 'Events_class.dart' as _i3;
import 'MemberClass.dart' as _i4;
import 'MyMessage.dart' as _i5;
import 'OnGoingEvent.dart' as _i6;
import 'OnGoingTeams.dart' as _i7;
import 'Question.dart' as _i8;
import 'Result.dart' as _i9;
import 'TeamInfo.dart' as _i10;
import 'TeamModel.dart' as _i11;
import 'example.dart' as _i12;
import 'protocol.dart' as _i13;
import 'package:quiz_competition_client/src/protocol/Events_class.dart' as _i14;
import 'package:quiz_competition_client/src/protocol/MemberClass.dart' as _i15;
import 'package:quiz_competition_client/src/protocol/OnGoingTeams.dart' as _i16;
import 'package:quiz_competition_client/src/protocol/Question.dart' as _i17;
import 'package:serverpod_auth_client/module.dart' as _i18;
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
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.EventDetail) {
      return _i2.EventDetail.fromJson(data, this) as T;
    }
    if (t == _i3.EventModel) {
      return _i3.EventModel.fromJson(data, this) as T;
    }
    if (t == _i4.MemberModel) {
      return _i4.MemberModel.fromJson(data, this) as T;
    }
    if (t == _i5.MyMessage) {
      return _i5.MyMessage.fromJson(data, this) as T;
    }
    if (t == _i6.OnGoingEvent) {
      return _i6.OnGoingEvent.fromJson(data, this) as T;
    }
    if (t == _i7.OnGoingTeams) {
      return _i7.OnGoingTeams.fromJson(data, this) as T;
    }
    if (t == _i8.Question) {
      return _i8.Question.fromJson(data, this) as T;
    }
    if (t == _i9.ResultApi) {
      return _i9.ResultApi.fromJson(data, this) as T;
    }
    if (t == _i10.TeamInfoModel) {
      return _i10.TeamInfoModel.fromJson(data, this) as T;
    }
    if (t == _i11.TeamModel) {
      return _i11.TeamModel.fromJson(data, this) as T;
    }
    if (t == _i12.Example) {
      return _i12.Example.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.EventDetail?>()) {
      return (data != null ? _i2.EventDetail.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.EventModel?>()) {
      return (data != null ? _i3.EventModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.MemberModel?>()) {
      return (data != null ? _i4.MemberModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.MyMessage?>()) {
      return (data != null ? _i5.MyMessage.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.OnGoingEvent?>()) {
      return (data != null ? _i6.OnGoingEvent.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.OnGoingTeams?>()) {
      return (data != null ? _i7.OnGoingTeams.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Question?>()) {
      return (data != null ? _i8.Question.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.ResultApi?>()) {
      return (data != null ? _i9.ResultApi.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.TeamInfoModel?>()) {
      return (data != null ? _i10.TeamInfoModel.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.TeamModel?>()) {
      return (data != null ? _i11.TeamModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Example?>()) {
      return (data != null ? _i12.Example.fromJson(data, this) : null) as T;
    }
    if (t == List<_i13.MemberModel>) {
      return (data as List)
          .map((e) => deserialize<_i13.MemberModel>(e))
          .toList() as dynamic;
    }
    if (t == List<_i14.EventModel>) {
      return (data as List).map((e) => deserialize<_i14.EventModel>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.MemberModel>) {
      return (data as List)
          .map((e) => deserialize<_i15.MemberModel>(e))
          .toList() as dynamic;
    }
    if (t == List<_i16.OnGoingTeams>) {
      return (data as List)
          .map((e) => deserialize<_i16.OnGoingTeams>(e))
          .toList() as dynamic;
    }
    if (t == List<_i17.Question>) {
      return (data as List).map((e) => deserialize<_i17.Question>(e)).toList()
          as dynamic;
    }
    try {
      return _i18.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i18.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.EventDetail) {
      return 'EventDetail';
    }
    if (data is _i3.EventModel) {
      return 'EventModel';
    }
    if (data is _i4.MemberModel) {
      return 'MemberModel';
    }
    if (data is _i5.MyMessage) {
      return 'MyMessage';
    }
    if (data is _i6.OnGoingEvent) {
      return 'OnGoingEvent';
    }
    if (data is _i7.OnGoingTeams) {
      return 'OnGoingTeams';
    }
    if (data is _i8.Question) {
      return 'Question';
    }
    if (data is _i9.ResultApi) {
      return 'ResultApi';
    }
    if (data is _i10.TeamInfoModel) {
      return 'TeamInfoModel';
    }
    if (data is _i11.TeamModel) {
      return 'TeamModel';
    }
    if (data is _i12.Example) {
      return 'Example';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i18.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'EventDetail') {
      return deserialize<_i2.EventDetail>(data['data']);
    }
    if (data['className'] == 'EventModel') {
      return deserialize<_i3.EventModel>(data['data']);
    }
    if (data['className'] == 'MemberModel') {
      return deserialize<_i4.MemberModel>(data['data']);
    }
    if (data['className'] == 'MyMessage') {
      return deserialize<_i5.MyMessage>(data['data']);
    }
    if (data['className'] == 'OnGoingEvent') {
      return deserialize<_i6.OnGoingEvent>(data['data']);
    }
    if (data['className'] == 'OnGoingTeams') {
      return deserialize<_i7.OnGoingTeams>(data['data']);
    }
    if (data['className'] == 'Question') {
      return deserialize<_i8.Question>(data['data']);
    }
    if (data['className'] == 'ResultApi') {
      return deserialize<_i9.ResultApi>(data['data']);
    }
    if (data['className'] == 'TeamInfoModel') {
      return deserialize<_i10.TeamInfoModel>(data['data']);
    }
    if (data['className'] == 'TeamModel') {
      return deserialize<_i11.TeamModel>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i12.Example>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
