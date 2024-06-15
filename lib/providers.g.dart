// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'c62213bddb9aac89c0a19fe034ef243e2a285ba8';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$fileSystemHash() => r'81435d2fdc96b2d66ccd223e5877584d6c588cd9';

/// See also [fileSystem].
@ProviderFor(fileSystem)
final fileSystemProvider = AutoDisposeProvider<FileSystem>.internal(
  fileSystem,
  name: r'fileSystemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fileSystemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FileSystemRef = AutoDisposeProviderRef<FileSystem>;
String _$misskeyHash() => r'11d32a82920317b1fbc0b31245262292f7241e6b';

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

/// See also [misskey].
@ProviderFor(misskey)
const misskeyProvider = MisskeyFamily();

/// See also [misskey].
class MisskeyFamily extends Family {
  /// See also [misskey].
  const MisskeyFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'misskeyProvider';

  /// See also [misskey].
  MisskeyProvider call(
    Account account,
  ) {
    return MisskeyProvider(
      account,
    );
  }

  @visibleForOverriding
  @override
  MisskeyProvider getProviderOverride(
    covariant MisskeyProvider provider,
  ) {
    return call(
      provider.account,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(Misskey Function(MisskeyRef ref) create) {
    return _$MisskeyFamilyOverride(this, create);
  }
}

class _$MisskeyFamilyOverride implements FamilyOverride {
  _$MisskeyFamilyOverride(this.overriddenFamily, this.create);

  final Misskey Function(MisskeyRef ref) create;

  @override
  final MisskeyFamily overriddenFamily;

  @override
  MisskeyProvider getProviderOverride(
    covariant MisskeyProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [misskey].
class MisskeyProvider extends AutoDisposeProvider<Misskey> {
  /// See also [misskey].
  MisskeyProvider(
    Account account,
  ) : this._internal(
          (ref) => misskey(
            ref as MisskeyRef,
            account,
          ),
          from: misskeyProvider,
          name: r'misskeyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyHash,
          dependencies: MisskeyFamily._dependencies,
          allTransitiveDependencies: MisskeyFamily._allTransitiveDependencies,
          account: account,
        );

  MisskeyProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    Misskey Function(MisskeyRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MisskeyProvider._internal(
        (ref) => create(ref as MisskeyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  (Account,) get argument {
    return (account,);
  }

  @override
  AutoDisposeProviderElement<Misskey> createElement() {
    return _MisskeyProviderElement(this);
  }

  MisskeyProvider _copyWith(
    Misskey Function(MisskeyRef ref) create,
  ) {
    return MisskeyProvider._internal(
      (ref) => create(ref as MisskeyRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      account: account,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MisskeyRef on AutoDisposeProviderRef<Misskey> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MisskeyProviderElement extends AutoDisposeProviderElement<Misskey>
    with MisskeyRef {
  _MisskeyProviderElement(super.provider);

  @override
  Account get account => (origin as MisskeyProvider).account;
}

String _$misskeyWithoutAccountHash() =>
    r'69fd2ed57ba01ab828bd39dd8adde72f977dd91e';

/// See also [misskeyWithoutAccount].
@ProviderFor(misskeyWithoutAccount)
const misskeyWithoutAccountProvider = MisskeyWithoutAccountFamily();

/// See also [misskeyWithoutAccount].
class MisskeyWithoutAccountFamily extends Family {
  /// See also [misskeyWithoutAccount].
  const MisskeyWithoutAccountFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'misskeyWithoutAccountProvider';

  /// See also [misskeyWithoutAccount].
  MisskeyWithoutAccountProvider call(
    String host,
  ) {
    return MisskeyWithoutAccountProvider(
      host,
    );
  }

  @visibleForOverriding
  @override
  MisskeyWithoutAccountProvider getProviderOverride(
    covariant MisskeyWithoutAccountProvider provider,
  ) {
    return call(
      provider.host,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(Misskey Function(MisskeyWithoutAccountRef ref) create) {
    return _$MisskeyWithoutAccountFamilyOverride(this, create);
  }
}

class _$MisskeyWithoutAccountFamilyOverride implements FamilyOverride {
  _$MisskeyWithoutAccountFamilyOverride(this.overriddenFamily, this.create);

  final Misskey Function(MisskeyWithoutAccountRef ref) create;

  @override
  final MisskeyWithoutAccountFamily overriddenFamily;

  @override
  MisskeyWithoutAccountProvider getProviderOverride(
    covariant MisskeyWithoutAccountProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [misskeyWithoutAccount].
class MisskeyWithoutAccountProvider extends AutoDisposeProvider<Misskey> {
  /// See also [misskeyWithoutAccount].
  MisskeyWithoutAccountProvider(
    String host,
  ) : this._internal(
          (ref) => misskeyWithoutAccount(
            ref as MisskeyWithoutAccountRef,
            host,
          ),
          from: misskeyWithoutAccountProvider,
          name: r'misskeyWithoutAccountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyWithoutAccountHash,
          dependencies: MisskeyWithoutAccountFamily._dependencies,
          allTransitiveDependencies:
              MisskeyWithoutAccountFamily._allTransitiveDependencies,
          host: host,
        );

  MisskeyWithoutAccountProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
  }) : super.internal();

  final String host;

  @override
  Override overrideWith(
    Misskey Function(MisskeyWithoutAccountRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MisskeyWithoutAccountProvider._internal(
        (ref) => create(ref as MisskeyWithoutAccountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
      ),
    );
  }

  @override
  (String,) get argument {
    return (host,);
  }

  @override
  AutoDisposeProviderElement<Misskey> createElement() {
    return _MisskeyWithoutAccountProviderElement(this);
  }

  MisskeyWithoutAccountProvider _copyWith(
    Misskey Function(MisskeyWithoutAccountRef ref) create,
  ) {
    return MisskeyWithoutAccountProvider._internal(
      (ref) => create(ref as MisskeyWithoutAccountRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      host: host,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyWithoutAccountProvider && other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MisskeyWithoutAccountRef on AutoDisposeProviderRef<Misskey> {
  /// The parameter `host` of this provider.
  String get host;
}

class _MisskeyWithoutAccountProviderElement
    extends AutoDisposeProviderElement<Misskey> with MisskeyWithoutAccountRef {
  _MisskeyWithoutAccountProviderElement(super.provider);

  @override
  String get host => (origin as MisskeyWithoutAccountProvider).host;
}

String _$localTimelineHash() => r'e13c8b34c43a1a3f085c3400f1ee483724a6c85a';

/// See also [localTimeline].
@ProviderFor(localTimeline)
const localTimelineProvider = LocalTimelineFamily();

/// See also [localTimeline].
class LocalTimelineFamily extends Family {
  /// See also [localTimeline].
  const LocalTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'localTimelineProvider';

  /// See also [localTimeline].
  LocalTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return LocalTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  LocalTimelineProvider getProviderOverride(
    covariant LocalTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<LocalTimelineRepository> Function(LocalTimelineRef ref) create) {
    return _$LocalTimelineFamilyOverride(this, create);
  }
}

class _$LocalTimelineFamilyOverride implements FamilyOverride {
  _$LocalTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<LocalTimelineRepository> Function(LocalTimelineRef ref) create;

  @override
  final LocalTimelineFamily overriddenFamily;

  @override
  LocalTimelineProvider getProviderOverride(
    covariant LocalTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [localTimeline].
class LocalTimelineProvider
    extends AutoDisposeProvider<Raw<LocalTimelineRepository>> {
  /// See also [localTimeline].
  LocalTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => localTimeline(
            ref as LocalTimelineRef,
            tabSetting,
          ),
          from: localTimelineProvider,
          name: r'localTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localTimelineHash,
          dependencies: LocalTimelineFamily._dependencies,
          allTransitiveDependencies:
              LocalTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  LocalTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<LocalTimelineRepository> Function(LocalTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocalTimelineProvider._internal(
        (ref) => create(ref as LocalTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<LocalTimelineRepository>> createElement() {
    return _LocalTimelineProviderElement(this);
  }

  LocalTimelineProvider _copyWith(
    Raw<LocalTimelineRepository> Function(LocalTimelineRef ref) create,
  ) {
    return LocalTimelineProvider._internal(
      (ref) => create(ref as LocalTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LocalTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalTimelineRef on AutoDisposeProviderRef<Raw<LocalTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _LocalTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<LocalTimelineRepository>>
    with LocalTimelineRef {
  _LocalTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as LocalTimelineProvider).tabSetting;
}

String _$homeTimelineHash() => r'29b0651ab8327a75b9385eaff491cfb91e7c58a4';

/// See also [homeTimeline].
@ProviderFor(homeTimeline)
const homeTimelineProvider = HomeTimelineFamily();

/// See also [homeTimeline].
class HomeTimelineFamily extends Family {
  /// See also [homeTimeline].
  const HomeTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeTimelineProvider';

  /// See also [homeTimeline].
  HomeTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return HomeTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  HomeTimelineProvider getProviderOverride(
    covariant HomeTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<HomeTimelineRepository> Function(HomeTimelineRef ref) create) {
    return _$HomeTimelineFamilyOverride(this, create);
  }
}

class _$HomeTimelineFamilyOverride implements FamilyOverride {
  _$HomeTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<HomeTimelineRepository> Function(HomeTimelineRef ref) create;

  @override
  final HomeTimelineFamily overriddenFamily;

  @override
  HomeTimelineProvider getProviderOverride(
    covariant HomeTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [homeTimeline].
class HomeTimelineProvider
    extends AutoDisposeProvider<Raw<HomeTimelineRepository>> {
  /// See also [homeTimeline].
  HomeTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => homeTimeline(
            ref as HomeTimelineRef,
            tabSetting,
          ),
          from: homeTimelineProvider,
          name: r'homeTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeTimelineHash,
          dependencies: HomeTimelineFamily._dependencies,
          allTransitiveDependencies:
              HomeTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  HomeTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<HomeTimelineRepository> Function(HomeTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HomeTimelineProvider._internal(
        (ref) => create(ref as HomeTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<HomeTimelineRepository>> createElement() {
    return _HomeTimelineProviderElement(this);
  }

  HomeTimelineProvider _copyWith(
    Raw<HomeTimelineRepository> Function(HomeTimelineRef ref) create,
  ) {
    return HomeTimelineProvider._internal(
      (ref) => create(ref as HomeTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HomeTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomeTimelineRef on AutoDisposeProviderRef<Raw<HomeTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _HomeTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<HomeTimelineRepository>>
    with HomeTimelineRef {
  _HomeTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as HomeTimelineProvider).tabSetting;
}

String _$globalTimelineHash() => r'57f1100997560a9f43e07e226492fc78161c65e0';

/// See also [globalTimeline].
@ProviderFor(globalTimeline)
const globalTimelineProvider = GlobalTimelineFamily();

/// See also [globalTimeline].
class GlobalTimelineFamily extends Family {
  /// See also [globalTimeline].
  const GlobalTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'globalTimelineProvider';

  /// See also [globalTimeline].
  GlobalTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return GlobalTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  GlobalTimelineProvider getProviderOverride(
    covariant GlobalTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<GlobalTimelineRepository> Function(GlobalTimelineRef ref) create) {
    return _$GlobalTimelineFamilyOverride(this, create);
  }
}

class _$GlobalTimelineFamilyOverride implements FamilyOverride {
  _$GlobalTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<GlobalTimelineRepository> Function(GlobalTimelineRef ref) create;

  @override
  final GlobalTimelineFamily overriddenFamily;

  @override
  GlobalTimelineProvider getProviderOverride(
    covariant GlobalTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [globalTimeline].
class GlobalTimelineProvider
    extends AutoDisposeProvider<Raw<GlobalTimelineRepository>> {
  /// See also [globalTimeline].
  GlobalTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => globalTimeline(
            ref as GlobalTimelineRef,
            tabSetting,
          ),
          from: globalTimelineProvider,
          name: r'globalTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$globalTimelineHash,
          dependencies: GlobalTimelineFamily._dependencies,
          allTransitiveDependencies:
              GlobalTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  GlobalTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<GlobalTimelineRepository> Function(GlobalTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GlobalTimelineProvider._internal(
        (ref) => create(ref as GlobalTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<GlobalTimelineRepository>> createElement() {
    return _GlobalTimelineProviderElement(this);
  }

  GlobalTimelineProvider _copyWith(
    Raw<GlobalTimelineRepository> Function(GlobalTimelineRef ref) create,
  ) {
    return GlobalTimelineProvider._internal(
      (ref) => create(ref as GlobalTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GlobalTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GlobalTimelineRef
    on AutoDisposeProviderRef<Raw<GlobalTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _GlobalTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<GlobalTimelineRepository>>
    with GlobalTimelineRef {
  _GlobalTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as GlobalTimelineProvider).tabSetting;
}

String _$hybridTimelineHash() => r'a1a76b3492fba2fa91e0ceb2faf641ba57efc670';

/// See also [hybridTimeline].
@ProviderFor(hybridTimeline)
const hybridTimelineProvider = HybridTimelineFamily();

/// See also [hybridTimeline].
class HybridTimelineFamily extends Family {
  /// See also [hybridTimeline].
  const HybridTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hybridTimelineProvider';

  /// See also [hybridTimeline].
  HybridTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return HybridTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  HybridTimelineProvider getProviderOverride(
    covariant HybridTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<HybridTimelineRepository> Function(HybridTimelineRef ref) create) {
    return _$HybridTimelineFamilyOverride(this, create);
  }
}

class _$HybridTimelineFamilyOverride implements FamilyOverride {
  _$HybridTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<HybridTimelineRepository> Function(HybridTimelineRef ref) create;

  @override
  final HybridTimelineFamily overriddenFamily;

  @override
  HybridTimelineProvider getProviderOverride(
    covariant HybridTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [hybridTimeline].
class HybridTimelineProvider
    extends AutoDisposeProvider<Raw<HybridTimelineRepository>> {
  /// See also [hybridTimeline].
  HybridTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => hybridTimeline(
            ref as HybridTimelineRef,
            tabSetting,
          ),
          from: hybridTimelineProvider,
          name: r'hybridTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hybridTimelineHash,
          dependencies: HybridTimelineFamily._dependencies,
          allTransitiveDependencies:
              HybridTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  HybridTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<HybridTimelineRepository> Function(HybridTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HybridTimelineProvider._internal(
        (ref) => create(ref as HybridTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<HybridTimelineRepository>> createElement() {
    return _HybridTimelineProviderElement(this);
  }

  HybridTimelineProvider _copyWith(
    Raw<HybridTimelineRepository> Function(HybridTimelineRef ref) create,
  ) {
    return HybridTimelineProvider._internal(
      (ref) => create(ref as HybridTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HybridTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HybridTimelineRef
    on AutoDisposeProviderRef<Raw<HybridTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _HybridTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<HybridTimelineRepository>>
    with HybridTimelineRef {
  _HybridTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as HybridTimelineProvider).tabSetting;
}

String _$roleTimelineHash() => r'8dffc36d62e1b361a10391948952464d2e0dbe05';

/// See also [roleTimeline].
@ProviderFor(roleTimeline)
const roleTimelineProvider = RoleTimelineFamily();

/// See also [roleTimeline].
class RoleTimelineFamily extends Family {
  /// See also [roleTimeline].
  const RoleTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'roleTimelineProvider';

  /// See also [roleTimeline].
  RoleTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return RoleTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  RoleTimelineProvider getProviderOverride(
    covariant RoleTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<RoleTimelineRepository> Function(RoleTimelineRef ref) create) {
    return _$RoleTimelineFamilyOverride(this, create);
  }
}

class _$RoleTimelineFamilyOverride implements FamilyOverride {
  _$RoleTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<RoleTimelineRepository> Function(RoleTimelineRef ref) create;

  @override
  final RoleTimelineFamily overriddenFamily;

  @override
  RoleTimelineProvider getProviderOverride(
    covariant RoleTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [roleTimeline].
class RoleTimelineProvider
    extends AutoDisposeProvider<Raw<RoleTimelineRepository>> {
  /// See also [roleTimeline].
  RoleTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => roleTimeline(
            ref as RoleTimelineRef,
            tabSetting,
          ),
          from: roleTimelineProvider,
          name: r'roleTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$roleTimelineHash,
          dependencies: RoleTimelineFamily._dependencies,
          allTransitiveDependencies:
              RoleTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  RoleTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<RoleTimelineRepository> Function(RoleTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RoleTimelineProvider._internal(
        (ref) => create(ref as RoleTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<RoleTimelineRepository>> createElement() {
    return _RoleTimelineProviderElement(this);
  }

  RoleTimelineProvider _copyWith(
    Raw<RoleTimelineRepository> Function(RoleTimelineRef ref) create,
  ) {
    return RoleTimelineProvider._internal(
      (ref) => create(ref as RoleTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RoleTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RoleTimelineRef on AutoDisposeProviderRef<Raw<RoleTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _RoleTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<RoleTimelineRepository>>
    with RoleTimelineRef {
  _RoleTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as RoleTimelineProvider).tabSetting;
}

String _$channelTimelineHash() => r'f2ad33f57b9cf38c0cba65692acedef2fe9f60ee';

/// See also [channelTimeline].
@ProviderFor(channelTimeline)
const channelTimelineProvider = ChannelTimelineFamily();

/// See also [channelTimeline].
class ChannelTimelineFamily extends Family {
  /// See also [channelTimeline].
  const ChannelTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'channelTimelineProvider';

  /// See also [channelTimeline].
  ChannelTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return ChannelTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  ChannelTimelineProvider getProviderOverride(
    covariant ChannelTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<ChannelTimelineRepository> Function(ChannelTimelineRef ref) create) {
    return _$ChannelTimelineFamilyOverride(this, create);
  }
}

class _$ChannelTimelineFamilyOverride implements FamilyOverride {
  _$ChannelTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<ChannelTimelineRepository> Function(ChannelTimelineRef ref) create;

  @override
  final ChannelTimelineFamily overriddenFamily;

  @override
  ChannelTimelineProvider getProviderOverride(
    covariant ChannelTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [channelTimeline].
class ChannelTimelineProvider
    extends AutoDisposeProvider<Raw<ChannelTimelineRepository>> {
  /// See also [channelTimeline].
  ChannelTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => channelTimeline(
            ref as ChannelTimelineRef,
            tabSetting,
          ),
          from: channelTimelineProvider,
          name: r'channelTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$channelTimelineHash,
          dependencies: ChannelTimelineFamily._dependencies,
          allTransitiveDependencies:
              ChannelTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  ChannelTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<ChannelTimelineRepository> Function(ChannelTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChannelTimelineProvider._internal(
        (ref) => create(ref as ChannelTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<ChannelTimelineRepository>> createElement() {
    return _ChannelTimelineProviderElement(this);
  }

  ChannelTimelineProvider _copyWith(
    Raw<ChannelTimelineRepository> Function(ChannelTimelineRef ref) create,
  ) {
    return ChannelTimelineProvider._internal(
      (ref) => create(ref as ChannelTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChannelTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChannelTimelineRef
    on AutoDisposeProviderRef<Raw<ChannelTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _ChannelTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<ChannelTimelineRepository>>
    with ChannelTimelineRef {
  _ChannelTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as ChannelTimelineProvider).tabSetting;
}

String _$userListTimelineHash() => r'c281ec3c9b765f7a8c51be745cec64db658b5e1b';

/// See also [userListTimeline].
@ProviderFor(userListTimeline)
const userListTimelineProvider = UserListTimelineFamily();

/// See also [userListTimeline].
class UserListTimelineFamily extends Family {
  /// See also [userListTimeline].
  const UserListTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userListTimelineProvider';

  /// See also [userListTimeline].
  UserListTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return UserListTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  UserListTimelineProvider getProviderOverride(
    covariant UserListTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<UserListTimelineRepository> Function(UserListTimelineRef ref)
          create) {
    return _$UserListTimelineFamilyOverride(this, create);
  }
}

class _$UserListTimelineFamilyOverride implements FamilyOverride {
  _$UserListTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<UserListTimelineRepository> Function(UserListTimelineRef ref)
      create;

  @override
  final UserListTimelineFamily overriddenFamily;

  @override
  UserListTimelineProvider getProviderOverride(
    covariant UserListTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [userListTimeline].
class UserListTimelineProvider
    extends AutoDisposeProvider<Raw<UserListTimelineRepository>> {
  /// See also [userListTimeline].
  UserListTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => userListTimeline(
            ref as UserListTimelineRef,
            tabSetting,
          ),
          from: userListTimelineProvider,
          name: r'userListTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userListTimelineHash,
          dependencies: UserListTimelineFamily._dependencies,
          allTransitiveDependencies:
              UserListTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  UserListTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<UserListTimelineRepository> Function(UserListTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserListTimelineProvider._internal(
        (ref) => create(ref as UserListTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<UserListTimelineRepository>> createElement() {
    return _UserListTimelineProviderElement(this);
  }

  UserListTimelineProvider _copyWith(
    Raw<UserListTimelineRepository> Function(UserListTimelineRef ref) create,
  ) {
    return UserListTimelineProvider._internal(
      (ref) => create(ref as UserListTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserListTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserListTimelineRef
    on AutoDisposeProviderRef<Raw<UserListTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _UserListTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<UserListTimelineRepository>>
    with UserListTimelineRef {
  _UserListTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as UserListTimelineProvider).tabSetting;
}

String _$antennaTimelineHash() => r'580758d5ab323cd0fd8b1bb0809b2db4be05aef0';

/// See also [antennaTimeline].
@ProviderFor(antennaTimeline)
const antennaTimelineProvider = AntennaTimelineFamily();

/// See also [antennaTimeline].
class AntennaTimelineFamily extends Family {
  /// See also [antennaTimeline].
  const AntennaTimelineFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'antennaTimelineProvider';

  /// See also [antennaTimeline].
  AntennaTimelineProvider call(
    TabSetting tabSetting,
  ) {
    return AntennaTimelineProvider(
      tabSetting,
    );
  }

  @visibleForOverriding
  @override
  AntennaTimelineProvider getProviderOverride(
    covariant AntennaTimelineProvider provider,
  ) {
    return call(
      provider.tabSetting,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<AntennaTimelineRepository> Function(AntennaTimelineRef ref) create) {
    return _$AntennaTimelineFamilyOverride(this, create);
  }
}

class _$AntennaTimelineFamilyOverride implements FamilyOverride {
  _$AntennaTimelineFamilyOverride(this.overriddenFamily, this.create);

  final Raw<AntennaTimelineRepository> Function(AntennaTimelineRef ref) create;

  @override
  final AntennaTimelineFamily overriddenFamily;

  @override
  AntennaTimelineProvider getProviderOverride(
    covariant AntennaTimelineProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [antennaTimeline].
class AntennaTimelineProvider
    extends AutoDisposeProvider<Raw<AntennaTimelineRepository>> {
  /// See also [antennaTimeline].
  AntennaTimelineProvider(
    TabSetting tabSetting,
  ) : this._internal(
          (ref) => antennaTimeline(
            ref as AntennaTimelineRef,
            tabSetting,
          ),
          from: antennaTimelineProvider,
          name: r'antennaTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$antennaTimelineHash,
          dependencies: AntennaTimelineFamily._dependencies,
          allTransitiveDependencies:
              AntennaTimelineFamily._allTransitiveDependencies,
          tabSetting: tabSetting,
        );

  AntennaTimelineProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSetting,
  }) : super.internal();

  final TabSetting tabSetting;

  @override
  Override overrideWith(
    Raw<AntennaTimelineRepository> Function(AntennaTimelineRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AntennaTimelineProvider._internal(
        (ref) => create(ref as AntennaTimelineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSetting: tabSetting,
      ),
    );
  }

  @override
  (TabSetting,) get argument {
    return (tabSetting,);
  }

  @override
  AutoDisposeProviderElement<Raw<AntennaTimelineRepository>> createElement() {
    return _AntennaTimelineProviderElement(this);
  }

  AntennaTimelineProvider _copyWith(
    Raw<AntennaTimelineRepository> Function(AntennaTimelineRef ref) create,
  ) {
    return AntennaTimelineProvider._internal(
      (ref) => create(ref as AntennaTimelineRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      tabSetting: tabSetting,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AntennaTimelineProvider && other.tabSetting == tabSetting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSetting.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AntennaTimelineRef
    on AutoDisposeProviderRef<Raw<AntennaTimelineRepository>> {
  /// The parameter `tabSetting` of this provider.
  TabSetting get tabSetting;
}

class _AntennaTimelineProviderElement
    extends AutoDisposeProviderElement<Raw<AntennaTimelineRepository>>
    with AntennaTimelineRef {
  _AntennaTimelineProviderElement(super.provider);

  @override
  TabSetting get tabSetting => (origin as AntennaTimelineProvider).tabSetting;
}

String _$mainStreamRepositoryHash() =>
    r'0e59b6281e96c6515324d206d6518ff0801cb09e';

/// See also [mainStreamRepository].
@ProviderFor(mainStreamRepository)
const mainStreamRepositoryProvider = MainStreamRepositoryFamily();

/// See also [mainStreamRepository].
class MainStreamRepositoryFamily extends Family {
  /// See also [mainStreamRepository].
  const MainStreamRepositoryFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mainStreamRepositoryProvider';

  /// See also [mainStreamRepository].
  MainStreamRepositoryProvider call(
    Account account,
  ) {
    return MainStreamRepositoryProvider(
      account,
    );
  }

  @visibleForOverriding
  @override
  MainStreamRepositoryProvider getProviderOverride(
    covariant MainStreamRepositoryProvider provider,
  ) {
    return call(
      provider.account,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<MainStreamRepository> Function(MainStreamRepositoryRef ref) create) {
    return _$MainStreamRepositoryFamilyOverride(this, create);
  }
}

class _$MainStreamRepositoryFamilyOverride implements FamilyOverride {
  _$MainStreamRepositoryFamilyOverride(this.overriddenFamily, this.create);

  final Raw<MainStreamRepository> Function(MainStreamRepositoryRef ref) create;

  @override
  final MainStreamRepositoryFamily overriddenFamily;

  @override
  MainStreamRepositoryProvider getProviderOverride(
    covariant MainStreamRepositoryProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [mainStreamRepository].
class MainStreamRepositoryProvider
    extends AutoDisposeProvider<Raw<MainStreamRepository>> {
  /// See also [mainStreamRepository].
  MainStreamRepositoryProvider(
    Account account,
  ) : this._internal(
          (ref) => mainStreamRepository(
            ref as MainStreamRepositoryRef,
            account,
          ),
          from: mainStreamRepositoryProvider,
          name: r'mainStreamRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mainStreamRepositoryHash,
          dependencies: MainStreamRepositoryFamily._dependencies,
          allTransitiveDependencies:
              MainStreamRepositoryFamily._allTransitiveDependencies,
          account: account,
        );

  MainStreamRepositoryProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    Raw<MainStreamRepository> Function(MainStreamRepositoryRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MainStreamRepositoryProvider._internal(
        (ref) => create(ref as MainStreamRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  (Account,) get argument {
    return (account,);
  }

  @override
  AutoDisposeProviderElement<Raw<MainStreamRepository>> createElement() {
    return _MainStreamRepositoryProviderElement(this);
  }

  MainStreamRepositoryProvider _copyWith(
    Raw<MainStreamRepository> Function(MainStreamRepositoryRef ref) create,
  ) {
    return MainStreamRepositoryProvider._internal(
      (ref) => create(ref as MainStreamRepositoryRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      account: account,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MainStreamRepositoryProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MainStreamRepositoryRef
    on AutoDisposeProviderRef<Raw<MainStreamRepository>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MainStreamRepositoryProviderElement
    extends AutoDisposeProviderElement<Raw<MainStreamRepository>>
    with MainStreamRepositoryRef {
  _MainStreamRepositoryProviderElement(super.provider);

  @override
  Account get account => (origin as MainStreamRepositoryProvider).account;
}

String _$favoriteHash() => r'21804e18efd86891fabf7a630c796a3b35887462';

/// See also [favorite].
@ProviderFor(favorite)
const favoriteProvider = FavoriteFamily();

/// See also [favorite].
class FavoriteFamily extends Family {
  /// See also [favorite].
  const FavoriteFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'favoriteProvider';

  /// See also [favorite].
  FavoriteProvider call(
    Account account,
  ) {
    return FavoriteProvider(
      account,
    );
  }

  @visibleForOverriding
  @override
  FavoriteProvider getProviderOverride(
    covariant FavoriteProvider provider,
  ) {
    return call(
      provider.account,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<FavoriteRepository> Function(FavoriteRef ref) create) {
    return _$FavoriteFamilyOverride(this, create);
  }
}

class _$FavoriteFamilyOverride implements FamilyOverride {
  _$FavoriteFamilyOverride(this.overriddenFamily, this.create);

  final Raw<FavoriteRepository> Function(FavoriteRef ref) create;

  @override
  final FavoriteFamily overriddenFamily;

  @override
  FavoriteProvider getProviderOverride(
    covariant FavoriteProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [favorite].
class FavoriteProvider extends AutoDisposeProvider<Raw<FavoriteRepository>> {
  /// See also [favorite].
  FavoriteProvider(
    Account account,
  ) : this._internal(
          (ref) => favorite(
            ref as FavoriteRef,
            account,
          ),
          from: favoriteProvider,
          name: r'favoriteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoriteHash,
          dependencies: FavoriteFamily._dependencies,
          allTransitiveDependencies: FavoriteFamily._allTransitiveDependencies,
          account: account,
        );

  FavoriteProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    Raw<FavoriteRepository> Function(FavoriteRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FavoriteProvider._internal(
        (ref) => create(ref as FavoriteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  (Account,) get argument {
    return (account,);
  }

  @override
  AutoDisposeProviderElement<Raw<FavoriteRepository>> createElement() {
    return _FavoriteProviderElement(this);
  }

  FavoriteProvider _copyWith(
    Raw<FavoriteRepository> Function(FavoriteRef ref) create,
  ) {
    return FavoriteProvider._internal(
      (ref) => create(ref as FavoriteRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      account: account,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FavoriteRef on AutoDisposeProviderRef<Raw<FavoriteRepository>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FavoriteProviderElement
    extends AutoDisposeProviderElement<Raw<FavoriteRepository>>
    with FavoriteRef {
  _FavoriteProviderElement(super.provider);

  @override
  Account get account => (origin as FavoriteProvider).account;
}

String _$notesHash() => r'e3a497ab84cec97e7b295afcc9df7c46f9993453';

/// See also [notes].
@ProviderFor(notes)
const notesProvider = NotesFamily();

/// See also [notes].
class NotesFamily extends Family {
  /// See also [notes].
  const NotesFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'notesProvider';

  /// See also [notes].
  NotesProvider call(
    Account account,
  ) {
    return NotesProvider(
      account,
    );
  }

  @visibleForOverriding
  @override
  NotesProvider getProviderOverride(
    covariant NotesProvider provider,
  ) {
    return call(
      provider.account,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(Raw<NoteRepository> Function(NotesRef ref) create) {
    return _$NotesFamilyOverride(this, create);
  }
}

class _$NotesFamilyOverride implements FamilyOverride {
  _$NotesFamilyOverride(this.overriddenFamily, this.create);

  final Raw<NoteRepository> Function(NotesRef ref) create;

  @override
  final NotesFamily overriddenFamily;

  @override
  NotesProvider getProviderOverride(
    covariant NotesProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [notes].
class NotesProvider extends AutoDisposeProvider<Raw<NoteRepository>> {
  /// See also [notes].
  NotesProvider(
    Account account,
  ) : this._internal(
          (ref) => notes(
            ref as NotesRef,
            account,
          ),
          from: notesProvider,
          name: r'notesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notesHash,
          dependencies: NotesFamily._dependencies,
          allTransitiveDependencies: NotesFamily._allTransitiveDependencies,
          account: account,
        );

  NotesProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    Raw<NoteRepository> Function(NotesRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NotesProvider._internal(
        (ref) => create(ref as NotesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  (Account,) get argument {
    return (account,);
  }

  @override
  AutoDisposeProviderElement<Raw<NoteRepository>> createElement() {
    return _NotesProviderElement(this);
  }

  NotesProvider _copyWith(
    Raw<NoteRepository> Function(NotesRef ref) create,
  ) {
    return NotesProvider._internal(
      (ref) => create(ref as NotesRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      account: account,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NotesProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotesRef on AutoDisposeProviderRef<Raw<NoteRepository>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _NotesProviderElement
    extends AutoDisposeProviderElement<Raw<NoteRepository>> with NotesRef {
  _NotesProviderElement(super.provider);

  @override
  Account get account => (origin as NotesProvider).account;
}

String _$emojiRepositoryHash() => r'5555050040d4a5be7cdef1dde6f74e7c7fd3ae30';

/// See also [emojiRepository].
@ProviderFor(emojiRepository)
const emojiRepositoryProvider = EmojiRepositoryFamily();

/// See also [emojiRepository].
class EmojiRepositoryFamily extends Family {
  /// See also [emojiRepository].
  const EmojiRepositoryFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'emojiRepositoryProvider';

  /// See also [emojiRepository].
  EmojiRepositoryProvider call(
    Account account,
  ) {
    return EmojiRepositoryProvider(
      account,
    );
  }

  @visibleForOverriding
  @override
  EmojiRepositoryProvider getProviderOverride(
    covariant EmojiRepositoryProvider provider,
  ) {
    return call(
      provider.account,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Raw<EmojiRepository> Function(EmojiRepositoryRef ref) create) {
    return _$EmojiRepositoryFamilyOverride(this, create);
  }
}

class _$EmojiRepositoryFamilyOverride implements FamilyOverride {
  _$EmojiRepositoryFamilyOverride(this.overriddenFamily, this.create);

  final Raw<EmojiRepository> Function(EmojiRepositoryRef ref) create;

  @override
  final EmojiRepositoryFamily overriddenFamily;

  @override
  EmojiRepositoryProvider getProviderOverride(
    covariant EmojiRepositoryProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [emojiRepository].
class EmojiRepositoryProvider
    extends AutoDisposeProvider<Raw<EmojiRepository>> {
  /// See also [emojiRepository].
  EmojiRepositoryProvider(
    Account account,
  ) : this._internal(
          (ref) => emojiRepository(
            ref as EmojiRepositoryRef,
            account,
          ),
          from: emojiRepositoryProvider,
          name: r'emojiRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$emojiRepositoryHash,
          dependencies: EmojiRepositoryFamily._dependencies,
          allTransitiveDependencies:
              EmojiRepositoryFamily._allTransitiveDependencies,
          account: account,
        );

  EmojiRepositoryProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    Raw<EmojiRepository> Function(EmojiRepositoryRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmojiRepositoryProvider._internal(
        (ref) => create(ref as EmojiRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  (Account,) get argument {
    return (account,);
  }

  @override
  AutoDisposeProviderElement<Raw<EmojiRepository>> createElement() {
    return _EmojiRepositoryProviderElement(this);
  }

  EmojiRepositoryProvider _copyWith(
    Raw<EmojiRepository> Function(EmojiRepositoryRef ref) create,
  ) {
    return EmojiRepositoryProvider._internal(
      (ref) => create(ref as EmojiRepositoryRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      account: account,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiRepositoryProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmojiRepositoryRef on AutoDisposeProviderRef<Raw<EmojiRepository>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _EmojiRepositoryProviderElement
    extends AutoDisposeProviderElement<Raw<EmojiRepository>>
    with EmojiRepositoryRef {
  _EmojiRepositoryProviderElement(super.provider);

  @override
  Account get account => (origin as EmojiRepositoryProvider).account;
}

String _$accountsHash() => r'd70730d18b80a35f4fac0b25ec10004ce706bef9';

/// See also [accounts].
@ProviderFor(accounts)
final accountsProvider = AutoDisposeProvider<List<Account>>.internal(
  accounts,
  name: r'accountsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsRef = AutoDisposeProviderRef<List<Account>>;
String _$iHash() => r'ed4b1dd720889e8c1651bba7506fcb941b45342d';

/// See also [i].
@ProviderFor(i)
const iProvider = IFamily();

/// See also [i].
class IFamily extends Family {
  /// See also [i].
  const IFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'iProvider';

  /// See also [i].
  IProvider call(
    Acct acct,
  ) {
    return IProvider(
      acct,
    );
  }

  @visibleForOverriding
  @override
  IProvider getProviderOverride(
    covariant IProvider provider,
  ) {
    return call(
      provider.acct,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(MeDetailed Function(IRef ref) create) {
    return _$IFamilyOverride(this, create);
  }
}

class _$IFamilyOverride implements FamilyOverride {
  _$IFamilyOverride(this.overriddenFamily, this.create);

  final MeDetailed Function(IRef ref) create;

  @override
  final IFamily overriddenFamily;

  @override
  IProvider getProviderOverride(
    covariant IProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [i].
class IProvider extends AutoDisposeProvider<MeDetailed> {
  /// See also [i].
  IProvider(
    Acct acct,
  ) : this._internal(
          (ref) => i(
            ref as IRef,
            acct,
          ),
          from: iProvider,
          name: r'iProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$iHash,
          dependencies: IFamily._dependencies,
          allTransitiveDependencies: IFamily._allTransitiveDependencies,
          acct: acct,
        );

  IProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.acct,
  }) : super.internal();

  final Acct acct;

  @override
  Override overrideWith(
    MeDetailed Function(IRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IProvider._internal(
        (ref) => create(ref as IRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        acct: acct,
      ),
    );
  }

  @override
  (Acct,) get argument {
    return (acct,);
  }

  @override
  AutoDisposeProviderElement<MeDetailed> createElement() {
    return _IProviderElement(this);
  }

  IProvider _copyWith(
    MeDetailed Function(IRef ref) create,
  ) {
    return IProvider._internal(
      (ref) => create(ref as IRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      acct: acct,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IProvider && other.acct == acct;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, acct.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IRef on AutoDisposeProviderRef<MeDetailed> {
  /// The parameter `acct` of this provider.
  Acct get acct;
}

class _IProviderElement extends AutoDisposeProviderElement<MeDetailed>
    with IRef {
  _IProviderElement(super.provider);

  @override
  Acct get acct => (origin as IProvider).acct;
}

String _$accountHash() => r'1614cc4c66271ef2e69f4a527237ec179b58db56';

/// See also [account].
@ProviderFor(account)
const accountProvider = AccountFamily();

/// See also [account].
class AccountFamily extends Family {
  /// See also [account].
  const AccountFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountProvider';

  /// See also [account].
  AccountProvider call(
    Acct acct,
  ) {
    return AccountProvider(
      acct,
    );
  }

  @visibleForOverriding
  @override
  AccountProvider getProviderOverride(
    covariant AccountProvider provider,
  ) {
    return call(
      provider.acct,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(Account Function(AccountRef ref) create) {
    return _$AccountFamilyOverride(this, create);
  }
}

class _$AccountFamilyOverride implements FamilyOverride {
  _$AccountFamilyOverride(this.overriddenFamily, this.create);

  final Account Function(AccountRef ref) create;

  @override
  final AccountFamily overriddenFamily;

  @override
  AccountProvider getProviderOverride(
    covariant AccountProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [account].
class AccountProvider extends AutoDisposeProvider<Account> {
  /// See also [account].
  AccountProvider(
    Acct acct,
  ) : this._internal(
          (ref) => account(
            ref as AccountRef,
            acct,
          ),
          from: accountProvider,
          name: r'accountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountHash,
          dependencies: AccountFamily._dependencies,
          allTransitiveDependencies: AccountFamily._allTransitiveDependencies,
          acct: acct,
        );

  AccountProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.acct,
  }) : super.internal();

  final Acct acct;

  @override
  Override overrideWith(
    Account Function(AccountRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountProvider._internal(
        (ref) => create(ref as AccountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        acct: acct,
      ),
    );
  }

  @override
  (Acct,) get argument {
    return (acct,);
  }

  @override
  AutoDisposeProviderElement<Account> createElement() {
    return _AccountProviderElement(this);
  }

  AccountProvider _copyWith(
    Account Function(AccountRef ref) create,
  ) {
    return AccountProvider._internal(
      (ref) => create(ref as AccountRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      acct: acct,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AccountProvider && other.acct == acct;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, acct.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountRef on AutoDisposeProviderRef<Account> {
  /// The parameter `acct` of this provider.
  Acct get acct;
}

class _AccountProviderElement extends AutoDisposeProviderElement<Account>
    with AccountRef {
  _AccountProviderElement(super.provider);

  @override
  Acct get acct => (origin as AccountProvider).acct;
}

String _$tabSettingsRepositoryHash() =>
    r'90b04cbf70463ef04cabf95a222784b3ddfde185';

/// See also [tabSettingsRepository].
@ProviderFor(tabSettingsRepository)
final tabSettingsRepositoryProvider =
    AutoDisposeProvider<Raw<TabSettingsRepository>>.internal(
  tabSettingsRepository,
  name: r'tabSettingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tabSettingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TabSettingsRepositoryRef
    = AutoDisposeProviderRef<Raw<TabSettingsRepository>>;
String _$accountSettingsRepositoryHash() =>
    r'452a8ccc331afbb92b22086fce99e7480c84d47d';

/// See also [accountSettingsRepository].
@ProviderFor(accountSettingsRepository)
final accountSettingsRepositoryProvider =
    AutoDisposeProvider<Raw<AccountSettingsRepository>>.internal(
  accountSettingsRepository,
  name: r'accountSettingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountSettingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountSettingsRepositoryRef
    = AutoDisposeProviderRef<Raw<AccountSettingsRepository>>;
String _$generalSettingsRepositoryHash() =>
    r'62651f8aa5e2312aac29bb1b471ae44a7361ee90';

/// See also [generalSettingsRepository].
@ProviderFor(generalSettingsRepository)
final generalSettingsRepositoryProvider =
    AutoDisposeProvider<Raw<GeneralSettingsRepository>>.internal(
  generalSettingsRepository,
  name: r'generalSettingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$generalSettingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GeneralSettingsRepositoryRef
    = AutoDisposeProviderRef<Raw<GeneralSettingsRepository>>;
String _$desktopSettingsRepositoryHash() =>
    r'cfafb8572899e81b6907d52af3d6e0b2e336c8a3';

/// See also [desktopSettingsRepository].
@ProviderFor(desktopSettingsRepository)
final desktopSettingsRepositoryProvider =
    AutoDisposeProvider<Raw<DesktopSettingsRepository>>.internal(
  desktopSettingsRepository,
  name: r'desktopSettingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$desktopSettingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DesktopSettingsRepositoryRef
    = AutoDisposeProviderRef<Raw<DesktopSettingsRepository>>;
String _$importExportRepositoryHash() =>
    r'7ad9ad123cf53f5de1c0deec380142711d7b020a';

/// See also [importExportRepository].
@ProviderFor(importExportRepository)
final importExportRepositoryProvider =
    AutoDisposeProvider<Raw<ImportExportRepository>>.internal(
  importExportRepository,
  name: r'importExportRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$importExportRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ImportExportRepositoryRef
    = AutoDisposeProviderRef<Raw<ImportExportRepository>>;
String _$cacheManagerHash() => r'5c40203a1630d49a1df471ade2656c36c2752971';

/// See also [cacheManager].
@ProviderFor(cacheManager)
final cacheManagerProvider = AutoDisposeProvider<BaseCacheManager?>.internal(
  cacheManager,
  name: r'cacheManagerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cacheManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CacheManagerRef = AutoDisposeProviderRef<BaseCacheManager?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
