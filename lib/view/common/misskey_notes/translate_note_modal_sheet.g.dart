// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_note_modal_sheet.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesTranslateHash() => r'e1ed9adf98f2c71aebeee8531c25fa9675dee658';

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

/// See also [_notesTranslate].
@ProviderFor(_notesTranslate)
const _notesTranslateProvider = _NotesTranslateFamily();

/// See also [_notesTranslate].
class _NotesTranslateFamily extends Family {
  /// See also [_notesTranslate].
  const _NotesTranslateFamily();

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
  String? get name => r'_notesTranslateProvider';

  /// See also [_notesTranslate].
  _NotesTranslateProvider call({
    required String noteId,
    required String targetLang,
  }) {
    return _NotesTranslateProvider(
      noteId: noteId,
      targetLang: targetLang,
    );
  }

  @visibleForOverriding
  @override
  _NotesTranslateProvider getProviderOverride(
    covariant _NotesTranslateProvider provider,
  ) {
    return call(
      noteId: provider.noteId,
      targetLang: provider.targetLang,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<NotesTranslateResponse> Function(_NotesTranslateRef ref)
          create) {
    return _$NotesTranslateFamilyOverride(this, create);
  }
}

class _$NotesTranslateFamilyOverride implements FamilyOverride {
  _$NotesTranslateFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<NotesTranslateResponse> Function(_NotesTranslateRef ref)
      create;

  @override
  final _NotesTranslateFamily overriddenFamily;

  @override
  _NotesTranslateProvider getProviderOverride(
    covariant _NotesTranslateProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [_notesTranslate].
class _NotesTranslateProvider
    extends AutoDisposeFutureProvider<NotesTranslateResponse> {
  /// See also [_notesTranslate].
  _NotesTranslateProvider({
    required String noteId,
    required String targetLang,
  }) : this._internal(
          (ref) => _notesTranslate(
            ref as _NotesTranslateRef,
            noteId: noteId,
            targetLang: targetLang,
          ),
          from: _notesTranslateProvider,
          name: r'_notesTranslateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notesTranslateHash,
          dependencies: _NotesTranslateFamily._dependencies,
          allTransitiveDependencies:
              _NotesTranslateFamily._allTransitiveDependencies,
          noteId: noteId,
          targetLang: targetLang,
        );

  _NotesTranslateProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.noteId,
    required this.targetLang,
  }) : super.internal();

  final String noteId;
  final String targetLang;

  @override
  Override overrideWith(
    FutureOr<NotesTranslateResponse> Function(_NotesTranslateRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _NotesTranslateProvider._internal(
        (ref) => create(ref as _NotesTranslateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        noteId: noteId,
        targetLang: targetLang,
      ),
    );
  }

  @override
  ({
    String noteId,
    String targetLang,
  }) get argument {
    return (
      noteId: noteId,
      targetLang: targetLang,
    );
  }

  @override
  AutoDisposeFutureProviderElement<NotesTranslateResponse> createElement() {
    return _NotesTranslateProviderElement(this);
  }

  _NotesTranslateProvider _copyWith(
    FutureOr<NotesTranslateResponse> Function(_NotesTranslateRef ref) create,
  ) {
    return _NotesTranslateProvider._internal(
      (ref) => create(ref as _NotesTranslateRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      noteId: noteId,
      targetLang: targetLang,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _NotesTranslateProvider &&
        other.noteId == noteId &&
        other.targetLang == targetLang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);
    hash = _SystemHash.combine(hash, targetLang.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _NotesTranslateRef
    on AutoDisposeFutureProviderRef<NotesTranslateResponse> {
  /// The parameter `noteId` of this provider.
  String get noteId;

  /// The parameter `targetLang` of this provider.
  String get targetLang;
}

class _NotesTranslateProviderElement
    extends AutoDisposeFutureProviderElement<NotesTranslateResponse>
    with _NotesTranslateRef {
  _NotesTranslateProviderElement(super.provider);

  @override
  String get noteId => (origin as _NotesTranslateProvider).noteId;
  @override
  String get targetLang => (origin as _NotesTranslateProvider).targetLang;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
