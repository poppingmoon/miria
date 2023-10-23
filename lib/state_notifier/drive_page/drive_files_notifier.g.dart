// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_files_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveFilesNotifierHash() =>
    r'8b9e7c8b47f17d7cc05e8875d4dcf85ccca1e80e';

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

abstract class _$DriveFilesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<DriveFile>> {
  late final String? folderId;

  FutureOr<PaginationState<DriveFile>> build(
    String? folderId,
  );
}

/// See also [DriveFilesNotifier].
@ProviderFor(DriveFilesNotifier)
const driveFilesNotifierProvider = DriveFilesNotifierFamily();

/// See also [DriveFilesNotifier].
class DriveFilesNotifierFamily extends Family {
  /// See also [DriveFilesNotifier].
  const DriveFilesNotifierFamily();

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    misskeyPostContextProvider
  ];

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    misskeyPostContextProvider,
    ...?misskeyPostContextProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'driveFilesNotifierProvider';

  /// See also [DriveFilesNotifier].
  DriveFilesNotifierProvider call(
    String? folderId,
  ) {
    return DriveFilesNotifierProvider(
      folderId,
    );
  }

  @visibleForOverriding
  @override
  DriveFilesNotifierProvider getProviderOverride(
    covariant DriveFilesNotifierProvider provider,
  ) {
    return call(
      provider.folderId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(DriveFilesNotifier Function() create) {
    return _$DriveFilesNotifierFamilyOverride(this, create);
  }
}

class _$DriveFilesNotifierFamilyOverride implements FamilyOverride {
  _$DriveFilesNotifierFamilyOverride(this.overriddenFamily, this.create);

  final DriveFilesNotifier Function() create;

  @override
  final DriveFilesNotifierFamily overriddenFamily;

  @override
  DriveFilesNotifierProvider getProviderOverride(
    covariant DriveFilesNotifierProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [DriveFilesNotifier].
class DriveFilesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DriveFilesNotifier, PaginationState<DriveFile>> {
  /// See also [DriveFilesNotifier].
  DriveFilesNotifierProvider(
    String? folderId,
  ) : this._internal(
          () => DriveFilesNotifier()..folderId = folderId,
          from: driveFilesNotifierProvider,
          name: r'driveFilesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$driveFilesNotifierHash,
          dependencies: DriveFilesNotifierFamily._dependencies,
          allTransitiveDependencies:
              DriveFilesNotifierFamily._allTransitiveDependencies,
          folderId: folderId,
        );

  DriveFilesNotifierProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.folderId,
  }) : super.internal();

  final String? folderId;

  @override
  FutureOr<PaginationState<DriveFile>> runNotifierBuild(
    covariant DriveFilesNotifier notifier,
  ) {
    return notifier.build(
      folderId,
    );
  }

  @override
  Override overrideWith(DriveFilesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DriveFilesNotifierProvider._internal(
        () => create()..folderId = folderId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        folderId: folderId,
      ),
    );
  }

  @override
  (String?,) get argument {
    return (folderId,);
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DriveFilesNotifier,
      PaginationState<DriveFile>> createElement() {
    return _DriveFilesNotifierProviderElement(this);
  }

  DriveFilesNotifierProvider _copyWith(
    DriveFilesNotifier Function() create,
  ) {
    return DriveFilesNotifierProvider._internal(
      () => create()..folderId = folderId,
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      folderId: folderId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DriveFilesNotifierProvider && other.folderId == folderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, folderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DriveFilesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<DriveFile>> {
  /// The parameter `folderId` of this provider.
  String? get folderId;
}

class _DriveFilesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DriveFilesNotifier,
        PaginationState<DriveFile>> with DriveFilesNotifierRef {
  _DriveFilesNotifierProviderElement(super.provider);

  @override
  String? get folderId => (origin as DriveFilesNotifierProvider).folderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
