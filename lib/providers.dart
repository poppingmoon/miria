import 'package:dio/dio.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/acct.dart';
import 'package:miria/model/color_theme.dart';
import 'package:miria/model/drive_page_state.dart';
import 'package:miria/model/pagination_state.dart';
import 'package:miria/model/tab_setting.dart';
import 'package:miria/model/timeline_controller_state.dart';
import 'package:miria/model/timeline_page_state.dart';
import 'package:miria/model/timeline_state.dart';
import 'package:miria/repository/account_repository.dart';
import 'package:miria/repository/account_settings_repository.dart';
import 'package:miria/repository/color_theme_repository.dart';
import 'package:miria/repository/emoji_repository.dart';
import 'package:miria/repository/favorite_repository.dart';
import 'package:miria/repository/general_settings_repository.dart';
import 'package:miria/repository/import_export_repository.dart';
import 'package:miria/repository/main_stream_repository.dart';
import 'package:miria/repository/note_repository.dart';
import 'package:miria/repository/tab_settings_repository.dart';
import 'package:miria/repository/timeline_repository.dart';
import 'package:miria/state_notifier/antenna_page/antennas_notifier.dart';
import 'package:miria/state_notifier/clip_list_page/clips_notifier.dart';
import 'package:miria/state_notifier/common/download_file_notifier.dart';
import 'package:miria/state_notifier/common/misskey_notes/misskey_note_notifier.dart';
import 'package:miria/state_notifier/common/misskey_server_list_notifier.dart';
import 'package:miria/state_notifier/drive_page/drive_file_notes_page/drive_files_attached_notes_notifier.dart';
import 'package:miria/state_notifier/drive_page/drive_files_notifier.dart';
import 'package:miria/state_notifier/drive_page/drive_folders_notifier.dart';
import 'package:miria/state_notifier/drive_page/drive_page_notifier.dart';
import 'package:miria/state_notifier/note_create_page/note_create_state_notifier.dart';
import 'package:miria/state_notifier/photo_edit_page/photo_edit_state_notifier.dart';
import 'package:miria/state_notifier/timeline_page/timeline_controller.dart';
import 'package:miria/state_notifier/timeline_page/timeline_page_controller.dart';
import 'package:miria/state_notifier/user_list_page/users_lists_notifier.dart';
import 'package:miria/state_notifier/user_page/user_detailed_notifier.dart';
import 'package:misskey_dart/misskey_dart.dart';

final dioProvider = Provider((ref) => Dio());
final fileSystemProvider =
    Provider<FileSystem>((ref) => const LocalFileSystem());
final misskeyProvider = Provider.family<Misskey, Account>(
  (ref, account) => Misskey(
    token: account.token,
    host: account.host,
    socketConnectionTimeout: const Duration(seconds: 20),
  ),
);
final misskeyWithoutAccountProvider = Provider.family<Misskey, String>(
  (ref, host) => Misskey(
    host: host,
    token: null,
    socketConnectionTimeout: const Duration(seconds: 20),
  ),
);

final timelineRepositoryProvider =
    NotifierProvider.family<TimelineRepository, TimelineState, TabSetting>(
  TimelineRepository.new,
);

final timelineControllerProvider = NotifierProvider.autoDispose
    .family<TimelineController, TimelineControllerState, TabSetting>(
  TimelineController.new,
);

final timelinePageControllerProvider =
    NotifierProvider.autoDispose<TimelinePageController, TimelinePageState>(
  TimelinePageController.new,
);

final mainStreamRepositoryProvider =
    ChangeNotifierProvider.family<MainStreamRepository, Account>(
  (ref, account) => MainStreamRepository(
    ref.read(misskeyProvider(account)),
    ref.read(emojiRepositoryProvider(account)),
    account,
    ref.read(accountRepositoryProvider.notifier),
  ),
);

final favoriteProvider =
    ChangeNotifierProvider.autoDispose.family<FavoriteRepository, Account>(
  (ref, account) => FavoriteRepository(
    ref.read(misskeyProvider(account)),
    ref.read(notesProvider(account)),
  ),
);

final notesProvider = ChangeNotifierProvider.family<NoteRepository, Account>(
  (ref, account) => NoteRepository(ref.read(misskeyProvider(account)), account),
);

//TODO: アカウント毎である必要はない ホスト毎
//TODO: のつもりだったけど、絵文字にロールが関係するようになるとアカウント毎になる
final emojiRepositoryProvider = Provider.family<EmojiRepository, Account>(
  (ref, account) => EmojiRepositoryImpl(
    misskey: ref.read(misskeyProvider(account)),
    account: account,
    accountSettingsRepository: ref.read(accountSettingsRepositoryProvider),
  ),
);

final accountRepositoryProvider =
    NotifierProvider<AccountRepository, List<Account>>(AccountRepository.new);

final accountsProvider =
    Provider<List<Account>>((ref) => ref.watch(accountRepositoryProvider));

final iProvider = Provider.family<MeDetailed, Acct>((ref, acct) {
  final accounts = ref.watch(accountsProvider);
  final account = accounts.firstWhere((account) => account.acct == acct);
  return account.i;
});

final accountProvider = Provider.family<Account, Acct>(
  (ref, acct) => ref.watch(
    accountsProvider.select(
      (accounts) => accounts.firstWhere(
        (account) => account.acct == acct,
      ),
    ),
  ),
);

final tabSettingsRepositoryProvider =
    ChangeNotifierProvider((ref) => TabSettingsRepository());

final accountSettingsRepositoryProvider =
    ChangeNotifierProvider((ref) => AccountSettingsRepository());

final generalSettingsRepositoryProvider =
    ChangeNotifierProvider((ref) => GeneralSettingsRepository());

final errorEventProvider =
    StateProvider<(Object? error, BuildContext? context)>(
  (ref) => (null, null),
);

final photoEditProvider =
    StateNotifierProvider.autoDispose<PhotoEditStateNotifier, PhotoEdit>(
  (ref) => PhotoEditStateNotifier(const PhotoEdit()),
);

final importExportRepository =
    ChangeNotifierProvider((ref) => ImportExportRepository(ref.read));

// TODO: 下書きの機能かんがえるときにfamilyの引数みなおす
final noteCreateProvider = StateNotifierProvider.family
    .autoDispose<NoteCreateNotifier, NoteCreate, Account>(
  (ref, account) => NoteCreateNotifier(
    NoteCreate(
      account: account,
      noteVisibility: ref
          .read(accountSettingsRepositoryProvider)
          .fromAccount(account)
          .defaultNoteVisibility,
      localOnly: ref
          .read(accountSettingsRepositoryProvider)
          .fromAccount(account)
          .defaultIsLocalOnly,
      reactionAcceptance: ref
          .read(accountSettingsRepositoryProvider)
          .fromAccount(account)
          .defaultReactionAcceptance,
    ),
    ref.read(fileSystemProvider),
    ref.read(dioProvider),
    ref.read(misskeyProvider(account)),
    ref.read(errorEventProvider.notifier),
    ref.read(notesProvider(account)),
  ),
);

final misskeyServerListNotifierProvider = AsyncNotifierProvider.autoDispose<
    MisskeyServerListNotifier, List<JoinMisskeyInstanceInfo>>(
  MisskeyServerListNotifier.new,
);

final cacheManagerProvider = Provider<BaseCacheManager?>((ref) => null);

final misskeyNoteNotifierProvider =
    NotifierProvider.family<MisskeyNoteNotifier, void, Account>(
  MisskeyNoteNotifier.new,
);

final usersListsNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<UsersListsNotifier, List<UsersList>, Misskey>(
  UsersListsNotifier.new,
);

final antennasNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<AntennasNotifier, List<Antenna>, Misskey>(
  AntennasNotifier.new,
);

final clipsNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<ClipsNotifier, List<Clip>, Misskey>(ClipsNotifier.new);

final miAuthCallbackProvider = StateProvider.autoDispose<Uri?>((ref) => null);

final colorThemeRepositoryProvider =
    NotifierProvider<ColorThemeRepository, List<ColorTheme>>(
  ColorThemeRepository.new,
);

final installedThemeCodeRepositoryProvider =
    NotifierProvider<InstalledThemeCodeRepository, List<String>>(
  InstalledThemeCodeRepository.new,
);

final downloadFileNotifierProvider =
    NotifierProvider<DownloadFileNotifier, void>(DownloadFileNotifier.new);

final driveFilesNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<DriveFilesNotifier, PaginationState<DriveFile>, (Misskey, String?)>(
  DriveFilesNotifier.new,
);

final driveFoldersNotifierProvider = AsyncNotifierProvider.autoDispose.family<
    DriveFoldersNotifier, PaginationState<DriveFolder>, (Misskey, String?)>(
  DriveFoldersNotifier.new,
);

final drivePageNotifierProvider =
    NotifierProvider.autoDispose<DrivePageNotifier, DrivePageState>(
  DrivePageNotifier.new,
);

final driveFilesAttachedNotesProvider = AsyncNotifierProvider.autoDispose
    .family<DriveFilesAttachedNotesNotifier, PaginationState<Note>,
        (Misskey, String)>(DriveFilesAttachedNotesNotifier.new);

final userDetailedNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<UserDetailedNotifier, UserDetailed, (Account, String)>(
  UserDetailedNotifier.new,
);
