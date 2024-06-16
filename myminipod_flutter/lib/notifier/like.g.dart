// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likeNotifierHash() => r'76ba601882828b94b56242514d48fd7051208549';

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

abstract class _$LikeNotifier extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final UuidValue postId;

  FutureOr<bool> build(
    UuidValue postId,
  );
}

/// See also [LikeNotifier].
@ProviderFor(LikeNotifier)
const likeNotifierProvider = LikeNotifierFamily();

/// See also [LikeNotifier].
class LikeNotifierFamily extends Family<AsyncValue<bool>> {
  /// See also [LikeNotifier].
  const LikeNotifierFamily();

  /// See also [LikeNotifier].
  LikeNotifierProvider call(
    UuidValue postId,
  ) {
    return LikeNotifierProvider(
      postId,
    );
  }

  @override
  LikeNotifierProvider getProviderOverride(
    covariant LikeNotifierProvider provider,
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
  String? get name => r'likeNotifierProvider';
}

/// See also [LikeNotifier].
class LikeNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LikeNotifier, bool> {
  /// See also [LikeNotifier].
  LikeNotifierProvider(
    UuidValue postId,
  ) : this._internal(
          () => LikeNotifier()..postId = postId,
          from: likeNotifierProvider,
          name: r'likeNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$likeNotifierHash,
          dependencies: LikeNotifierFamily._dependencies,
          allTransitiveDependencies:
              LikeNotifierFamily._allTransitiveDependencies,
          postId: postId,
        );

  LikeNotifierProvider._internal(
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
  FutureOr<bool> runNotifierBuild(
    covariant LikeNotifier notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(LikeNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: LikeNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<LikeNotifier, bool> createElement() {
    return _LikeNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LikeNotifierProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LikeNotifierRef on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `postId` of this provider.
  UuidValue get postId;
}

class _LikeNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LikeNotifier, bool>
    with LikeNotifierRef {
  _LikeNotifierProviderElement(super.provider);

  @override
  UuidValue get postId => (origin as LikeNotifierProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
