// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_folders_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveFoldersNotifierHash() =>
    r'597622c0e53a4879c145bd442a7fcb24865b2a12';

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

abstract class _$DriveFoldersNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<DriveFolder>> {
  late final String? folderId;

  FutureOr<PaginationState<DriveFolder>> build(
    String? folderId,
  );
}

/// See also [DriveFoldersNotifier].
@ProviderFor(DriveFoldersNotifier)
const driveFoldersNotifierProvider = DriveFoldersNotifierFamily();

/// See also [DriveFoldersNotifier].
class DriveFoldersNotifierFamily extends Family {
  /// See also [DriveFoldersNotifier].
  const DriveFoldersNotifierFamily();

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
  String? get name => r'driveFoldersNotifierProvider';

  /// See also [DriveFoldersNotifier].
  DriveFoldersNotifierProvider call(
    String? folderId,
  ) {
    return DriveFoldersNotifierProvider(
      folderId,
    );
  }

  @visibleForOverriding
  @override
  DriveFoldersNotifierProvider getProviderOverride(
    covariant DriveFoldersNotifierProvider provider,
  ) {
    return call(
      provider.folderId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(DriveFoldersNotifier Function() create) {
    return _$DriveFoldersNotifierFamilyOverride(this, create);
  }
}

class _$DriveFoldersNotifierFamilyOverride implements FamilyOverride {
  _$DriveFoldersNotifierFamilyOverride(this.overriddenFamily, this.create);

  final DriveFoldersNotifier Function() create;

  @override
  final DriveFoldersNotifierFamily overriddenFamily;

  @override
  DriveFoldersNotifierProvider getProviderOverride(
    covariant DriveFoldersNotifierProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [DriveFoldersNotifier].
class DriveFoldersNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DriveFoldersNotifier, PaginationState<DriveFolder>> {
  /// See also [DriveFoldersNotifier].
  DriveFoldersNotifierProvider(
    String? folderId,
  ) : this._internal(
          () => DriveFoldersNotifier()..folderId = folderId,
          from: driveFoldersNotifierProvider,
          name: r'driveFoldersNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$driveFoldersNotifierHash,
          dependencies: DriveFoldersNotifierFamily._dependencies,
          allTransitiveDependencies:
              DriveFoldersNotifierFamily._allTransitiveDependencies,
          folderId: folderId,
        );

  DriveFoldersNotifierProvider._internal(
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
  FutureOr<PaginationState<DriveFolder>> runNotifierBuild(
    covariant DriveFoldersNotifier notifier,
  ) {
    return notifier.build(
      folderId,
    );
  }

  @override
  Override overrideWith(DriveFoldersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DriveFoldersNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<DriveFoldersNotifier,
      PaginationState<DriveFolder>> createElement() {
    return _DriveFoldersNotifierProviderElement(this);
  }

  DriveFoldersNotifierProvider _copyWith(
    DriveFoldersNotifier Function() create,
  ) {
    return DriveFoldersNotifierProvider._internal(
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
    return other is DriveFoldersNotifierProvider && other.folderId == folderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, folderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DriveFoldersNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<DriveFolder>> {
  /// The parameter `folderId` of this provider.
  String? get folderId;
}

class _DriveFoldersNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DriveFoldersNotifier,
        PaginationState<DriveFolder>> with DriveFoldersNotifierRef {
  _DriveFoldersNotifierProviderElement(super.provider);

  @override
  String? get folderId => (origin as DriveFoldersNotifierProvider).folderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
