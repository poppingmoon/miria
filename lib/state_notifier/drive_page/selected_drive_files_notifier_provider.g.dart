// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_drive_files_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedDriveFilesNotifierHash() =>
    r'a97ebffe2481508e61cd1310017ec2020153cfce';

/// See also [SelectedDriveFilesNotifier].
@ProviderFor(SelectedDriveFilesNotifier)
final selectedDriveFilesNotifierProvider = AutoDisposeNotifierProvider<
    SelectedDriveFilesNotifier, List<DriveFile>>.internal(
  SelectedDriveFilesNotifier.new,
  name: r'selectedDriveFilesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedDriveFilesNotifierHash,
  dependencies: <ProviderOrFamily>[accountContextProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountContextProvider,
    ...?accountContextProvider.allTransitiveDependencies
  },
);

typedef _$SelectedDriveFilesNotifier = AutoDisposeNotifier<List<DriveFile>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
