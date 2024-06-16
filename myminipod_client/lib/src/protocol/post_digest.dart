/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PostDigest implements _i1.SerializableModel {
  PostDigest._({
    required this.id,
    required this.headline,
    required this.isLiked,
    required this.creaedAt,
  });

  factory PostDigest({
    required _i1.UuidValue id,
    required String headline,
    required bool isLiked,
    required DateTime creaedAt,
  }) = _PostDigestImpl;

  factory PostDigest.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostDigest(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      headline: jsonSerialization['headline'] as String,
      isLiked: jsonSerialization['isLiked'] as bool,
      creaedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['creaedAt']),
    );
  }

  _i1.UuidValue id;

  String headline;

  bool isLiked;

  DateTime creaedAt;

  PostDigest copyWith({
    _i1.UuidValue? id,
    String? headline,
    bool? isLiked,
    DateTime? creaedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'headline': headline,
      'isLiked': isLiked,
      'creaedAt': creaedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PostDigestImpl extends PostDigest {
  _PostDigestImpl({
    required _i1.UuidValue id,
    required String headline,
    required bool isLiked,
    required DateTime creaedAt,
  }) : super._(
          id: id,
          headline: headline,
          isLiked: isLiked,
          creaedAt: creaedAt,
        );

  @override
  PostDigest copyWith({
    _i1.UuidValue? id,
    String? headline,
    bool? isLiked,
    DateTime? creaedAt,
  }) {
    return PostDigest(
      id: id ?? this.id,
      headline: headline ?? this.headline,
      isLiked: isLiked ?? this.isLiked,
      creaedAt: creaedAt ?? this.creaedAt,
    );
  }
}
