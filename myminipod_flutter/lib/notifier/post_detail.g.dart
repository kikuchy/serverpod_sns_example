// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postDetailNotifierHash() =>
    r'bb3c62c4de0291b6c7b6a7b74c06f78c88e84e48';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PostDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PostDetail> {
  late final UuidValue postId;

  FutureOr<PostDetail> build(
    UuidValue postId,
  );
}

/// See also [PostDetailNotifier].
@ProviderFor(PostDetailNotifier)
const postDetailNotifierProvider = PostDetailNotifierFamily();

/// See also [PostDetailNotifier].
class PostDetailNotifierFamily extends Family<AsyncValue<PostDetail>> {
  /// See also [PostDetailNotifier].
  const PostDetailNotifierFamily();

  /// See also [PostDetailNotifier].
  PostDetailNotifierProvider call(
    UuidValue postId,
  ) {
    return PostDetailNotifierProvider(
      postId,
    );
  }

  @override
  PostDetailNotifierProvider getProviderOverride(
    covariant PostDetailNotifierProvider provider,
  ) {
    return call(
      provider.postId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postDetailNotifierProvider';
}

/// See also [PostDetailNotifier].
class PostDetailNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PostDetailNotifier, PostDetail> {
  /// See also [PostDetailNotifier].
  PostDetailNotifierProvider(
    UuidValue postId,
  ) : this._internal(
          () => PostDetailNotifier()..postId = postId,
          from: postDetailNotifierProvider,
          name: r'postDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDetailNotifierHash,
          dependencies: PostDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              PostDetailNotifierFamily._allTransitiveDependencies,
          postId: postId,
        );

  PostDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final UuidValue postId;

  @override
  FutureOr<PostDetail> runNotifierBuild(
    covariant PostDetailNotifier notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(PostDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostDetailNotifierProvider._internal(
        () => create()..postId = postId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PostDetailNotifier, PostDetail>
      createElement() {
    return _PostDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailNotifierProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostDetailNotifierRef on AutoDisposeAsyncNotifierProviderRef<PostDetail> {
  /// The parameter `postId` of this provider.
  UuidValue get postId;
}

class _PostDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PostDetailNotifier,
        PostDetail> with PostDetailNotifierRef {
  _PostDetailNotifierProviderElement(super.provider);

  @override
  UuidValue get postId => (origin as PostDetailNotifierProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
