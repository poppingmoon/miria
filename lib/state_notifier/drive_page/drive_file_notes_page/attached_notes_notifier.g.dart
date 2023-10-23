// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attached_notes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$attachedNotesNotifierHash() =>
    r'9556f30a2989f644c70b89afefbae2d22e87305a';

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

abstract class _$AttachedNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final String fileId;

  FutureOr<PaginationState<Note>> build(
    String fileId,
  );
}

/// See also [AttachedNotesNotifier].
@ProviderFor(AttachedNotesNotifier)
const attachedNotesNotifierProvider = AttachedNotesNotifierFamily();

/// See also [AttachedNotesNotifier].
class AttachedNotesNotifierFamily extends Family {
  /// See also [AttachedNotesNotifier].
  const AttachedNotesNotifierFamily();

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    misskeyPostContextProvider,
    notesWithProvider
  ];

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    misskeyPostContextProvider,
    ...?misskeyPostContextProvider.allTransitiveDependencies,
    notesWithProvider,
    ...?notesWithProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'attachedNotesNotifierProvider';

  /// See also [AttachedNotesNotifier].
  AttachedNotesNotifierProvider call(
    String fileId,
  ) {
    return AttachedNotesNotifierProvider(
      fileId,
    );
  }

  @visibleForOverriding
  @override
  AttachedNotesNotifierProvider getProviderOverride(
    covariant AttachedNotesNotifierProvider provider,
  ) {
    return call(
      provider.fileId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(AttachedNotesNotifier Function() create) {
    return _$AttachedNotesNotifierFamilyOverride(this, create);
  }
}

class _$AttachedNotesNotifierFamilyOverride implements FamilyOverride {
  _$AttachedNotesNotifierFamilyOverride(this.overriddenFamily, this.create);

  final AttachedNotesNotifier Function() create;

  @override
  final AttachedNotesNotifierFamily overriddenFamily;

  @override
  AttachedNotesNotifierProvider getProviderOverride(
    covariant AttachedNotesNotifierProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [AttachedNotesNotifier].
class AttachedNotesNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AttachedNotesNotifier,
        PaginationState<Note>> {
  /// See also [AttachedNotesNotifier].
  AttachedNotesNotifierProvider(
    String fileId,
  ) : this._internal(
          () => AttachedNotesNotifier()..fileId = fileId,
          from: attachedNotesNotifierProvider,
          name: r'attachedNotesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$attachedNotesNotifierHash,
          dependencies: AttachedNotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              AttachedNotesNotifierFamily._allTransitiveDependencies,
          fileId: fileId,
        );

  AttachedNotesNotifierProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fileId,
  }) : super.internal();

  final String fileId;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant AttachedNotesNotifier notifier,
  ) {
    return notifier.build(
      fileId,
    );
  }

  @override
  Override overrideWith(AttachedNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AttachedNotesNotifierProvider._internal(
        () => create()..fileId = fileId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fileId: fileId,
      ),
    );
  }

  @override
  (String,) get argument {
    return (fileId,);
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AttachedNotesNotifier,
      PaginationState<Note>> createElement() {
    return _AttachedNotesNotifierProviderElement(this);
  }

  AttachedNotesNotifierProvider _copyWith(
    AttachedNotesNotifier Function() create,
  ) {
    return AttachedNotesNotifierProvider._internal(
      () => create()..fileId = fileId,
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      fileId: fileId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AttachedNotesNotifierProvider && other.fileId == fileId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fileId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AttachedNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `fileId` of this provider.
  String get fileId;
}

class _AttachedNotesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AttachedNotesNotifier,
        PaginationState<Note>> with AttachedNotesNotifierRef {
  _AttachedNotesNotifierProviderElement(super.provider);

  @override
  String get fileId => (origin as AttachedNotesNotifierProvider).fileId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
