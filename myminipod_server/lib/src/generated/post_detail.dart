/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class PostDetail
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  PostDetail._({
    required this.id,
    required this.headline,
    required this.content,
    required this.isLiked,
    required this.creaedAt,
  });

  factory PostDetail({
    required _i1.UuidValue id,
    required String headline,
    required String content,
    required bool isLiked,
    required DateTime creaedAt,
  }) = _PostDetailImpl;

  factory PostDetail.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostDetail(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      headline: jsonSerialization['headline'] as String,
      content: jsonSerialization['content'] as String,
      isLiked: jsonSerialization['isLiked'] as bool,
      creaedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['creaedAt']),
    );
  }

  _i1.UuidValue id;

  String headline;

  String content;

  bool isLiked;

  DateTime creaedAt;

  PostDetail copyWith({
    _i1.UuidValue? id,
    String? headline,
    String? content,
    bool? isLiked,
    DateTime? creaedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'headline': headline,
      'content': content,
      'isLiked': isLiked,
      'creaedAt': creaedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id.toJson(),
      'headline': headline,
      'content': content,
      'isLiked': isLiked,
      'creaedAt': creaedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PostDetailImpl extends PostDetail {
  _PostDetailImpl({
    required _i1.UuidValue id,
    required String headline,
    required String content,
    required bool isLiked,
    required DateTime creaedAt,
  }) : super._(
          id: id,
          headline: headline,
          content: content,
          isLiked: isLiked,
          creaedAt: creaedAt,
        );

  @override
  PostDetail copyWith({
    _i1.UuidValue? id,
    String? headline,
    String? content,
    bool? isLiked,
    DateTime? creaedAt,
  }) {
    return PostDetail(
      id: id ?? this.id,
      headline: headline ?? this.headline,
      content: content ?? this.content,
      isLiked: isLiked ?? this.isLiked,
      creaedAt: creaedAt ?? this.creaedAt,
    );
  }
}
