/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'post_detail.dart' as _i3;
import 'post_digest.dart' as _i4;
import 'package:myminipod_server/src/generated/post_digest.dart' as _i5;
import 'package:uuid/uuid_value.dart' as _i6;
export 'post_detail.dart';
export 'post_digest.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    ..._i2.Protocol.targetTableDefinitions
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.PostDetail) {
      return _i3.PostDetail.fromJson(data) as T;
    }
    if (t == _i4.PostDigest) {
      return _i4.PostDigest.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.PostDetail?>()) {
      return (data != null ? _i3.PostDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.PostDigest?>()) {
      return (data != null ? _i4.PostDigest.fromJson(data) : null) as T;
    }
    if (t == List<_i5.PostDigest>) {
      return (data as List).map((e) => deserialize<_i5.PostDigest>(e)).toList()
          as dynamic;
    }
    if (t == Map<_i6.UuidValue, bool>) {
      return Map.fromEntries((data as List).map((e) => MapEntry(
              deserialize<_i6.UuidValue>(e['k']), deserialize<bool>(e['v']))))
          as dynamic;
    }
    if (t == List<_i6.UuidValue>) {
      return (data as List).map((e) => deserialize<_i6.UuidValue>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.PostDetail) {
      return 'PostDetail';
    }
    if (data is _i4.PostDigest) {
      return 'PostDigest';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'PostDetail') {
      return deserialize<_i3.PostDetail>(data['data']);
    }
    if (data['className'] == 'PostDigest') {
      return deserialize<_i4.PostDigest>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'myminipod';
}
