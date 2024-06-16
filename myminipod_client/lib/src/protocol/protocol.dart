/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'post_detail.dart' as _i2;
import 'post_digest.dart' as _i3;
import 'package:myminipod_client/src/protocol/post_digest.dart' as _i4;
import 'package:uuid/uuid_value.dart' as _i5;
export 'post_detail.dart';
export 'post_digest.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.PostDetail) {
      return _i2.PostDetail.fromJson(data) as T;
    }
    if (t == _i3.PostDigest) {
      return _i3.PostDigest.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.PostDetail?>()) {
      return (data != null ? _i2.PostDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.PostDigest?>()) {
      return (data != null ? _i3.PostDigest.fromJson(data) : null) as T;
    }
    if (t == List<_i4.PostDigest>) {
      return (data as List).map((e) => deserialize<_i4.PostDigest>(e)).toList()
          as dynamic;
    }
    if (t == Map<_i5.UuidValue, bool>) {
      return Map.fromEntries((data as List).map((e) => MapEntry(
              deserialize<_i5.UuidValue>(e['k']), deserialize<bool>(e['v']))))
          as dynamic;
    }
    if (t == List<_i5.UuidValue>) {
      return (data as List).map((e) => deserialize<_i5.UuidValue>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.PostDetail) {
      return 'PostDetail';
    }
    if (data is _i3.PostDigest) {
      return 'PostDigest';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'PostDetail') {
      return deserialize<_i2.PostDetail>(data['data']);
    }
    if (data['className'] == 'PostDigest') {
      return deserialize<_i3.PostDigest>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
