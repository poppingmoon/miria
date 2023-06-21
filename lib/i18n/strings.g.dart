/// Generated file. Do not edit.
///
/// Locales: 3
/// Strings: 5455 (1818 per locale)
///
/// Built on 2023-06-19 at 16:22 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.enUs;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.enUs) // set locale
/// - Locale locale = AppLocale.enUs.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.enUs) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEnUs> {
	enUs(languageCode: 'en', countryCode: 'US', build: _StringsEnUs.build),
	jaJp(languageCode: 'ja', countryCode: 'JP', build: _StringsJaJp.build),
	jaKs(languageCode: 'ja', countryCode: 'KS', build: _StringsJaKs.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEnUs> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEnUs get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEnUs get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEnUs of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEnUs>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEnUs> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEnUs> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEnUs>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEnUs get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEnUs> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEnUs> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEnUs implements BaseTranslations<AppLocale, _StringsEnUs> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEnUs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, _StringsEnUs> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEnUs _root = this; // ignore: unused_field

	// Translations
	String get _lang_ => 'English';
	String get headlineMisskey => 'A network connected by notes';
	String get introMisskey => 'Welcome! Misskey is an open source, decentralized microblogging service.\nCreate "notes" to share your thoughts with everyone around you. 📡\nWith "reactions", you can also quickly express your feelings about everyone\'s notes. 👍\nLet\'s explore a new world! 🚀';
	String get poweredByMisskeyDescription => '{name} is one of the services powered by the open source platform <b>Misskey</b> (referred to as a "Misskey instance").';
	String get monthAndDay => '{month}/{day}';
	String get search => 'Search';
	String get notifications => 'Notifications';
	String get username => 'Username';
	String get password => 'Password';
	String get forgotPassword => 'Forgot password';
	String get fetchingAsApObject => 'Fetching from the Fediverse...';
	String get ok => 'OK';
	String get gotIt => 'Got it!';
	String get cancel => 'Cancel';
	String get noThankYou => 'Not now';
	String get enterUsername => 'Enter username';
	String get renotedBy => 'Renoted by {user}';
	String get noNotes => 'No notes';
	String get noNotifications => 'No notifications';
	String get instance => 'Instance';
	String get settings => 'Settings';
	String get notificationSettings => 'Notification Settings';
	String get basicSettings => 'Basic Settings';
	String get otherSettings => 'Other Settings';
	String get openInWindow => 'Open in window';
	String get profile => 'Profile';
	String get timeline => 'Timeline';
	String get noAccountDescription => 'This user has not written their bio yet.';
	String get login => 'Sign In';
	String get loggingIn => 'Signing In';
	String get logout => 'Sign Out';
	String get signup => 'Sign Up';
	String get uploading => 'Uploading...';
	String get save => 'Save';
	String get users => 'Users';
	String get addUser => 'Add a user';
	String get favorite => 'Add to favorites';
	String get favorites => 'Favorites';
	String get unfavorite => 'Remove from favorites';
	String get favorited => 'Added to favorites.';
	String get alreadyFavorited => 'Already added to favorites.';
	String get cantFavorite => 'Couldn\'t add to favorites.';
	String get pin => 'Pin to profile';
	String get unpin => 'Unpin from profile';
	String get copyContent => 'Copy contents';
	String get copyLink => 'Copy link';
	String get delete => 'Delete';
	String get deleteAndEdit => 'Delete and edit';
	String get deleteAndEditConfirm => 'Are you sure you want to delete this note and edit it? You will lose all reactions, renotes and replies to it.';
	String get addToList => 'Add to list';
	String get sendMessage => 'Send a message';
	String get copyRSS => 'Copy RSS';
	String get copyUsername => 'Copy username';
	String get copyUserId => 'Copy user ID';
	String get copyNoteId => 'Copy note ID';
	String get searchUser => 'Search for a user';
	String get reply => 'Reply';
	String get loadMore => 'Load more';
	String get showMore => 'Show more';
	String get showLess => 'Close';
	String get youGotNewFollower => 'followed you';
	String get receiveFollowRequest => 'Follow request received';
	String get followRequestAccepted => 'Follow request accepted';
	String get mention => 'Mention';
	String get mentions => 'Mentions';
	String get directNotes => 'Direct notes';
	String get importAndExport => 'Import / Export';
	String get import => 'Import';
	String get export => 'Export';
	String get files => 'Files';
	String get download => 'Download';
	String get driveFileDeleteConfirm => 'Are you sure you want to delete "{name}"? It will also vanish from all contents that use it.';
	String get unfollowConfirm => 'Are you sure you want to unfollow {name}?';
	String get exportRequested => 'You\'ve requested an export. This may take a while. It will be added to your Drive once completed.';
	String get importRequested => 'You\'ve requested an import. This may take a while.';
	String get lists => 'Lists';
	String get noLists => 'You don\'t have any lists';
	String get note => 'Note';
	String get notes => 'Notes';
	String get following => 'Following';
	String get followers => 'Followers';
	String get followsYou => 'Follows you';
	String get createList => 'Create list';
	String get manageLists => 'Manage lists';
	String get error => 'Error';
	String get somethingHappened => 'An error has occurred';
	String get retry => 'Retry';
	String get pageLoadError => 'An error occurred while loading the page.';
	String get pageLoadErrorDescription => 'This is normally caused by network errors or the browser\'s cache. Try clearing the cache and then try again after waiting a little while.';
	String get serverIsDead => 'This server is not responding. Please wait for a while and try again.';
	String get youShouldUpgradeClient => 'To view this page, please refresh to update your client.';
	String get enterListName => 'Enter a name for the list';
	String get privacy => 'Privacy';
	String get makeFollowManuallyApprove => 'Follow requests require approval';
	String get defaultNoteVisibility => 'Default visibility';
	String get follow => 'Follow';
	String get followRequest => 'Send follow request';
	String get followRequests => 'Follow requests';
	String get unfollow => 'Unfollow';
	String get followRequestPending => 'Follow request pending';
	String get enterEmoji => 'Enter an emoji';
	String get renote => 'Renote';
	String get unrenote => 'Take back renote';
	String get renoted => 'Renoted.';
	String get cantRenote => 'This post can\'t be renoted.';
	String get cantReRenote => 'A renote can\'t be renoted.';
	String get quote => 'Quote';
	String get inChannelRenote => 'Channel-only Renote';
	String get inChannelQuote => 'Channel-only Quote';
	String get pinnedNote => 'Pinned note';
	String get pinned => 'Pin to profile';
	String get you => 'You';
	String get clickToShow => 'Click to show';
	String get sensitive => 'NSFW';
	String get add => 'Add';
	String get reaction => 'Reactions';
	String get reactions => 'Reactions';
	String get reactionSetting => 'Reactions to show in the reaction picker';
	String get reactionSettingDescription2 => 'Drag to reorder, click to delete, press "+" to add.';
	String get rememberNoteVisibility => 'Remember note visibility settings';
	String get attachCancel => 'Remove attachment';
	String get markAsSensitive => 'Mark as NSFW';
	String get unmarkAsSensitive => 'Unmark as NSFW';
	String get enterFileName => 'Enter filename';
	String get mute => 'Mute';
	String get unmute => 'Unmute';
	String get renoteMute => 'Mute Renotes';
	String get renoteUnmute => 'Unmute Renotes';
	String get block => 'Block';
	String get unblock => 'Unblock';
	String get suspend => 'Suspend';
	String get unsuspend => 'Unsuspend';
	String get blockConfirm => 'Are you sure that you want to block this account?';
	String get unblockConfirm => 'Are you sure that you want to unblock this account?';
	String get suspendConfirm => 'Are you sure that you want to suspend this account?';
	String get unsuspendConfirm => 'Are you sure that you want to unsuspend this account?';
	String get selectList => 'Select a list';
	String get selectChannel => 'Select a channel';
	String get selectAntenna => 'Select an antenna';
	String get selectWidget => 'Select a widget';
	String get editWidgets => 'Edit widgets';
	String get editWidgetsExit => 'Done';
	String get customEmojis => 'Custom Emoji';
	String get emoji => 'Emoji';
	String get emojis => 'Emoji';
	String get emojiName => 'Emoji name';
	String get emojiUrl => 'Emoji URL';
	String get addEmoji => 'Add an emoji';
	String get settingGuide => 'Recommended settings';
	String get cacheRemoteFiles => 'Cache remote files';
	String get cacheRemoteFilesDescription => 'When this setting is disabled, remote files are loaded directly from the remote instance. Disabling this will decrease storage usage, but increase traffic, as thumbnails will not be generated.';
	String get flagAsBot => 'Mark this account as a bot';
	String get flagAsBotDescription => 'Enable this option if this account is controlled by a program. If enabled, it will act as a flag for other developers to prevent endless interaction chains with other bots and adjust Misskey\'s internal systems to treat this account as a bot.';
	String get flagAsCat => 'Mark this account as a cat';
	String get flagAsCatDescription => 'Enable this option to mark this account as a cat.';
	String get flagShowTimelineReplies => 'Show replies in timeline';
	String get flagShowTimelineRepliesDescription => 'Shows replies of users to notes of other users in the timeline if turned on.';
	String get autoAcceptFollowed => 'Automatically approve follow requests from users you\'re following';
	String get addAccount => 'Add account';
	String get reloadAccountsList => 'Reload account list';
	String get loginFailed => 'Failed to sign in';
	String get showOnRemote => 'View on remote instance';
	String get general => 'General';
	String get wallpaper => 'Wallpaper';
	String get setWallpaper => 'Set wallpaper';
	String get removeWallpaper => 'Remove wallpaper';
	String get searchWith => 'Search: {q}';
	String get youHaveNoLists => 'You don\'t have any lists';
	String get followConfirm => 'Are you sure that you want to follow {name}?';
	String get proxyAccount => 'Proxy account';
	String get proxyAccountDescription => 'A proxy account is an account that acts as a remote follower for users under certain conditions. For example, when a user adds a remote user to the list, the remote user\'s activity will not be delivered to the instance if no local user is following that user, so the proxy account will follow instead.';
	String get host => 'Host';
	String get selectUser => 'Select a user';
	String get recipient => 'Recipient';
	String get annotation => 'Comments';
	String get federation => 'Federation';
	String get instances => 'Instances';
	String get registeredAt => 'Registered at';
	String get latestRequestReceivedAt => 'Last request received';
	String get latestStatus => 'Latest status';
	String get storageUsage => 'Storage usage';
	String get charts => 'Charts';
	String get perHour => 'Per Hour';
	String get perDay => 'Per Day';
	String get stopActivityDelivery => 'Stop sending activities';
	String get blockThisInstance => 'Block this instance';
	String get operations => 'Operations';
	String get software => 'Software';
	String get version => 'Version';
	String get metadata => 'Metadata';
	String get withNFiles => '{n} file(s)';
	String get monitor => 'Monitor';
	String get jobQueue => 'Job Queue';
	String get cpuAndMemory => 'CPU and Memory';
	String get network => 'Network';
	String get disk => 'Disk';
	String get instanceInfo => 'Instance Information';
	String get statistics => 'Statistics';
	String get clearQueue => 'Clear queue';
	String get clearQueueConfirmTitle => 'Are you sure that you want to clear the queue?';
	String get clearQueueConfirmText => 'Any undelivered notes remaining in the queue will not be federated. Usually this operation is not needed.';
	String get clearCachedFiles => 'Clear cache';
	String get clearCachedFilesConfirm => 'Are you sure that you want to delete all cached remote files?';
	String get blockedInstances => 'Blocked Instances';
	String get blockedInstancesDescription => 'List the hostnames of the instances that you want to block separated by linebreaks. Listed instances will no longer be able to communicate with this instance.';
	String get muteAndBlock => 'Mutes and Blocks';
	String get mutedUsers => 'Muted users';
	String get blockedUsers => 'Blocked users';
	String get noUsers => 'There are no users';
	String get editProfile => 'Edit profile';
	String get noteDeleteConfirm => 'Are you sure you want to delete this note?';
	String get pinLimitExceeded => 'You cannot pin any more notes';
	String get intro => 'Installation of Misskey has been finished! Please create an admin user.';
	String get done => 'Done';
	String get processing => 'Processing...';
	String get preview => 'Preview';
	String get default_ => 'Default';
	String get defaultValueIs => 'Default: {value}';
	String get noCustomEmojis => 'There are no emoji';
	String get noJobs => 'There are no jobs';
	String get federating => 'Federating';
	String get blocked => 'Blocked';
	String get suspended => 'Suspended';
	String get all => 'All';
	String get subscribing => 'Subscribing';
	String get publishing => 'Publishing';
	String get notResponding => 'Not responding';
	String get instanceFollowing => 'Following on instance';
	String get instanceFollowers => 'Instance followers';
	String get instanceUsers => 'Users of this instance';
	String get changePassword => 'Change password';
	String get security => 'Security';
	String get retypedNotMatch => 'The inputs do not match.';
	String get currentPassword => 'Current password';
	String get newPassword => 'New password';
	String get newPasswordRetype => 'Retype new password';
	String get attachFile => 'Attach files';
	String get more => 'More!';
	String get featured => 'Featured';
	String get usernameOrUserId => 'Username or user id';
	String get noSuchUser => 'User not found';
	String get lookup => 'Lookup';
	String get announcements => 'Announcements';
	String get imageUrl => 'Image URL';
	String get remove => 'Delete';
	String get removed => 'Successfully deleted';
	String get removeAreYouSure => 'Are you sure that you want to remove "{x}"?';
	String get deleteAreYouSure => 'Are you sure that you want to delete "{x}"?';
	String get resetAreYouSure => 'Really reset?';
	String get saved => 'Saved';
	String get messaging => 'Chat';
	String get upload => 'Upload';
	String get keepOriginalUploading => 'Keep original image';
	String get keepOriginalUploadingDescription => 'Saves the originally uploaded image as-is. If turned off, a version to display on the web will be generated on upload.';
	String get fromDrive => 'From Drive';
	String get fromUrl => 'From URL';
	String get uploadFromUrl => 'Upload from a URL';
	String get uploadFromUrlDescription => 'URL of the file you want to upload';
	String get uploadFromUrlRequested => 'Upload requested';
	String get uploadFromUrlMayTakeTime => 'It may take some time until the upload is complete.';
	String get explore => 'Explore';
	String get messageRead => 'Read';
	String get noMoreHistory => 'There is no further history';
	String get startMessaging => 'Start a new chat';
	String get nUsersRead => 'read by {n}';
	String get agreeTo => 'I agree to {x}';
	String get agree => 'Agree';
	String get agreeBelow => 'I agree to the below';
	String get basicNotesBeforeCreateAccount => 'Important notes';
	String get termsOfService => 'Terms of Service';
	String get start => 'Begin';
	String get home => 'Home';
	String get remoteUserCaution => 'As this user is from a remote instance, the shown information may be incomplete.';
	String get activity => 'Activity';
	String get images => 'Images';
	String get image => 'Image';
	String get birthday => 'Birthday';
	String get yearsOld => '{age} years old';
	String get registeredDate => 'Joined on';
	String get location => 'Location';
	String get theme => 'Themes';
	String get themeForLightMode => 'Theme to use in Light Mode';
	String get themeForDarkMode => 'Theme to use in Dark Mode';
	String get light => 'Light';
	String get dark => 'Dark';
	String get lightThemes => 'Light themes';
	String get darkThemes => 'Dark themes';
	String get syncDeviceDarkMode => 'Sync Dark Mode with your device settings';
	String get drive => 'Drive';
	String get fileName => 'Filename';
	String get selectFile => 'Select a file';
	String get selectFiles => 'Select files';
	String get selectFolder => 'Select a folder';
	String get selectFolders => 'Select folders';
	String get renameFile => 'Rename file';
	String get folderName => 'Folder name';
	String get createFolder => 'Create a folder';
	String get renameFolder => 'Rename this folder';
	String get deleteFolder => 'Delete this folder';
	String get addFile => 'Add a file';
	String get emptyDrive => 'Your Drive is empty';
	String get emptyFolder => 'This folder is empty';
	String get unableToDelete => 'Unable to delete';
	String get inputNewFileName => 'Enter a new filename';
	String get inputNewDescription => 'Enter new caption';
	String get inputNewFolderName => 'Enter a new folder name';
	String get circularReferenceFolder => 'The destination folder is a subfolder of the folder you wish to move.';
	String get hasChildFilesOrFolders => 'Since this folder is not empty, it can not be deleted.';
	String get copyUrl => 'Copy URL';
	String get rename => 'Rename';
	String get avatar => 'Avatar';
	String get banner => 'Banner';
	String get nsfw => 'NSFW';
	String get whenServerDisconnected => 'When losing connection to the server';
	String get disconnectedFromServer => 'Connection to server has been lost';
	String get reload => 'Refresh';
	String get doNothing => 'Ignore';
	String get reloadConfirm => 'Would you like to refresh the timeline?';
	String get watch => 'Watch';
	String get unwatch => 'Stop watching';
	String get accept => 'Accept';
	String get reject => 'Reject';
	String get normal => 'Normal';
	String get instanceName => 'Instance name';
	String get instanceDescription => 'Instance description';
	String get maintainerName => 'Maintainer';
	String get maintainerEmail => 'Maintainer email';
	String get tosUrl => 'Terms of Service URL';
	String get thisYear => 'Year';
	String get thisMonth => 'Month';
	String get today => 'Today';
	String get dayX => '{day}';
	String get monthX => '{month}';
	String get yearX => '{year}';
	String get pages => 'Pages';
	String get integration => 'Integration';
	String get connectService => 'Connect';
	String get disconnectService => 'Disconnect';
	String get enableLocalTimeline => 'Enable local timeline';
	String get enableGlobalTimeline => 'Enable global timeline';
	String get disablingTimelinesInfo => 'Adminstrators and Moderators will always have access to all timelines, even if they are not enabled.';
	String get registration => 'Register';
	String get enableRegistration => 'Enable new user registration';
	String get invite => 'Invite';
	String get driveCapacityPerLocalAccount => 'Drive capacity per local user';
	String get driveCapacityPerRemoteAccount => 'Drive capacity per remote user';
	String get inMb => 'In megabytes';
	String get iconUrl => 'Icon URL';
	String get bannerUrl => 'Banner image URL';
	String get backgroundImageUrl => 'Background image URL';
	String get basicInfo => 'Basic info';
	String get pinnedUsers => 'Pinned users';
	String get pinnedUsersDescription => 'List usernames separated by line breaks to be pinned in the "Explore" tab.';
	String get pinnedPages => 'Pinned Pages';
	String get pinnedPagesDescription => 'Enter the paths of the Pages you want to pin to the top page of this instance, separated by line breaks.';
	String get pinnedClipId => 'ID of the clip to pin';
	String get pinnedNotes => 'Pinned notes';
	String get hcaptcha => 'hCaptcha';
	String get enableHcaptcha => 'Enable hCaptcha';
	String get hcaptchaSiteKey => 'Site key';
	String get hcaptchaSecretKey => 'Secret key';
	String get recaptcha => 'reCAPTCHA';
	String get enableRecaptcha => 'Enable reCAPTCHA';
	String get recaptchaSiteKey => 'Site key';
	String get recaptchaSecretKey => 'Secret key';
	String get turnstile => 'Turnstile';
	String get enableTurnstile => 'Enable Turnstile';
	String get turnstileSiteKey => 'Site key';
	String get turnstileSecretKey => 'Secret key';
	String get avoidMultiCaptchaConfirm => 'Using multiple Captcha systems may cause interference between them. Would you like to disable the other Captcha systems currently active? If you would like them to stay enabled, press cancel.';
	String get antennas => 'Antennas';
	String get manageAntennas => 'Manage Antennas';
	String get name => 'Name';
	String get antennaSource => 'Antenna source';
	String get antennaKeywords => 'Keywords to listen to';
	String get antennaExcludeKeywords => 'Keywords to exclude';
	String get antennaKeywordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
	String get notifyAntenna => 'Notify about new notes';
	String get withFileAntenna => 'Only notes with files';
	String get enableServiceworker => 'Enable Push-Notifications for your Browser';
	String get antennaUsersDescription => 'List one username per line';
	String get caseSensitive => 'Case sensitive';
	String get withReplies => 'Include replies';
	String get connectedTo => 'Following account(s) are connected';
	String get notesAndReplies => 'Notes and replies';
	String get withFiles => 'Including files';
	String get silence => 'Silence';
	String get silenceConfirm => 'Are you sure that you want to silence this user?';
	String get unsilence => 'Undo silencing';
	String get unsilenceConfirm => 'Are you sure that you want to undo the silencing of this user?';
	String get popularUsers => 'Popular users';
	String get recentlyUpdatedUsers => 'Recently active users';
	String get recentlyRegisteredUsers => 'Newly joined users';
	String get recentlyDiscoveredUsers => 'Newly discovered users';
	String get exploreUsersCount => 'There are {count} users';
	String get exploreFediverse => 'Explore the Fediverse';
	String get popularTags => 'Popular tags';
	String get userList => 'Lists';
	String get about => 'About';
	String get aboutMisskey => 'About Misskey';
	String get administrator => 'Administrator';
	String get token => 'Token';
	String get twofa => 'Two-factor authentication';
	String get totp => 'Authenticator App';
	String get totpDescription => 'Use an authenticator app to enter one-time passwords';
	String get moderator => 'Moderator';
	String get moderation => 'Moderation';
	String get nUsersMentioned => 'Mentioned by {n} users';
	String get securityKeyAndPasskey => 'Security- and passkeys';
	String get securityKey => 'Security key';
	String get lastUsed => 'Last used';
	String get lastUsedAt => 'Last used: {t}';
	String get unregister => 'Unregister';
	String get passwordLessLogin => 'Password-less login';
	String get passwordLessLoginDescription => 'Allows password-less login using a security- or passkey only';
	String get resetPassword => 'Reset password';
	String get newPasswordIs => 'The new password is "{password}"';
	String get reduceUiAnimation => 'Reduce UI animations';
	String get share => 'Share';
	String get notFound => 'Not found';
	String get notFoundDescription => 'No page corresponding to this URL could be found.';
	String get uploadFolder => 'Default folder for uploads';
	String get cacheClear => 'Clear cache';
	String get markAsReadAllNotifications => 'Mark all notifications as read';
	String get markAsReadAllUnreadNotes => 'Mark all notes as read';
	String get markAsReadAllTalkMessages => 'Mark all messages as read';
	String get help => 'Help';
	String get inputMessageHere => 'Enter message here';
	String get close => 'Close';
	String get invites => 'Invites';
	String get members => 'Members';
	String get transfer => 'Transfer';
	String get title => 'Title';
	String get text => 'Text';
	String get enable => 'Enable';
	String get next => 'Next';
	String get retype => 'Enter again';
	String get noteOf => 'Note by {user}';
	String get quoteAttached => 'Quote';
	String get quoteQuestion => 'Append as quote?';
	String get noMessagesYet => 'No messages yet';
	String get newMessageExists => 'There are new messages';
	String get onlyOneFileCanBeAttached => 'You can only attach one file to a message';
	String get signinRequired => 'Please register or sign in before continuing';
	String get invitations => 'Invites';
	String get invitationCode => 'Invitation code';
	String get checking => 'Checking...';
	String get available => 'Available';
	String get unavailable => 'Not available';
	String get usernameInvalidFormat => 'You can use upper- and lowercase letters, numbers, and underscores.';
	String get tooShort => 'Too short';
	String get tooLong => 'Too long';
	String get weakPassword => 'Weak password';
	String get normalPassword => 'Average password';
	String get strongPassword => 'Strong password';
	String get passwordMatched => 'Matches';
	String get passwordNotMatched => 'Does not match';
	String get signinWith => 'Sign in with {x}';
	String get signinFailed => 'Unable to sign in. The entered username or password is incorrect.';
	String get or => 'Or';
	String get language => 'Language';
	String get uiLanguage => 'User interface language';
	String get aboutX => 'About {x}';
	String get emojiStyle => 'Emoji style';
	String get native => 'Native';
	String get disableDrawer => 'Don\'t use drawer-style menus';
	String get showNoteActionsOnlyHover => 'Only show note actions on hover';
	String get noHistory => 'No history available';
	String get signinHistory => 'Login history';
	String get enableAdvancedMfm => 'Enable advanced MFM';
	String get enableAnimatedMfm => 'Enable animated MFM';
	String get doing => 'Processing...';
	String get category => 'Category';
	String get tags => 'Aliases';
	String get docSource => 'Source of this document';
	String get createAccount => 'Create account';
	String get existingAccount => 'Existing account';
	String get regenerate => 'Regenerate';
	String get fontSize => 'Font size';
	String get mediaListWithOneImageAppearance => 'Height of media lists with one image only';
	String get limitTo => 'Limit to {x}';
	String get noFollowRequests => 'You don\'t have any pending follow requests';
	String get openImageInNewTab => 'Open images in new tab';
	String get dashboard => 'Dashboard';
	String get local => 'Local';
	String get remote => 'Remote';
	String get total => 'Total';
	String get weekOverWeekChanges => 'Changes to last week';
	String get dayOverDayChanges => 'Changes to yesterday';
	String get appearance => 'Appearance';
	String get clientSettings => 'Client Settings';
	String get accountSettings => 'Account Settings';
	String get promotion => 'Promoted';
	String get promote => 'Promote';
	String get numberOfDays => 'Number of days';
	String get hideThisNote => 'Hide this note';
	String get showFeaturedNotesInTimeline => 'Show featured notes in timelines';
	String get objectStorage => 'Object Storage';
	String get useObjectStorage => 'Use object storage';
	String get objectStorageBaseUrl => 'Base URL';
	String get objectStorageBaseUrlDesc => 'The URL used as reference. Specify the URL of your CDN or Proxy if you are using either.\nFor S3 use \'https://<bucket>.s3.amazonaws.com\' and for GCS or equivalent services use \'https://storage.googleapis.com/<bucket>\', etc.';
	String get objectStorageBucket => 'Bucket';
	String get objectStorageBucketDesc => 'Please specify the bucket name used at your provider.';
	String get objectStoragePrefix => 'Prefix';
	String get objectStoragePrefixDesc => 'Files will be stored under directories with this prefix.';
	String get objectStorageEndpoint => 'Endpoint';
	String get objectStorageEndpointDesc => 'Leave this empty if you are using AWS S3, otherwise specify the endpoint as \'<host>\' or \'<host>:<port>\', depending on the service you are using.';
	String get objectStorageRegion => 'Region';
	String get objectStorageRegionDesc => 'Specify a region like \'xx-east-1\'. If your service does not distinguish between regions, enter \'us-east-1\'. Leave empty if using AWS configuration files or environment variables.';
	String get objectStorageUseSSL => 'Use SSL';
	String get objectStorageUseSSLDesc => 'Turn this off if you are not going to use HTTPS for API connections';
	String get objectStorageUseProxy => 'Connect over Proxy';
	String get objectStorageUseProxyDesc => 'Turn this off if you are not going to use a Proxy for API connections';
	String get objectStorageSetPublicRead => 'Set "public-read" on upload';
	String get s3ForcePathStyleDesc => 'If s3ForcePathStyle is enabled, the bucket name has to included in the path of the URL as opposed to the hostname of the URL. You may need to enable this setting when using services such as a self-hosted Minio instance.';
	String get serverLogs => 'Server logs';
	String get deleteAll => 'Delete all';
	String get showFixedPostForm => 'Display the posting form at the top of the timeline';
	String get showFixedPostFormInChannel => 'Display the posting form at the top of the timeline (Channels)';
	String get newNoteRecived => 'There are new notes';
	String get sounds => 'Sounds';
	String get sound => 'Sounds';
	String get listen => 'Listen';
	String get none => 'None';
	String get showInPage => 'Show in page';
	String get popout => 'Pop-out';
	String get volume => 'Volume';
	String get masterVolume => 'Master volume';
	String get details => 'Details';
	String get chooseEmoji => 'Select an emoji';
	String get unableToProcess => 'The operation could not be completed';
	String get recentUsed => 'Recently used';
	String get install => 'Install';
	String get uninstall => 'Uninstall';
	String get installedApps => 'Authorized Applications';
	String get nothing => 'There\'s nothing to see here';
	String get installedDate => 'Authorized at';
	String get lastUsedDate => 'Last used at';
	String get state => 'State';
	String get sort => 'Sorting order';
	String get ascendingOrder => 'Ascending';
	String get descendingOrder => 'Descending';
	String get scratchpad => 'Scratchpad';
	String get scratchpadDescription => 'The Scratchpad provides an environment for AiScript experiments. You can write, execute, and check the results of it interacting with Misskey in it.';
	String get output => 'Output';
	String get script => 'Script';
	String get disablePagesScript => 'Disable AiScript on Pages';
	String get updateRemoteUser => 'Update remote user information';
	String get deleteAllFiles => 'Delete all files';
	String get deleteAllFilesConfirm => 'Are you sure that you want to delete all files?';
	String get removeAllFollowing => 'Unfollow all followed users';
	String get removeAllFollowingDescription => 'Executing this unfollows all accounts from {host}. Please run this if the instance e.g. no longer exists.';
	String get userSuspended => 'This user has been suspended.';
	String get userSilenced => 'This user is being silenced.';
	String get yourAccountSuspendedTitle => 'This account is suspended';
	String get yourAccountSuspendedDescription => 'This account has been suspended due to breaking the server\'s terms of services or similar. Contact the administrator if you would like to know a more detailed reason. Please do not create a new account.';
	String get tokenRevoked => 'Invalid token';
	String get tokenRevokedDescription => 'This token has expired. Please log in again.';
	String get accountDeleted => 'Account deleted';
	String get accountDeletedDescription => 'This account has been deleted.';
	String get menu => 'Menu';
	String get divider => 'Divider';
	String get addItem => 'Add Item';
	String get rearrange => 'Rearrange';
	String get relays => 'Relays';
	String get addRelay => 'Add Relay';
	String get inboxUrl => 'Inbox URL';
	String get addedRelays => 'Added Relays';
	String get serviceworkerInfo => 'Must be enabled for push notifications.';
	String get deletedNote => 'Deleted note';
	String get invisibleNote => 'Invisible note';
	String get enableInfiniteScroll => 'Automatically load more';
	String get visibility => 'Visiblility';
	String get poll => 'Poll';
	String get useCw => 'Hide content';
	String get enablePlayer => 'Open video player';
	String get disablePlayer => 'Close video player';
	String get expandTweet => 'Expand tweet';
	String get themeEditor => 'Theme editor';
	String get description => 'Description';
	String get describeFile => 'Add caption';
	String get enterFileDescription => 'Enter caption';
	String get author => 'Author';
	String get leaveConfirm => 'There are unsaved changes. Do you want to discard them?';
	String get manage => 'Management';
	String get plugins => 'Plugins';
	String get preferencesBackups => 'Preference backups';
	String get deck => 'Deck';
	String get undeck => 'Leave Deck';
	String get useBlurEffectForModal => 'Use blur effect for modals';
	String get useFullReactionPicker => 'Use full-size reaction picker';
	String get width => 'Width';
	String get height => 'Height';
	String get large => 'Big';
	String get medium => 'Medium';
	String get small => 'Small';
	String get generateAccessToken => 'Generate access token';
	String get permission => 'Permissions';
	String get enableAll => 'Enable all';
	String get disableAll => 'Disable all';
	String get tokenRequested => 'Grant access to account';
	String get pluginTokenRequestedDescription => 'This plugin will be able to use the permissions set here.';
	String get notificationType => 'Notification type';
	String get edit => 'Edit';
	String get emailServer => 'Email server';
	String get enableEmail => 'Enable email distribution';
	String get emailConfigInfo => 'Used to confirm your email during sign-up or if you forget your password';
	String get email => 'Email';
	String get emailAddress => 'Email address';
	String get smtpConfig => 'SMTP Server Configuration';
	String get smtpHost => 'Host';
	String get smtpPort => 'Port';
	String get smtpUser => 'Username';
	String get smtpPass => 'Password';
	String get emptyToDisableSmtpAuth => 'Leave username and password empty to disable SMTP verification';
	String get smtpSecure => 'Use implicit SSL/TLS for SMTP connections';
	String get smtpSecureInfo => 'Turn this off when using STARTTLS';
	String get testEmail => 'Test email delivery';
	String get wordMute => 'Word mute';
	String get regexpError => 'Regular Expression error';
	String get regexpErrorDescription => 'An error occurred in the regular expression on line {line} of your {tab} word mutes:';
	String get instanceMute => 'Instance Mutes';
	String get userSaysSomething => '{name} said something';
	String get makeActive => 'Activate';
	String get display => 'Display';
	String get copy => 'Copy';
	String get metrics => 'Metrics';
	String get overview => 'Overview';
	String get logs => 'Logs';
	String get delayed => 'Delayed';
	String get database => 'Database';
	String get channel => 'Channels';
	String get create => 'Create';
	String get notificationSetting => 'Notification settings';
	String get notificationSettingDesc => 'Select the types of notification to display.';
	String get useGlobalSetting => 'Use global settings';
	String get useGlobalSettingDesc => 'If turned on, your account\'s notification settings will be used. If turned off, individual configurations can be made.';
	String get other => 'Other';
	String get regenerateLoginToken => 'Regenerate login token';
	String get regenerateLoginTokenDescription => 'Regenerates the token used internally during login. Normally this action is not necessary. If regenerated, all devices will be logged out.';
	String get setMultipleBySeparatingWithSpace => 'Separate multiple entries with spaces.';
	String get fileIdOrUrl => 'File ID or URL';
	String get behavior => 'Behavior';
	String get sample => 'Sample';
	String get abuseReports => 'Reports';
	String get reportAbuse => 'Report';
	String get reportAbuseOf => 'Report {name}';
	String get fillAbuseReportDescription => 'Please fill in details regarding this report. If it is about a specific note, please include its URL.';
	String get abuseReported => 'Your report has been sent. Thank you very much.';
	String get reporter => 'Reporter';
	String get reporteeOrigin => 'Reportee Origin';
	String get reporterOrigin => 'Reporter Origin';
	String get forwardReport => 'Forward report to remote instance';
	String get forwardReportIsAnonymous => 'Instead of your account, an anonymous system account will be displayed as reporter at the remote instance.';
	String get send => 'Send';
	String get abuseMarkAsResolved => 'Mark report as resolved';
	String get openInNewTab => 'Open in new tab';
	String get openInSideView => 'Open in side view';
	String get defaultNavigationBehaviour => 'Default navigation behavior';
	String get editTheseSettingsMayBreakAccount => 'Editing these settings may damage your account.';
	String get instanceTicker => 'Instance information of notes';
	String get waitingFor => 'Waiting for {x}';
	String get random => 'Random';
	String get system => 'System';
	String get switchUi => 'Switch UI';
	String get desktop => 'Desktop';
	String get clip => 'Clip';
	String get createNew => 'Create new';
	String get optional => 'Optional';
	String get createNewClip => 'Create new clip';
	String get unclip => 'Unclip';
	String get confirmToUnclipAlreadyClippedNote => 'This note is already part of the "{name}" clip. Do you want to remove it from this clip instead?';
	String get public => 'Public';
	String get i18nInfo => 'Misskey is being translated into various languages by volunteers. You can help at {link}.';
	String get manageAccessTokens => 'Manage access tokens';
	String get accountInfo => 'Account Info';
	String get notesCount => 'Number of notes';
	String get repliesCount => 'Number of replies sent';
	String get renotesCount => 'Number of renotes sent';
	String get repliedCount => 'Number of replies received';
	String get renotedCount => 'Number of renotes received';
	String get followingCount => 'Number of followed accounts';
	String get followersCount => 'Number of followers';
	String get sentReactionsCount => 'Number of sent reactions';
	String get receivedReactionsCount => 'Number of received reactions';
	String get pollVotesCount => 'Number of sent poll votes';
	String get pollVotedCount => 'Number of received poll votes';
	String get yes => 'Yes';
	String get no => 'No';
	String get driveFilesCount => 'Number of Drive files';
	String get driveUsage => 'Drive space usage';
	String get noCrawle => 'Reject crawler indexing';
	String get noCrawleDescription => 'Ask search engines to not index your profile page, notes, Pages, etc.';
	String get lockedAccountInfo => 'Unless you set your note visiblity to "Followers only", your notes will be visible to anyone, even if you require followers to be manually approved.';
	String get alwaysMarkSensitive => 'Mark as NSFW by default';
	String get loadRawImages => 'Load original images instead of showing thumbnails';
	String get disableShowingAnimatedImages => 'Don\'t play animated images';
	String get verificationEmailSent => 'A verification email has been sent. Please follow the included link to complete verification.';
	String get notSet => 'Not set';
	String get emailVerified => 'Email has been verified';
	String get noteFavoritesCount => 'Number of favorite notes';
	String get pageLikesCount => 'Number of liked Pages';
	String get pageLikedCount => 'Number of received Page likes';
	String get contact => 'Contact';
	String get useSystemFont => 'Use the system\'s default font';
	String get clips => 'Clips';
	String get experimentalFeatures => 'Experimental features';
	String get experimental => 'Experimental';
	String get thisIsExperimentalFeature => 'This is an experimental feature. Its functionality is subject to change, and it may not operate as intended.';
	String get developer => 'Developer';
	String get makeExplorable => 'Make account visible in "Explore"';
	String get makeExplorableDescription => 'If you turn this off, your account will not show up in the "Explore" section.';
	String get showGapBetweenNotesInTimeline => 'Show a gap between posts on the timeline';
	String get duplicate => 'Duplicate';
	String get left => 'Left';
	String get center => 'Center';
	String get wide => 'Wide';
	String get narrow => 'Narrow';
	String get reloadToApplySetting => 'This setting will only apply after a page reload. Reload now?';
	String get needReloadToApply => 'A reload is required for this to be reflected.';
	String get showTitlebar => 'Show title bar';
	String get clearCache => 'Clear cache';
	String get onlineUsersCount => '{n} users are online';
	String get nUsers => '{n} Users';
	String get nNotes => '{n} Notes';
	String get sendErrorReports => 'Send error reports';
	String get sendErrorReportsDescription => 'When turned on, detailed error information will be shared with Misskey when a problem occurs, helping to improve the quality of Misskey.\nThis will include information such the version of your OS, what browser you\'re using, your activity in Misskey, etc.';
	String get myTheme => 'My theme';
	String get backgroundColor => 'Background color';
	String get accentColor => 'Accent color';
	String get textColor => 'Text color';
	String get saveAs => 'Save as...';
	String get advanced => 'Advanced';
	String get advancedSettings => 'Advanced settings';
	String get value => 'Value';
	String get createdAt => 'Created at';
	String get updatedAt => 'Updated at';
	String get saveConfirm => 'Save changes?';
	String get deleteConfirm => 'Really delete?';
	String get invalidValue => 'Invalid value.';
	String get registry => 'Registry';
	String get closeAccount => 'Close account';
	String get currentVersion => 'Current version';
	String get latestVersion => 'Newest version';
	String get youAreRunningUpToDateClient => 'You are using the newest version of your client.';
	String get newVersionOfClientAvailable => 'There is a newer version of your client available.';
	String get usageAmount => 'Usage';
	String get capacity => 'Capacity';
	String get inUse => 'Used';
	String get editCode => 'Edit code';
	String get apply => 'Apply';
	String get receiveAnnouncementFromInstance => 'Receive notifications from this instance';
	String get emailNotification => 'Email notifications';
	String get publish => 'Publish';
	String get inChannelSearch => 'Search in channel';
	String get useReactionPickerForContextMenu => 'Open reaction picker on right-click';
	String get typingUsers => '{users} is/are typing...';
	String get jumpToSpecifiedDate => 'Jump to specific date';
	String get showingPastTimeline => 'Currently displaying an old timeline';
	String get clear => 'Return';
	String get markAllAsRead => 'Mark all as read';
	String get goBack => 'Back';
	String get unlikeConfirm => 'Really remove your like?';
	String get fullView => 'Full view';
	String get quitFullView => 'Exit full view';
	String get addDescription => 'Add description';
	String get userPagePinTip => 'You can display notes here by selecting "Pin to profile" from the menu of individual notes.';
	String get notSpecifiedMentionWarning => 'This note contains mentions of users not included as recipients';
	String get info => 'About';
	String get userInfo => 'User information';
	String get unknown => 'Unknown';
	String get onlineStatus => 'Online status';
	String get hideOnlineStatus => 'Hide online status';
	String get hideOnlineStatusDescription => 'Hiding your online status reduces the convenience of some features such as the search.';
	String get online => 'Online';
	String get active => 'Active';
	String get offline => 'Offline';
	String get notRecommended => 'Not recommended';
	String get botProtection => 'Bot Protection';
	String get instanceBlocking => 'Blocked Instances';
	String get selectAccount => 'Select account';
	String get switchAccount => 'Switch account';
	String get enabled => 'Enabled';
	String get disabled => 'Disabled';
	String get quickAction => 'Quick actions';
	String get user => 'User';
	String get administration => 'Management';
	String get accounts => 'Accounts';
	String get switch_ => 'Switch';
	String get noMaintainerInformationWarning => 'Maintainer information is not configured.';
	String get noBotProtectionWarning => 'Bot protection is not configured.';
	String get configure => 'Configure';
	String get postToGallery => 'Create new gallery post';
	String get postToHashtag => 'Post to this hashtag';
	String get gallery => 'Gallery';
	String get recentPosts => 'Recent posts';
	String get popularPosts => 'Popular posts';
	String get shareWithNote => 'Share with note';
	String get ads => 'Advertisements';
	String get expiration => 'Deadline';
	String get startingperiod => 'Start';
	String get memo => 'Memo';
	String get priority => 'Priority';
	String get high => 'High';
	String get middle => 'Medium';
	String get low => 'Low';
	String get emailNotConfiguredWarning => 'Email address not set.';
	String get ratio => 'Ratio';
	String get previewNoteText => 'Show preview';
	String get customCss => 'Custom CSS';
	String get customCssWarn => 'This setting should only be used if you know what it does. Entering improper values may cause the client to stop functioning normally.';
	String get global => 'Global';
	String get squareAvatars => 'Display squared avatars';
	String get sent => 'Sent';
	String get received => 'Received';
	String get searchResult => 'Search results';
	String get hashtags => 'Hashtags';
	String get troubleshooting => 'Troubleshooting';
	String get useBlurEffect => 'Use blur effects in the UI';
	String get learnMore => 'Learn more';
	String get misskeyUpdated => 'Misskey has been updated!';
	String get whatIsNew => 'Show changes';
	String get translate => 'Translate';
	String get translatedFrom => 'Translated from {x}';
	String get accountDeletionInProgress => 'Account deletion is currently in progress';
	String get usernameInfo => 'A name that identifies your account from others on this server.  You can use the alphabet (a~z, A~Z), digits (0~9) or underscores (_). Usernames cannot be changed later.';
	String get aiChanMode => 'Ai Mode';
	String get devMode => 'Developer mode';
	String get keepCw => 'Keep content warnings';
	String get pubSub => 'Pub/Sub Accounts';
	String get lastCommunication => 'Last communication';
	String get resolved => 'Resolved';
	String get unresolved => 'Unresolved';
	String get breakFollow => 'Remove follower';
	String get breakFollowConfirm => 'Really remove this follower?';
	String get itsOn => 'Enabled';
	String get itsOff => 'Disabled';
	String get on => 'On';
	String get off => 'Off';
	String get emailRequiredForSignup => 'Require email address for sign-up';
	String get unread => 'Unread';
	String get filter => 'Filter';
	String get controlPanel => 'Control Panel';
	String get manageAccounts => 'Manage Accounts';
	String get makeReactionsPublic => 'Set reaction history to public';
	String get makeReactionsPublicDescription => 'This will make the list of all your past reactions publicly visible.';
	String get classic => 'Classic';
	String get muteThread => 'Mute thread';
	String get unmuteThread => 'Unmute thread';
	String get ffVisibility => 'Follows/Followers Visibility';
	String get ffVisibilityDescription => 'Allows you to configure who can see who you follow and who follows you.';
	String get continueThread => 'View thread continuation';
	String get deleteAccountConfirm => 'This will irreversibly delete your account. Proceed?';
	String get incorrectPassword => 'Incorrect password.';
	String get voteConfirm => 'Confirm your vote for "{choice}"?';
	String get hide => 'Hide';
	String get useDrawerReactionPickerForMobile => 'Display reaction picker as drawer on mobile';
	String get welcomeBackWithName => 'Welcome back, {name}';
	String get clickToFinishEmailVerification => 'Please click [{ok}] to complete email verification.';
	String get overridedDeviceKind => 'Device type';
	String get smartphone => 'Smartphone';
	String get tablet => 'Tablet';
	String get auto => 'Auto';
	String get themeColor => 'Instance Ticker Color';
	String get size => 'Size';
	String get numberOfColumn => 'Number of columns';
	String get searchByGoogle => 'Search';
	String get instanceDefaultLightTheme => 'Instance-wide default light theme';
	String get instanceDefaultDarkTheme => 'Instance-wide default dark theme';
	String get instanceDefaultThemeDescription => 'Enter the theme code in object format.';
	String get mutePeriod => 'Mute duration';
	String get period => 'Time limit';
	String get indefinitely => 'Permanently';
	String get tenMinutes => '10 minutes';
	String get oneHour => 'One hour';
	String get oneDay => 'One day';
	String get oneWeek => 'One week';
	String get oneMonth => 'One month';
	String get reflectMayTakeTime => 'It may take some time for this to be reflected.';
	String get failedToFetchAccountInformation => 'Could not fetch account information';
	String get rateLimitExceeded => 'Rate limit exceeded';
	String get cropImage => 'Crop image';
	String get cropImageAsk => 'Do you want to crop this image?';
	String get cropYes => 'Crop';
	String get cropNo => 'Use as-is';
	String get file => 'File';
	String get recentNHours => 'Last {n} hours';
	String get recentNDays => 'Last {n} days';
	String get noEmailServerWarning => 'Email server not configured.';
	String get thereIsUnresolvedAbuseReportWarning => 'There are unsolved reports.';
	String get recommended => 'Recommended';
	String get check => 'Check';
	String get driveCapOverrideLabel => 'Change the drive capacity for this user';
	String get driveCapOverrideCaption => 'Reset the capacity to default by inputting a value of 0 or lower.';
	String get requireAdminForView => 'You must log in with an administrator account to view this.';
	String get isSystemAccount => 'An account created and automatically operated by the system.';
	String get typeToConfirm => 'Please enter {x} to confirm';
	String get deleteAccount => 'Delete account';
	String get document => 'Documentation';
	String get numberOfPageCache => 'Number of cached pages';
	String get numberOfPageCacheDescription => 'Increasing this number will improve convenience for users but cause more server load as well as more memory to be used.';
	String get logoutConfirm => 'Really log out?';
	String get lastActiveDate => 'Last used at';
	String get statusbar => 'Status bar';
	String get pleaseSelect => 'Select an option';
	String get reverse => 'Reverse';
	String get colored => 'Colored';
	String get refreshInterval => 'Update interval ';
	String get label => 'Label';
	String get type => 'Type';
	String get speed => 'Speed';
	String get slow => 'Slow';
	String get fast => 'Fast';
	String get sensitiveMediaDetection => 'Detection of NSFW media';
	String get localOnly => 'Local only';
	String get remoteOnly => 'Remote only';
	String get failedToUpload => 'Upload failed';
	String get cannotUploadBecauseInappropriate => 'This file could not be uploaded because parts of it have been detected as potentially NSFW.';
	String get cannotUploadBecauseNoFreeSpace => 'Upload failed due to lack of Drive capacity.';
	String get cannotUploadBecauseExceedsFileSizeLimit => 'This file cannot be uploaded as it exceeds the file size limit.';
	String get beta => 'Beta';
	String get enableAutoSensitive => 'Automatic NSFW-Marking';
	String get enableAutoSensitiveDescription => 'Allows automatic detection and marking of NSFW media through Machine Learning where possible. Even if this option is disabled, it may be enabled instance-wide.';
	String get activeEmailValidationDescription => 'Enables stricter validation of email addresses, which includes checking for disposable addresses and by whether it can actually be communicated with. When unchecked, only the format of the email is validated.';
	String get navbar => 'Navigation bar';
	String get shuffle => 'Shuffle';
	String get account => 'Account';
	String get move => 'Move';
	String get pushNotification => 'Push notifications';
	String get subscribePushNotification => 'Enable push notifications';
	String get unsubscribePushNotification => 'Disable push notifications';
	String get pushNotificationAlreadySubscribed => 'Push notifications are already enabled';
	String get pushNotificationNotSupported => 'Your browser or instance does not support push notifications';
	String get sendPushNotificationReadMessage => 'Delete push notifications once they have been read';
	String get sendPushNotificationReadMessageCaption => 'This may increase the power consumption of your device.';
	String get windowMaximize => 'Maximize';
	String get windowMinimize => 'Minimize';
	String get windowRestore => 'Restore';
	String get caption => 'Caption';
	String get loggedInAsBot => 'Currently logged in as bot';
	String get tools => 'Tools';
	String get cannotLoad => 'Unable to load';
	String get numberOfProfileView => 'Profile views';
	String get like => 'Like';
	String get unlike => 'Unlike';
	String get numberOfLikes => 'Likes';
	String get show => 'Show';
	String get neverShow => 'Don\'t show again';
	String get remindMeLater => 'Maybe later';
	String get didYouLikeMisskey => 'Have you taken a liking to Misskey?';
	String get pleaseDonate => '{host} uses the free software, Misskey. We would highly appreciate your donations so development of Misskey can continue!';
	String get roles => 'Roles';
	String get role => 'Role';
	String get noRole => 'Role not found';
	String get normalUser => 'Normal user';
	String get undefined => 'Undefined';
	String get assign => 'Assign';
	String get unassign => 'Unassign';
	String get color => 'Color';
	String get manageCustomEmojis => 'Manage Custom Emojis';
	String get youCannotCreateAnymore => 'You\'ve hit the creation limit.';
	String get cannotPerformTemporary => 'Temporarily unavailable';
	String get cannotPerformTemporaryDescription => 'This action cannot be performed temporarily due to exceeding the execution limit. Please wait for a while and then try again.';
	String get invalidParamError => 'Invalid parameters';
	String get invalidParamErrorDescription => 'The request parameters are invalid. This is normally caused by a bug, but may also be due to inputs exceeding size limits or similar.';
	String get permissionDeniedError => 'Operation denied';
	String get permissionDeniedErrorDescription => 'This account does not have the permission to perform this action.';
	String get preset => 'Preset';
	String get selectFromPresets => 'Choose from presets';
	String get achievements => 'Achievements';
	String get gotInvalidResponseError => 'Invalid server response';
	String get gotInvalidResponseErrorDescription => 'The server may be unreachable or undergoing maintenance. Please try again later.';
	String get thisPostMayBeAnnoying => 'This note may annoy others.';
	String get thisPostMayBeAnnoyingHome => 'Post to home timeline';
	String get thisPostMayBeAnnoyingCancel => 'Cancel';
	String get thisPostMayBeAnnoyingIgnore => 'Post anyway';
	String get collapseRenotes => 'Collapse renotes you\'ve already seen';
	String get internalServerError => 'Internal Server Error';
	String get internalServerErrorDescription => 'The server has run into an unexpected error.';
	String get copyErrorInfo => 'Copy error details';
	String get joinThisServer => 'Sign up at this instance';
	String get exploreOtherServers => 'Look for another instance';
	String get letsLookAtTimeline => 'Have a look at the timeline';
	String get disableFederationConfirm => 'Really disable federation?';
	String get disableFederationConfirmWarn => 'Even if defederated, posts will continue to be public unless set otherwise. You usually do not need to do this.';
	String get disableFederationOk => 'Disable';
	String get invitationRequiredToRegister => 'This instance is invite-only. You must enter a valid invite code sign up.';
	String get emailNotSupported => 'This instance does not support sending emails';
	String get postToTheChannel => 'Post to channel';
	String get cannotBeChangedLater => 'This cannot be changed later.';
	String get reactionAcceptance => 'Reaction Acceptance';
	String get likeOnly => 'Only likes';
	String get likeOnlyForRemote => 'Only likes for remote instances';
	String get nonSensitiveOnly => 'Non-sensitive only';
	String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Non-sensitive only (Only likes from remote)';
	String get rolesAssignedToMe => 'Roles assigned to me';
	String get resetPasswordConfirm => 'Really reset your password?';
	String get sensitiveWords => 'Sensitive words';
	String get sensitiveWordsDescription => 'The visibility of all notes containing any of the configured words will be set to "Home" automatically. You can list multiple by separating them via line breaks.';
	String get sensitiveWordsDescription2 => 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.';
	String get notesSearchNotAvailable => 'Note search is unavailable.';
	String get license => 'License';
	String get unfavoriteConfirm => 'Really remove from favorites?';
	String get myClips => 'My clips';
	String get drivecleaner => 'Drive Cleaner';
	String get retryAllQueuesNow => 'Retry running all queues';
	String get retryAllQueuesConfirmTitle => 'Really retry all?';
	String get retryAllQueuesConfirmText => 'This will temporarily increase the server load.';
	String get enableChartsForRemoteUser => 'Generate remote user data charts';
	String get enableChartsForFederatedInstances => 'Generate remote instance data charts';
	String get showClipButtonInNoteFooter => 'Add "Clip" to note action menu';
	String get largeNoteReactions => 'Enlargen displayed reactions';
	String get noteIdOrUrl => 'Note ID or URL';
	String get video => 'Video';
	String get videos => 'Videos';
	String get dataSaver => 'Data Saver';
	String get accountMigration => 'Account Migration';
	String get accountMoved => 'This user has moved to a new account:';
	String get accountMovedShort => 'This account has been migrated.';
	String get operationForbidden => 'Operation forbidden';
	String get forceShowAds => 'Always show ads';
	String get addMemo => 'Add memo';
	String get editMemo => 'Edit memo';
	String get reactionsList => 'Reactions';
	String get renotesList => 'Renotes';
	String get notificationDisplay => 'Notifications';
	String get leftTop => 'Top left';
	String get rightTop => 'Top right';
	String get leftBottom => 'Bottom left';
	String get rightBottom => 'Bottom right';
	String get stackAxis => 'Stacking direction';
	String get vertical => 'Vertical';
	String get horizontal => 'Horizontal';
	String get position => 'Position';
	String get serverRules => 'Server rules';
	String get pleaseConfirmBelowBeforeSignup => 'Please confirm the below before signing up.';
	String get pleaseAgreeAllToContinue => 'You must agree to all above fields to continue.';
	String get continue_ => 'Continue';
	String get preservedUsernames => 'Reserved usernames';
	String get preservedUsernamesDescription => 'List usernames to reserve separated by linebreaks. These will become unable during normal account creation, but can be used by administrators to manually create accounts. Already existing accounts using these usernames will not be affected.';
	String get createNoteFromTheFile => 'Compose note from this file';
	String get archive => 'Archive';
	String get channelArchiveConfirmTitle => 'Really archive {name}?';
	String get channelArchiveConfirmDescription => 'An archived channel won\'t appear in the channel list or search results anymore. New posts can also not be added to it anymore.';
	String get thisChannelArchived => 'This channel has been archived.';
	String get displayOfNote => 'Note display';
	String get initialAccountSetting => 'Profile setup';
	String get youFollowing => 'Followed';
	String get preventAiLearning => 'Reject usage in Machine Learning (Generative AI)';
	String get preventAiLearningDescription => 'Requests crawlers to not use posted text or image material etc. in machine learning (Predictive / Generative AI) data sets. This is achieved by adding a "noai" HTML-Response flag to the respective content. A complete prevention can however not be achieved through this flag, as it may simply be ignored.';
	String get options => 'Options';
	String get specifyUser => 'Specific user';
	String get failedToPreviewUrl => 'Could not preview';
	String get update => 'Update';
	String get rolesThatCanBeUsedThisEmojiAsReaction => 'Roles that can use this emoji as reaction';
	String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'If no roles are specified, anyone can use this emoji as reaction.';
	String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'These roles must be public.';
	String get cancelReactionConfirm => 'Really delete your reaction?';
	String get changeReactionConfirm => 'Really change your reaction?';
	String get later => 'Later';
	String get goToMisskey => 'To Misskey';
	String get additionalEmojiDictionary => 'Additional emoji dictionaries';
	String get installed => 'Installed';
	late final _StringsInitialAccountSettingEnUs _initialAccountSetting = _StringsInitialAccountSettingEnUs._(_root);
	late final _StringsServerRulesEnUs _serverRules = _StringsServerRulesEnUs._(_root);
	late final _StringsAccountMigrationEnUs _accountMigration = _StringsAccountMigrationEnUs._(_root);
	late final _StringsAchievementsEnUs _achievements = _StringsAchievementsEnUs._(_root);
	late final _StringsRoleEnUs _role = _StringsRoleEnUs._(_root);
	late final _StringsSensitiveMediaDetectionEnUs _sensitiveMediaDetection = _StringsSensitiveMediaDetectionEnUs._(_root);
	late final _StringsEmailUnavailableEnUs _emailUnavailable = _StringsEmailUnavailableEnUs._(_root);
	late final _StringsFfVisibilityEnUs _ffVisibility = _StringsFfVisibilityEnUs._(_root);
	late final _StringsSignupEnUs _signup = _StringsSignupEnUs._(_root);
	late final _StringsAccountDeleteEnUs _accountDelete = _StringsAccountDeleteEnUs._(_root);
	late final _StringsAdEnUs _ad = _StringsAdEnUs._(_root);
	late final _StringsForgotPasswordEnUs _forgotPassword = _StringsForgotPasswordEnUs._(_root);
	late final _StringsGalleryEnUs _gallery = _StringsGalleryEnUs._(_root);
	late final _StringsEmailEnUs _email = _StringsEmailEnUs._(_root);
	late final _StringsPluginEnUs _plugin = _StringsPluginEnUs._(_root);
	late final _StringsPreferencesBackupsEnUs _preferencesBackups = _StringsPreferencesBackupsEnUs._(_root);
	late final _StringsRegistryEnUs _registry = _StringsRegistryEnUs._(_root);
	late final _StringsAboutMisskeyEnUs _aboutMisskey = _StringsAboutMisskeyEnUs._(_root);
	late final _StringsNsfwEnUs _nsfw = _StringsNsfwEnUs._(_root);
	late final _StringsInstanceTickerEnUs _instanceTicker = _StringsInstanceTickerEnUs._(_root);
	late final _StringsServerDisconnectedBehaviorEnUs _serverDisconnectedBehavior = _StringsServerDisconnectedBehaviorEnUs._(_root);
	late final _StringsChannelEnUs _channel = _StringsChannelEnUs._(_root);
	late final _StringsMenuDisplayEnUs _menuDisplay = _StringsMenuDisplayEnUs._(_root);
	late final _StringsWordMuteEnUs _wordMute = _StringsWordMuteEnUs._(_root);
	late final _StringsInstanceMuteEnUs _instanceMute = _StringsInstanceMuteEnUs._(_root);
	late final _StringsThemeEnUs _theme = _StringsThemeEnUs._(_root);
	late final _StringsSfxEnUs _sfx = _StringsSfxEnUs._(_root);
	late final _StringsAgoEnUs _ago = _StringsAgoEnUs._(_root);
	late final _StringsTimeEnUs _time = _StringsTimeEnUs._(_root);
	late final _StringsTimelineTutorialEnUs _timelineTutorial = _StringsTimelineTutorialEnUs._(_root);
	late final _Strings2faEnUs _2fa = _Strings2faEnUs._(_root);
	late final _StringsAuthEnUs _auth = _StringsAuthEnUs._(_root);
	late final _StringsAntennaSourcesEnUs _antennaSources = _StringsAntennaSourcesEnUs._(_root);
	late final _StringsWeekdayEnUs _weekday = _StringsWeekdayEnUs._(_root);
	late final _StringsWidgetsEnUs _widgets = _StringsWidgetsEnUs._(_root);
	late final _StringsCwEnUs _cw = _StringsCwEnUs._(_root);
	late final _StringsPollEnUs _poll = _StringsPollEnUs._(_root);
	late final _StringsVisibilityEnUs _visibility = _StringsVisibilityEnUs._(_root);
	late final _StringsPostFormEnUs _postForm = _StringsPostFormEnUs._(_root);
	late final _StringsProfileEnUs _profile = _StringsProfileEnUs._(_root);
	late final _StringsExportOrImportEnUs _exportOrImport = _StringsExportOrImportEnUs._(_root);
	late final _StringsChartsEnUs _charts = _StringsChartsEnUs._(_root);
	late final _StringsInstanceChartsEnUs _instanceCharts = _StringsInstanceChartsEnUs._(_root);
	late final _StringsTimelinesEnUs _timelines = _StringsTimelinesEnUs._(_root);
	late final _StringsPlayEnUs _play = _StringsPlayEnUs._(_root);
	late final _StringsPagesEnUs _pages = _StringsPagesEnUs._(_root);
	late final _StringsRelayStatusEnUs _relayStatus = _StringsRelayStatusEnUs._(_root);
	late final _StringsNotificationEnUs _notification = _StringsNotificationEnUs._(_root);
	late final _StringsDeckEnUs _deck = _StringsDeckEnUs._(_root);
	late final _StringsDialogEnUs _dialog = _StringsDialogEnUs._(_root);
	late final _StringsDisabledTimelineEnUs _disabledTimeline = _StringsDisabledTimelineEnUs._(_root);
	late final _StringsDrivecleanerEnUs _drivecleaner = _StringsDrivecleanerEnUs._(_root);
	late final _StringsWebhookSettingsEnUs _webhookSettings = _StringsWebhookSettingsEnUs._(_root);
}

// Path: _initialAccountSetting
class _StringsInitialAccountSettingEnUs {
	_StringsInitialAccountSettingEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get accountCreated => 'Your account was successfully created!';
	String get letsStartAccountSetup => 'For starters, let\'s set up your profile.';
	String get letsFillYourProfile => 'First, let\'s set up your profile.';
	String get profileSetting => 'Profile settings';
	String get privacySetting => 'Privacy settings';
	String get theseSettingsCanEditLater => 'You can always change these settings later.';
	String get youCanEditMoreSettingsInSettingsPageLater => 'There are many more settings you can configure from the "Settings" page. Be sure to visit it later.';
	String get followUsers => 'Try following some users that interest you to build up your timeline.';
	String get pushNotificationDescription => 'Enabling push notifications will allow you to receive notifications from {name} directly on your device.';
	String get initialAccountSettingCompleted => 'Profile setup complete!';
	String get haveFun => 'Enjoy {name}!';
	String get ifYouNeedLearnMore => 'If you\'d like to learn more about how to use {name} (Misskey), please visit {link}.';
	String get skipAreYouSure => 'Really skip profile setup?';
	String get laterAreYouSure => 'Really do profile setup later?';
}

// Path: _serverRules
class _StringsServerRulesEnUs {
	_StringsServerRulesEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get description => 'A set of rules to be displayed before registration. Setting a summary of the Terms of Service is recommended.';
}

// Path: _accountMigration
class _StringsAccountMigrationEnUs {
	_StringsAccountMigrationEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get moveFrom => 'Migrate another account to this one';
	String get moveFromSub => 'Create alias to another account';
	String get moveFromLabel => 'Original Account #{n}';
	String get moveFromDescription => 'You must create an alias for the account to move from on this account.\nEnter the account to migrate from in the following format: @username@server.example.com\nTo delete the alias, leave the field empty (not recommended).';
	String get moveTo => 'Migrate this account to a different one';
	String get moveToLabel => 'Account to move to:';
	String get moveCannotBeUndone => 'Account migration cannot be undone.';
	String get moveAccountDescription => 'This will migrate your account to a different one.\n　・Followers from this account will automatically be migrated to the new account\n　・This account will unfollow all users it is currently following\n　・You will be unable to create new notes etc. on this account\n\nWhile migration of followers is automatic, you must manually prepare some steps to migrate the list of users you are following. To do so, carry out a follows export that you will later import on the new account in the settings menu. The same procedure applies to your lists as well as your muted and blocked users.\n\n(This explanation applies to Misskey v13.12.0 and later. Other ActivityPub software, such as Mastodon, might function differently.)';
	String get moveAccountHowTo => 'To migrate, first create an alias for this account on the account to move to.\nAfter you have created the alias, enter the account to move to in the following format: @username@server.example.com';
	String get startMigration => 'Migrate';
	String get migrationConfirm => 'Really migrate this account to {account}? Once started, this process cannot be stopped or taken back, and you will not be able to use this account in its original state anymore.';
	String get movedAndCannotBeUndone => '\nThis account has been migrated.\nMigration cannot be reversed.';
	String get postMigrationNote => 'This account will unfollow all accounts it is currently following 24 hours after migration finishes.\nBoth the number of follows and followers will then become zero. To avoid your followers from being unable to see followers only posts of this account, they will however continue following this account.';
	String get movedTo => 'Account to move to:';
}

// Path: _achievements
class _StringsAchievementsEnUs {
	_StringsAchievementsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get earnedAt => 'Unlocked at';
	late final _StringsAchievementsTypesEnUs _types = _StringsAchievementsTypesEnUs._(_root);
}

// Path: _role
class _StringsRoleEnUs {
	_StringsRoleEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get new_ => 'New role';
	String get edit => 'Edit role';
	String get name => 'Role name';
	String get description => 'Role description';
	String get permission => 'Role permissions';
	String get descriptionOfPermission => '<b>Moderators</b> can perform basic moderation operations.\n<b>Administrators</b> can change all settings of the instance.';
	String get assignTarget => 'Assignment type';
	String get descriptionOfAssignTarget => '<b>Manual</b> to manually change who is part of this role and who is not.\n<b>Conditional</b> to have users be automatically assigned and removed from this role based on a condition.';
	String get manual => 'Manual';
	String get conditional => 'Conditional';
	String get condition => 'Condition';
	String get isConditionalRole => 'This is a conditional role.';
	String get isPublic => 'Public role';
	String get descriptionOfIsPublic => 'Anyone will be able to view a list of users assigned to this role. In addition, this role will be displayed in the profiles of assigned users.';
	String get options => 'Options';
	String get policies => 'Policies';
	String get baseRole => 'Role template';
	String get useBaseValue => 'Use role template value';
	String get chooseRoleToAssign => 'Select the role to assign';
	String get iconUrl => 'Icon URL';
	String get asBadge => 'Show as badge';
	String get descriptionOfAsBadge => 'This role\'s icon will be displayed next to the username of users with this role if turned on.';
	String get isExplorable => 'Role timeline is public';
	String get descriptionOfIsExplorable => 'This role\'s timeline will become publicly accessible if enabled. Timelines of non-public roles will not be made public even if set.';
	String get displayOrder => 'Position';
	String get descriptionOfDisplayOrder => 'The higher the number, the higher its UI position.';
	String get canEditMembersByModerator => 'Allow moderators to edit the list of members for this role';
	String get descriptionOfCanEditMembersByModerator => 'When turned on, moderators as well as administrators will be able to assign and unassign users to this role. When turned off, only administrators will be able to assign users.';
	String get priority => 'Priority';
	late final _StringsRolePriorityEnUs _priority = _StringsRolePriorityEnUs._(_root);
	late final _StringsRoleOptionsEnUs _options = _StringsRoleOptionsEnUs._(_root);
	late final _StringsRoleConditionEnUs _condition = _StringsRoleConditionEnUs._(_root);
}

// Path: _sensitiveMediaDetection
class _StringsSensitiveMediaDetectionEnUs {
	_StringsSensitiveMediaDetectionEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get description => 'Reduces the effort of server moderation through automatically recognizing NSFW media via Machine Learning. This will slightly increase the load on the server.';
	String get sensitivity => 'Detection sensitivity';
	String get sensitivityDescription => 'Reducing the sensitivity will lead to fewer misdetections (false positives) whereas increasing it will lead to fewer missed detections (false negatives).';
	String get setSensitiveFlagAutomatically => 'Mark as NSFW';
	String get setSensitiveFlagAutomaticallyDescription => 'The results of the internal detection will be retained even if this option is turned off.';
	String get analyzeVideos => 'Enable analysis of videos';
	String get analyzeVideosDescription => 'Analyzes videos in addition to images. This will slightly increase the load on the server.';
}

// Path: _emailUnavailable
class _StringsEmailUnavailableEnUs {
	_StringsEmailUnavailableEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get used => 'This email address is already being used';
	String get format => 'The format of this email address is invalid';
	String get disposable => 'Disposable email addresses may not be used';
	String get mx => 'This email server is invalid';
	String get smtp => 'This email server is not responding';
}

// Path: _ffVisibility
class _StringsFfVisibilityEnUs {
	_StringsFfVisibilityEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get public => 'Public';
	String get followers => 'Visible to followers only';
	String get private => 'Private';
}

// Path: _signup
class _StringsSignupEnUs {
	_StringsSignupEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get almostThere => 'Almost there';
	String get emailAddressInfo => 'Please enter your email address. It will not be made public.';
	String get emailSent => 'A confirmation email has been sent to your email address ({email}). Please click the included link to complete account creation.';
}

// Path: _accountDelete
class _StringsAccountDeleteEnUs {
	_StringsAccountDeleteEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get accountDelete => 'Delete account';
	String get mayTakeTime => 'As account deletion is a resource-heavy process, it may take some time to complete depending on how much content you have created and how many files you have uploaded.';
	String get sendEmail => 'Once account deletion has been completed, an email will be sent to the email address registered to this account.';
	String get requestAccountDelete => 'Request account deletion';
	String get started => 'Deletion has been started.';
	String get inProgress => 'Deletion is currently in progress';
}

// Path: _ad
class _StringsAdEnUs {
	_StringsAdEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get back => 'Back';
	String get reduceFrequencyOfThisAd => 'Show this ad less';
	String get hide => 'Hide';
}

// Path: _forgotPassword
class _StringsForgotPasswordEnUs {
	_StringsForgotPasswordEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get enterEmail => 'Enter the email address you used to register. A link with which you can reset your password will then be sent to it.';
	String get ifNoEmail => 'If you did not use an email during registration, please contact the instance administrator instead.';
	String get contactAdmin => 'This instance does not support using email addresses, please contact the instance administrator to reset your password instead.';
}

// Path: _gallery
class _StringsGalleryEnUs {
	_StringsGalleryEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get my => 'My Gallery';
	String get liked => 'Liked Posts';
	String get like => 'Like';
	String get unlike => 'Remove like';
}

// Path: _email
class _StringsEmailEnUs {
	_StringsEmailEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	late final _StringsEmailFollowEnUs _follow = _StringsEmailFollowEnUs._(_root);
	late final _StringsEmailReceiveFollowRequestEnUs _receiveFollowRequest = _StringsEmailReceiveFollowRequestEnUs._(_root);
}

// Path: _plugin
class _StringsPluginEnUs {
	_StringsPluginEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get install => 'Install plugins';
	String get installWarn => 'Please do not install untrustworthy plugins.';
	String get manage => 'Manage plugins';
}

// Path: _preferencesBackups
class _StringsPreferencesBackupsEnUs {
	_StringsPreferencesBackupsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get list => 'Created backups';
	String get saveNew => 'Save new backup';
	String get loadFile => 'Load from file';
	String get apply => 'Apply to this device';
	String get save => 'Save changes';
	String get inputName => 'Please enter a name for this backup';
	String get cannotSave => 'Saving failed';
	String get nameAlreadyExists => 'A backup called "{name}" already exists. Please enter a different name.';
	String get applyConfirm => 'Do you really want to apply the "{name}" backup to this device? Existing settings of this device will be overwritten.';
	String get saveConfirm => 'Save backup as {name}?';
	String get deleteConfirm => 'Delete the {name} backup?';
	String get renameConfirm => 'Rename this backup from "{old}" to "{new_}"?';
	String get noBackups => 'No backups exist. You may backup your client settings on this server by using "Create new backup".';
	String get createdAt => 'Created at: {date} {time}';
	String get updatedAt => 'Updated at: {date} {time}';
	String get cannotLoad => 'Loading failed';
	String get invalidFile => 'Invalid file format';
}

// Path: _registry
class _StringsRegistryEnUs {
	_StringsRegistryEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get scope => 'Scope';
	String get key => 'Key';
	String get keys => 'Keys';
	String get domain => 'Domain';
	String get createKey => 'Create key';
}

// Path: _aboutMisskey
class _StringsAboutMisskeyEnUs {
	_StringsAboutMisskeyEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get about => 'Misskey is open-source software being developed by syuilo since 2014.';
	String get contributors => 'Main contributors';
	String get allContributors => 'All contributors';
	String get source => 'Source code';
	String get translation => 'Translate Misskey';
	String get donate => 'Donate to Misskey';
	String get morePatrons => 'We also appreciate the support of many other helpers not listed here. Thank you! 🥰';
	String get patrons => 'Patrons';
}

// Path: _nsfw
class _StringsNsfwEnUs {
	_StringsNsfwEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get respect => 'Hide NSFW media';
	String get ignore => 'Don\'t hide NSFW media';
	String get force => 'Hide all media';
}

// Path: _instanceTicker
class _StringsInstanceTickerEnUs {
	_StringsInstanceTickerEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get none => 'Never show';
	String get remote => 'Show for remote users';
	String get always => 'Always show';
}

// Path: _serverDisconnectedBehavior
class _StringsServerDisconnectedBehaviorEnUs {
	_StringsServerDisconnectedBehaviorEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get reload => 'Automatically reload';
	String get dialog => 'Show warning dialog';
	String get quiet => 'Show unobtrusive warning';
}

// Path: _channel
class _StringsChannelEnUs {
	_StringsChannelEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get create => 'Create channel';
	String get edit => 'Edit channel';
	String get setBanner => 'Set banner';
	String get removeBanner => 'Remove banner';
	String get featured => 'Trending';
	String get owned => 'Owned';
	String get following => 'Followed';
	String get usersCount => '{n} Participants';
	String get notesCount => '{n} Notes';
	String get nameAndDescription => 'Name and description';
	String get nameOnly => 'Name only';
}

// Path: _menuDisplay
class _StringsMenuDisplayEnUs {
	_StringsMenuDisplayEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get sideFull => 'Side';
	String get sideIcon => 'Side (Icons)';
	String get top => 'Top';
	String get hide => 'Hide';
}

// Path: _wordMute
class _StringsWordMuteEnUs {
	_StringsWordMuteEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get muteWords => 'Muted words';
	String get muteWordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
	String get muteWordsDescription2 => 'Surround keywords with slashes to use regular expressions.';
	String get softDescription => 'Hide notes that fulfil the set conditions from the timeline.';
	String get hardDescription => 'Prevents notes fulfilling the set conditions from being added to the timeline. In addition, these notes will not be added to the timeline even if the conditions are changed.';
	String get soft => 'Soft';
	String get hard => 'Hard';
	String get mutedNotes => 'Muted notes';
}

// Path: _instanceMute
class _StringsInstanceMuteEnUs {
	_StringsInstanceMuteEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get instanceMuteDescription => 'This will mute any notes/renotes from the listed instances, including those of users replying to a user from a muted instance.';
	String get instanceMuteDescription2 => 'Separate with newlines';
	String get title => 'Hides notes from listed instances.';
	String get heading => 'List of instances to be muted';
}

// Path: _theme
class _StringsThemeEnUs {
	_StringsThemeEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get explore => 'Explore Themes';
	String get install => 'Install a theme';
	String get manage => 'Manage themes';
	String get code => 'Theme code';
	String get description => 'Description';
	String get installed => '{name} has been installed';
	String get installedThemes => 'Installed themes';
	String get builtinThemes => 'Built-in themes';
	String get alreadyInstalled => 'This theme is already installed';
	String get invalid => 'The format of this theme is invalid';
	String get make => 'Make a theme';
	String get base => 'Base';
	String get addConstant => 'Add constant';
	String get constant => 'Constant';
	String get defaultValue => 'Default value';
	String get color => 'Color';
	String get refProp => 'Reference a property';
	String get refConst => 'Reference a constant';
	String get key => 'Key';
	String get func => 'Functions';
	String get funcKind => 'Function type';
	String get argument => 'Argument';
	String get basedProp => 'Referenced property';
	String get alpha => 'Opacity';
	String get darken => 'Darken';
	String get lighten => 'Lighten';
	String get inputConstantName => 'Enter a name for this constant';
	String get importInfo => 'If you enter theme code here, you can import it to the theme editor';
	String get deleteConstantConfirm => 'Do you really want to delete the constant {const_}?';
	late final _StringsThemeKeysEnUs keys = _StringsThemeKeysEnUs._(_root);
}

// Path: _sfx
class _StringsSfxEnUs {
	_StringsSfxEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get note => 'New note';
	String get noteMy => 'Own note';
	String get notification => 'Notifications';
	String get chat => 'Chat';
	String get chatBg => 'Chat (Background)';
	String get antenna => 'Antennas';
	String get channel => 'Channel notifications';
}

// Path: _ago
class _StringsAgoEnUs {
	_StringsAgoEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get future => 'Future';
	String get justNow => 'Just now';
	String get secondsAgo => '{n}s ago';
	String get minutesAgo => '{n}m ago';
	String get hoursAgo => '{n}h ago';
	String get daysAgo => '{n}d ago';
	String get weeksAgo => '{n}w ago';
	String get monthsAgo => '{n}mo ago';
	String get yearsAgo => '{n}y ago';
	String get invalid => 'None';
}

// Path: _time
class _StringsTimeEnUs {
	_StringsTimeEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get second => 'Second(s)';
	String get minute => 'Minute(s)';
	String get hour => 'Hour(s)';
	String get day => 'Day(s)';
}

// Path: _timelineTutorial
class _StringsTimelineTutorialEnUs {
	_StringsTimelineTutorialEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'How to use Misskey';
	String get step1_1 => 'This is the "timeline". All "notes" submitted on {name} will be chronologically displayed here.';
	String get step1_2 => 'There are a few different timelines. For example, the "Home timeline" will contain notes of users you follow, and the "Local timeline" will contain notes from all users of {name}.';
	String get step2_1 => 'Let\'s try posting a note next. You can do so by pressing the button with a pencil icon.';
	String get step2_2 => 'How about writing a self-introduction, or just "Hello {name}!" if you don\'t feel like it?';
	String get step3_1 => 'Finished posting your first note?';
	String get step3_2 => 'Your first note should now be displayed on your timeline.';
	String get step4_1 => 'You can also attach "Reactions" to notes.';
	String get step4_2 => 'To attach a reaction, press the "+" mark on a note and choose an emoji you\'d like to react with.';
}

// Path: _2fa
class _Strings2faEnUs {
	_Strings2faEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get alreadyRegistered => 'You have already registered a 2-factor authentication device.';
	String get registerTOTP => 'Register authenticator app';
	String get passwordToTOTP => 'Enter your password';
	String get step1 => 'First, install an authentication app (such as {a} or {b}) on your device.';
	String get step2 => 'Then, scan the QR code displayed on this screen.';
	String get step2Click => 'Clicking on this QR code will allow you to register 2FA to your security key or phone authenticator app.';
	String get step2Url => 'You can also enter this URL if you\'re using a desktop program:';
	String get step3Title => 'Enter an authentication code';
	String get step3 => 'Enter the token provided by your app to finish setup.';
	String get step4 => 'From now on, any future login attempts will ask for such a login token.';
	String get securityKeyNotSupported => 'Your browser does not support security keys.';
	String get registerTOTPBeforeKey => 'Please set up an authenticator app to register a security or pass key.';
	String get securityKeyInfo => 'Besides fingerprint or PIN authentication, you can also setup authentication via hardware security keys that support FIDO2 to further secure your account.';
	String get chromePasskeyNotSupported => 'Chrome passkeys are currently not supported.';
	String get registerSecurityKey => 'Register a security or pass key';
	String get securityKeyName => 'Enter a key name';
	String get tapSecurityKey => 'Please follow your browser to register the security or pass key';
	String get removeKey => 'Remove security key';
	String get removeKeyConfirm => 'Really delete the {name} key?';
	String get whyTOTPOnlyRenew => 'The authenticator app cannot be removed as long as a security key is registered.';
	String get renewTOTP => 'Reconfigure authenticator app';
	String get renewTOTPConfirm => 'This will cause verification codes from your previous app to stop working';
	String get renewTOTPOk => 'Reconfigure';
	String get renewTOTPCancel => 'Cancel';
}

// Path: _auth
class _StringsAuthEnUs {
	_StringsAuthEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get shareAccessTitle => 'Granting application permissions';
	String get shareAccess => 'Would you like to authorize "{name}" to access this account?';
	String get shareAccessAsk => 'Are you sure you want to authorize this application to access your account?';
	String get permission => '{name} requests the following permissions';
	String get permissionAsk => 'This application requests the following permissions';
	String get pleaseGoBack => 'Please go back to the application';
	String get callback => 'Returning to the application';
	String get denied => 'Access denied';
	String get pleaseLogin => 'Please log in to authorize applications.';
}

// Path: _antennaSources
class _StringsAntennaSourcesEnUs {
	_StringsAntennaSourcesEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get all => 'All notes';
	String get homeTimeline => 'Notes from followed users';
	String get users => 'Notes from specific users';
	String get userList => 'Notes from a specified list of users';
}

// Path: _weekday
class _StringsWeekdayEnUs {
	_StringsWeekdayEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get sunday => 'Sunday';
	String get monday => 'Monday';
	String get tuesday => 'Tuesday';
	String get wednesday => 'Wednesday';
	String get thursday => 'Thursday';
	String get friday => 'Friday';
	String get saturday => 'Saturday';
}

// Path: _widgets
class _StringsWidgetsEnUs {
	_StringsWidgetsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get profile => 'Profile';
	String get instanceInfo => 'Instance Information';
	String get memo => 'Sticky notes';
	String get notifications => 'Notifications';
	String get timeline => 'Timeline';
	String get calendar => 'Calendar';
	String get trends => 'Trending';
	String get clock => 'Clock';
	String get rss => 'RSS reader';
	String get rssTicker => 'RSS-Ticker';
	String get activity => 'Activity';
	String get photos => 'Photos';
	String get digitalClock => 'Digital clock';
	String get unixClock => 'UNIX clock';
	String get federation => 'Federation';
	String get instanceCloud => 'Instance cloud';
	String get postForm => 'Posting form';
	String get slideshow => 'Slideshow';
	String get button => 'Button';
	String get onlineUsers => 'Online users';
	String get jobQueue => 'Job Queue';
	String get serverMetric => 'Server metrics';
	String get aiscript => 'AiScript console';
	String get aiscriptApp => 'AiScript App';
	String get aichan => 'Ai';
	String get userList => 'User list';
	late final _StringsWidgetsUserListEnUs _userList = _StringsWidgetsUserListEnUs._(_root);
	String get clicker => 'Clicker';
}

// Path: _cw
class _StringsCwEnUs {
	_StringsCwEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get hide => 'Hide';
	String get show => 'Show content';
	String get chars => '{count} characters';
	String get files => '{count} file(s)';
}

// Path: _poll
class _StringsPollEnUs {
	_StringsPollEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get noOnlyOneChoice => 'At least two choices are needed';
	String get choiceN => 'Choice {n}';
	String get noMore => 'You cannot add more choices';
	String get canMultipleVote => 'Allow selecting multiple choices';
	String get expiration => 'End poll';
	String get infinite => 'Never';
	String get at => 'End at...';
	String get after => 'End after...';
	String get deadlineDate => 'End date';
	String get deadlineTime => 'Time';
	String get duration => 'Duration';
	String get votesCount => '{n} votes';
	String get totalVotes => '{n} votes in total';
	String get vote => 'Vote';
	String get showResult => 'View results';
	String get voted => 'Voted';
	String get closed => 'Ended';
	String get remainingDays => '{d} day(s) {h} hour(s) remaining';
	String get remainingHours => '{h} hour(s) {m} minute(s) remaining';
	String get remainingMinutes => '{m} minute(s) {s} second(s) remaining';
	String get remainingSeconds => '{s} second(s) remaining';
}

// Path: _visibility
class _StringsVisibilityEnUs {
	_StringsVisibilityEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get public => 'Public';
	String get publicDescription => 'Your note will be visible for all users';
	String get home => 'Home';
	String get homeDescription => 'Post to home timeline only';
	String get followers => 'Followers';
	String get followersDescription => 'Make visible to your followers only';
	String get specified => 'Direct';
	String get specifiedDescription => 'Make visible for specified users only';
	String get disableFederation => 'Defederate';
	String get disableFederationDescription => 'Don\'t transmit to other instances';
}

// Path: _postForm
class _StringsPostFormEnUs {
	_StringsPostFormEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get replyPlaceholder => 'Reply to this note...';
	String get quotePlaceholder => 'Quote this note...';
	String get channelPlaceholder => 'Post to a channel...';
	late final _StringsPostFormPlaceholdersEnUs _placeholders = _StringsPostFormPlaceholdersEnUs._(_root);
}

// Path: _profile
class _StringsProfileEnUs {
	_StringsProfileEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
	String get username => 'Username';
	String get description => 'Bio';
	String get youCanIncludeHashtags => 'You can also include hashtags in your bio.';
	String get metadata => 'Additional Information';
	String get metadataEdit => 'Edit additional Information';
	String get metadataDescription => 'Using these, you can display additional information fields in your profile.';
	String get metadataLabel => 'Label';
	String get metadataContent => 'Content';
	String get changeAvatar => 'Change avatar';
	String get changeBanner => 'Change banner';
}

// Path: _exportOrImport
class _StringsExportOrImportEnUs {
	_StringsExportOrImportEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get allNotes => 'All notes';
	String get favoritedNotes => 'Favorite notes';
	String get followingList => 'Followed users';
	String get muteList => 'Muted users';
	String get blockingList => 'Blocked users';
	String get userLists => 'User lists';
	String get excludeMutingUsers => 'Exclude muted users';
	String get excludeInactiveUsers => 'Exclude inactive users';
}

// Path: _charts
class _StringsChartsEnUs {
	_StringsChartsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get federation => 'Federation';
	String get apRequest => 'Requests';
	String get usersIncDec => 'Difference in the number of users';
	String get usersTotal => 'Total number of users';
	String get activeUsers => 'Active users';
	String get notesIncDec => 'Difference in the number of notes';
	String get localNotesIncDec => 'Difference in the number of local notes';
	String get remoteNotesIncDec => 'Difference in the number of remote notes';
	String get notesTotal => 'Total number of notes';
	String get filesIncDec => 'Difference in the number of files';
	String get filesTotal => 'Total number of files';
	String get storageUsageIncDec => 'Difference in storage usage';
	String get storageUsageTotal => 'Total storage usage';
}

// Path: _instanceCharts
class _StringsInstanceChartsEnUs {
	_StringsInstanceChartsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get requests => 'Requests';
	String get users => 'Difference in the number of users';
	String get usersTotal => 'Cumulative number of users';
	String get notes => 'Difference in the number of notes';
	String get notesTotal => 'Cumulative number of notes';
	String get ff => 'Difference in the number of followed users / followers ';
	String get ffTotal => 'Cumulative number of followed users / followers';
	String get cacheSize => 'Difference in cache size';
	String get cacheSizeTotal => 'Cumulative total cache size';
	String get files => 'Difference in the number of files';
	String get filesTotal => 'Cumulative number of files';
}

// Path: _timelines
class _StringsTimelinesEnUs {
	_StringsTimelinesEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get local => 'Local';
	String get social => 'Social';
	String get global => 'Global';
}

// Path: _play
class _StringsPlayEnUs {
	_StringsPlayEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get new_ => 'Create Play';
	String get edit => 'Edit Play';
	String get created => 'Play created';
	String get updated => 'Play edited';
	String get deleted => 'Play deleted';
	String get pageSetting => 'Play settings';
	String get editThisPage => 'Edit this Play';
	String get viewSource => 'View source';
	String get my => 'My Plays';
	String get liked => 'Liked Plays';
	String get featured => 'Popular';
	String get title => 'Title';
	String get script => 'Script';
	String get summary => 'Description';
}

// Path: _pages
class _StringsPagesEnUs {
	_StringsPagesEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get newPage => 'Create a new Page';
	String get editPage => 'Edit this Page';
	String get readPage => 'Viewing this Page\'s source';
	String get created => 'Page successfully created';
	String get updated => 'Page successfully edited';
	String get deleted => 'Page successfully deleted';
	String get pageSetting => 'Page settings';
	String get nameAlreadyExists => 'The specified Page URL already exists';
	String get invalidNameTitle => 'The specified Page URL is invalid';
	String get invalidNameText => 'Make sure the Page title is not empty';
	String get editThisPage => 'Edit this Page';
	String get viewSource => 'View source';
	String get viewPage => 'View your Pages';
	String get like => 'Like';
	String get unlike => 'Remove like';
	String get my => 'My Pages';
	String get liked => 'Liked Pages';
	String get featured => 'Popular';
	String get inspector => 'Inspector';
	String get contents => 'Contents';
	String get content => 'Page block';
	String get variables => 'Variables';
	String get title => 'Title';
	String get url => 'Page URL';
	String get summary => 'Page summary';
	String get alignCenter => 'Center elements';
	String get hideTitleWhenPinned => 'Hide Page title when pinned to profile';
	String get font => 'Font';
	String get fontSerif => 'Serif';
	String get fontSansSerif => 'Sans Serif';
	String get eyeCatchingImageSet => 'Set thumbnail';
	String get eyeCatchingImageRemove => 'Delete thumbnail';
	String get chooseBlock => 'Add a block';
	String get selectType => 'Select a type';
	String get contentBlocks => 'Content';
	String get inputBlocks => 'Input';
	String get specialBlocks => 'Special';
	late final _StringsPagesBlocksEnUs blocks = _StringsPagesBlocksEnUs._(_root);
}

// Path: _relayStatus
class _StringsRelayStatusEnUs {
	_StringsRelayStatusEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get requesting => 'Pending';
	String get accepted => 'Accepted';
	String get rejected => 'Rejected';
}

// Path: _notification
class _StringsNotificationEnUs {
	_StringsNotificationEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get fileUploaded => 'File successfully uploaded';
	String get youGotMention => '{name} mentioned you';
	String get youGotReply => '{name} replied to you';
	String get youGotQuote => '{name} quoted you';
	String get youRenoted => 'Renote from {name}';
	String get youWereFollowed => 'followed you';
	String get youReceivedFollowRequest => 'You\'ve received a follow request';
	String get yourFollowRequestAccepted => 'Your follow request was accepted';
	String get pollEnded => 'Poll results have become available';
	String get unreadAntennaNote => 'Antenna {name}';
	String get emptyPushNotificationMessage => 'Push notifications have been updated';
	String get achievementEarned => 'Achievement unlocked';
	late final _StringsNotificationTypesEnUs _types = _StringsNotificationTypesEnUs._(_root);
	late final _StringsNotificationActionsEnUs _actions = _StringsNotificationActionsEnUs._(_root);
}

// Path: _deck
class _StringsDeckEnUs {
	_StringsDeckEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get alwaysShowMainColumn => 'Always show main column';
	String get columnAlign => 'Align columns';
	String get addColumn => 'Add column';
	String get configureColumn => 'Column settings';
	String get swapLeft => 'Swap with the left column';
	String get swapRight => 'Swap with the right column';
	String get swapUp => 'Swap with the above column';
	String get swapDown => 'Swap with the below column';
	String get stackLeft => 'Stack on left column';
	String get popRight => 'Pop column to the right';
	String get profile => 'Profile';
	String get newProfile => 'New profile';
	String get deleteProfile => 'Delete profile';
	String get introduction => 'Create the perfect interface for you by arranging columns freely!';
	String get introduction2 => 'Click on the + on the right of the screen to add new colums whenever you want.';
	String get widgetsIntroduction => 'Please select "Edit widgets" in the column menu and add a widget.';
	late final _StringsDeckColumnsEnUs _columns = _StringsDeckColumnsEnUs._(_root);
}

// Path: _dialog
class _StringsDialogEnUs {
	_StringsDialogEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get charactersExceeded => 'You\'ve exceeded the maximum character limit! Currently at {current} of {max}.';
	String get charactersBelow => 'You\'re below the minimum character limit! Currently at {current} of {min}.';
}

// Path: _disabledTimeline
class _StringsDisabledTimelineEnUs {
	_StringsDisabledTimelineEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Timeline disabled';
	String get description => 'You cannot use this timeline under your current roles.';
}

// Path: _drivecleaner
class _StringsDrivecleanerEnUs {
	_StringsDrivecleanerEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get orderBySizeDesc => 'Descending Filesizes';
	String get orderByCreatedAtAsc => 'Ascending Dates';
}

// Path: _webhookSettings
class _StringsWebhookSettingsEnUs {
	_StringsWebhookSettingsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get createWebhook => 'Create Webhook';
	String get name => 'Name';
	String get secret => 'Secret';
	String get events => 'Webhook Events';
	String get active => 'Enabled';
	late final _StringsWebhookSettingsEventsEnUs _events = _StringsWebhookSettingsEventsEnUs._(_root);
}

// Path: _achievements._types
class _StringsAchievementsTypesEnUs {
	_StringsAchievementsTypesEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	late final _StringsAchievementsTypesNotes1EnUs _notes1 = _StringsAchievementsTypesNotes1EnUs._(_root);
	late final _StringsAchievementsTypesNotes10EnUs _notes10 = _StringsAchievementsTypesNotes10EnUs._(_root);
	late final _StringsAchievementsTypesNotes100EnUs _notes100 = _StringsAchievementsTypesNotes100EnUs._(_root);
	late final _StringsAchievementsTypesNotes500EnUs _notes500 = _StringsAchievementsTypesNotes500EnUs._(_root);
	late final _StringsAchievementsTypesNotes1000EnUs _notes1000 = _StringsAchievementsTypesNotes1000EnUs._(_root);
	late final _StringsAchievementsTypesNotes5000EnUs _notes5000 = _StringsAchievementsTypesNotes5000EnUs._(_root);
	late final _StringsAchievementsTypesNotes10000EnUs _notes10000 = _StringsAchievementsTypesNotes10000EnUs._(_root);
	late final _StringsAchievementsTypesNotes20000EnUs _notes20000 = _StringsAchievementsTypesNotes20000EnUs._(_root);
	late final _StringsAchievementsTypesNotes30000EnUs _notes30000 = _StringsAchievementsTypesNotes30000EnUs._(_root);
	late final _StringsAchievementsTypesNotes40000EnUs _notes40000 = _StringsAchievementsTypesNotes40000EnUs._(_root);
	late final _StringsAchievementsTypesNotes50000EnUs _notes50000 = _StringsAchievementsTypesNotes50000EnUs._(_root);
	late final _StringsAchievementsTypesNotes60000EnUs _notes60000 = _StringsAchievementsTypesNotes60000EnUs._(_root);
	late final _StringsAchievementsTypesNotes70000EnUs _notes70000 = _StringsAchievementsTypesNotes70000EnUs._(_root);
	late final _StringsAchievementsTypesNotes80000EnUs _notes80000 = _StringsAchievementsTypesNotes80000EnUs._(_root);
	late final _StringsAchievementsTypesNotes90000EnUs _notes90000 = _StringsAchievementsTypesNotes90000EnUs._(_root);
	late final _StringsAchievementsTypesNotes100000EnUs _notes100000 = _StringsAchievementsTypesNotes100000EnUs._(_root);
	late final _StringsAchievementsTypesLogin3EnUs _login3 = _StringsAchievementsTypesLogin3EnUs._(_root);
	late final _StringsAchievementsTypesLogin7EnUs _login7 = _StringsAchievementsTypesLogin7EnUs._(_root);
	late final _StringsAchievementsTypesLogin15EnUs _login15 = _StringsAchievementsTypesLogin15EnUs._(_root);
	late final _StringsAchievementsTypesLogin30EnUs _login30 = _StringsAchievementsTypesLogin30EnUs._(_root);
	late final _StringsAchievementsTypesLogin60EnUs _login60 = _StringsAchievementsTypesLogin60EnUs._(_root);
	late final _StringsAchievementsTypesLogin100EnUs _login100 = _StringsAchievementsTypesLogin100EnUs._(_root);
	late final _StringsAchievementsTypesLogin200EnUs _login200 = _StringsAchievementsTypesLogin200EnUs._(_root);
	late final _StringsAchievementsTypesLogin300EnUs _login300 = _StringsAchievementsTypesLogin300EnUs._(_root);
	late final _StringsAchievementsTypesLogin400EnUs _login400 = _StringsAchievementsTypesLogin400EnUs._(_root);
	late final _StringsAchievementsTypesLogin500EnUs _login500 = _StringsAchievementsTypesLogin500EnUs._(_root);
	late final _StringsAchievementsTypesLogin600EnUs _login600 = _StringsAchievementsTypesLogin600EnUs._(_root);
	late final _StringsAchievementsTypesLogin700EnUs _login700 = _StringsAchievementsTypesLogin700EnUs._(_root);
	late final _StringsAchievementsTypesLogin800EnUs _login800 = _StringsAchievementsTypesLogin800EnUs._(_root);
	late final _StringsAchievementsTypesLogin900EnUs _login900 = _StringsAchievementsTypesLogin900EnUs._(_root);
	late final _StringsAchievementsTypesLogin1000EnUs _login1000 = _StringsAchievementsTypesLogin1000EnUs._(_root);
	late final _StringsAchievementsTypesNoteClipped1EnUs _noteClipped1 = _StringsAchievementsTypesNoteClipped1EnUs._(_root);
	late final _StringsAchievementsTypesNoteFavorited1EnUs _noteFavorited1 = _StringsAchievementsTypesNoteFavorited1EnUs._(_root);
	late final _StringsAchievementsTypesMyNoteFavorited1EnUs _myNoteFavorited1 = _StringsAchievementsTypesMyNoteFavorited1EnUs._(_root);
	late final _StringsAchievementsTypesProfileFilledEnUs _profileFilled = _StringsAchievementsTypesProfileFilledEnUs._(_root);
	late final _StringsAchievementsTypesMarkedAsCatEnUs _markedAsCat = _StringsAchievementsTypesMarkedAsCatEnUs._(_root);
	late final _StringsAchievementsTypesFollowing1EnUs _following1 = _StringsAchievementsTypesFollowing1EnUs._(_root);
	late final _StringsAchievementsTypesFollowing10EnUs _following10 = _StringsAchievementsTypesFollowing10EnUs._(_root);
	late final _StringsAchievementsTypesFollowing50EnUs _following50 = _StringsAchievementsTypesFollowing50EnUs._(_root);
	late final _StringsAchievementsTypesFollowing100EnUs _following100 = _StringsAchievementsTypesFollowing100EnUs._(_root);
	late final _StringsAchievementsTypesFollowing300EnUs _following300 = _StringsAchievementsTypesFollowing300EnUs._(_root);
	late final _StringsAchievementsTypesFollowers1EnUs _followers1 = _StringsAchievementsTypesFollowers1EnUs._(_root);
	late final _StringsAchievementsTypesFollowers10EnUs _followers10 = _StringsAchievementsTypesFollowers10EnUs._(_root);
	late final _StringsAchievementsTypesFollowers50EnUs _followers50 = _StringsAchievementsTypesFollowers50EnUs._(_root);
	late final _StringsAchievementsTypesFollowers100EnUs _followers100 = _StringsAchievementsTypesFollowers100EnUs._(_root);
	late final _StringsAchievementsTypesFollowers300EnUs _followers300 = _StringsAchievementsTypesFollowers300EnUs._(_root);
	late final _StringsAchievementsTypesFollowers500EnUs _followers500 = _StringsAchievementsTypesFollowers500EnUs._(_root);
	late final _StringsAchievementsTypesFollowers1000EnUs _followers1000 = _StringsAchievementsTypesFollowers1000EnUs._(_root);
	late final _StringsAchievementsTypesCollectAchievements30EnUs _collectAchievements30 = _StringsAchievementsTypesCollectAchievements30EnUs._(_root);
	late final _StringsAchievementsTypesViewAchievements3minEnUs _viewAchievements3min = _StringsAchievementsTypesViewAchievements3minEnUs._(_root);
	late final _StringsAchievementsTypesILoveMisskeyEnUs _iLoveMisskey = _StringsAchievementsTypesILoveMisskeyEnUs._(_root);
	late final _StringsAchievementsTypesFoundTreasureEnUs _foundTreasure = _StringsAchievementsTypesFoundTreasureEnUs._(_root);
	late final _StringsAchievementsTypesClient30minEnUs _client30min = _StringsAchievementsTypesClient30minEnUs._(_root);
	late final _StringsAchievementsTypesClient60minEnUs _client60min = _StringsAchievementsTypesClient60minEnUs._(_root);
	late final _StringsAchievementsTypesNoteDeletedWithin1minEnUs _noteDeletedWithin1min = _StringsAchievementsTypesNoteDeletedWithin1minEnUs._(_root);
	late final _StringsAchievementsTypesPostedAtLateNightEnUs _postedAtLateNight = _StringsAchievementsTypesPostedAtLateNightEnUs._(_root);
	late final _StringsAchievementsTypesPostedAt0min0secEnUs _postedAt0min0sec = _StringsAchievementsTypesPostedAt0min0secEnUs._(_root);
	late final _StringsAchievementsTypesSelfQuoteEnUs _selfQuote = _StringsAchievementsTypesSelfQuoteEnUs._(_root);
	late final _StringsAchievementsTypesHtl20npmEnUs _htl20npm = _StringsAchievementsTypesHtl20npmEnUs._(_root);
	late final _StringsAchievementsTypesViewInstanceChartEnUs _viewInstanceChart = _StringsAchievementsTypesViewInstanceChartEnUs._(_root);
	late final _StringsAchievementsTypesOutputHelloWorldOnScratchpadEnUs _outputHelloWorldOnScratchpad = _StringsAchievementsTypesOutputHelloWorldOnScratchpadEnUs._(_root);
	late final _StringsAchievementsTypesOpen3windowsEnUs _open3windows = _StringsAchievementsTypesOpen3windowsEnUs._(_root);
	late final _StringsAchievementsTypesDriveFolderCircularReferenceEnUs _driveFolderCircularReference = _StringsAchievementsTypesDriveFolderCircularReferenceEnUs._(_root);
	late final _StringsAchievementsTypesReactWithoutReadEnUs _reactWithoutRead = _StringsAchievementsTypesReactWithoutReadEnUs._(_root);
	late final _StringsAchievementsTypesClickedClickHereEnUs _clickedClickHere = _StringsAchievementsTypesClickedClickHereEnUs._(_root);
	late final _StringsAchievementsTypesJustPlainLuckyEnUs _justPlainLucky = _StringsAchievementsTypesJustPlainLuckyEnUs._(_root);
	late final _StringsAchievementsTypesSetNameToSyuiloEnUs _setNameToSyuilo = _StringsAchievementsTypesSetNameToSyuiloEnUs._(_root);
	late final _StringsAchievementsTypesPassedSinceAccountCreated1EnUs _passedSinceAccountCreated1 = _StringsAchievementsTypesPassedSinceAccountCreated1EnUs._(_root);
	late final _StringsAchievementsTypesPassedSinceAccountCreated2EnUs _passedSinceAccountCreated2 = _StringsAchievementsTypesPassedSinceAccountCreated2EnUs._(_root);
	late final _StringsAchievementsTypesPassedSinceAccountCreated3EnUs _passedSinceAccountCreated3 = _StringsAchievementsTypesPassedSinceAccountCreated3EnUs._(_root);
	late final _StringsAchievementsTypesLoggedInOnBirthdayEnUs _loggedInOnBirthday = _StringsAchievementsTypesLoggedInOnBirthdayEnUs._(_root);
	late final _StringsAchievementsTypesLoggedInOnNewYearsDayEnUs _loggedInOnNewYearsDay = _StringsAchievementsTypesLoggedInOnNewYearsDayEnUs._(_root);
	late final _StringsAchievementsTypesCookieClickedEnUs _cookieClicked = _StringsAchievementsTypesCookieClickedEnUs._(_root);
	late final _StringsAchievementsTypesBrainDiverEnUs _brainDiver = _StringsAchievementsTypesBrainDiverEnUs._(_root);
}

// Path: _role._priority
class _StringsRolePriorityEnUs {
	_StringsRolePriorityEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get low => 'Low';
	String get middle => 'Medium';
	String get high => 'High';
}

// Path: _role._options
class _StringsRoleOptionsEnUs {
	_StringsRoleOptionsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get gtlAvailable => 'Can view the global timeline';
	String get ltlAvailable => 'Can view the local timeline';
	String get canPublicNote => 'Can send public notes';
	String get canInvite => 'Can create instance invite codes';
	String get canManageCustomEmojis => 'Can manage custom emojis';
	String get driveCapacity => 'Drive capacity';
	String get alwaysMarkNsfw => 'Always mark files as NSFW';
	String get pinMax => 'Maximum number of pinned notes';
	String get antennaMax => 'Maximum number of antennas';
	String get wordMuteMax => 'Maximum number of characters allowed in word mutes';
	String get webhookMax => 'Maximum number of Webhooks';
	String get clipMax => 'Maximum number of Clips';
	String get noteEachClipsMax => 'Maximum number of notes within a clip';
	String get userListMax => 'Maximum number of user lists';
	String get userEachUserListsMax => 'Maximum number of users within a user list';
	String get rateLimitFactor => 'Rate limit';
	String get descriptionOfRateLimitFactor => 'Lower rate limits are less restrictive, higher ones more restrictive. ';
	String get canHideAds => 'Can hide ads';
	String get canSearchNotes => 'Usage of note search';
}

// Path: _role._condition
class _StringsRoleConditionEnUs {
	_StringsRoleConditionEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get isLocal => 'Local user';
	String get isRemote => 'Remote user';
	String get createdLessThan => 'Less than X has passed since account creation';
	String get createdMoreThan => 'More than X has passed since account creation';
	String get followersLessThanOrEq => 'Has X or fewer followers';
	String get followersMoreThanOrEq => 'Has X or more followers';
	String get followingLessThanOrEq => 'Follows X or fewer accounts';
	String get followingMoreThanOrEq => 'Follows X or more accounts';
	String get notesLessThanOrEq => 'Post count is less than/equal to';
	String get notesMoreThanOrEq => 'Post count is greater than/equal to';
	String get and => 'AND-Condition';
	String get or => 'OR-Condition';
	String get not => 'NOT-Condition';
}

// Path: _email._follow
class _StringsEmailFollowEnUs {
	_StringsEmailFollowEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'You\'ve got a new follower';
}

// Path: _email._receiveFollowRequest
class _StringsEmailReceiveFollowRequestEnUs {
	_StringsEmailReceiveFollowRequestEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'You\'ve received a follow request';
}

// Path: _theme.keys
class _StringsThemeKeysEnUs {
	_StringsThemeKeysEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get accent => 'Accent';
	String get bg => 'Background';
	String get fg => 'Text';
	String get focus => 'Focus';
	String get indicator => 'Indicator';
	String get panel => 'Panel';
	String get shadow => 'Shadow';
	String get header => 'Header';
	String get navBg => 'Sidebar background';
	String get navFg => 'Sidebar text';
	String get navHoverFg => 'Sidebar text (Hover)';
	String get navActive => 'Sidebar text (Active)';
	String get navIndicator => 'Sidebar indicator';
	String get link => 'Link';
	String get hashtag => 'Hashtag';
	String get mention => 'Mention';
	String get mentionMe => 'Mentions (Me)';
	String get renote => 'Renote';
	String get modalBg => 'Modal background';
	String get divider => 'Divider';
	String get scrollbarHandle => 'Scrollbar handle';
	String get scrollbarHandleHover => 'Scrollbar handle (Hover)';
	String get dateLabelFg => 'Date label text';
	String get infoBg => 'Information background';
	String get infoFg => 'Information text';
	String get infoWarnBg => 'Warning background';
	String get infoWarnFg => 'Warning text';
	String get cwBg => 'CW button background';
	String get cwFg => 'CW button text';
	String get cwHoverBg => 'CW button background (Hover)';
	String get toastBg => 'Notification background';
	String get toastFg => 'Notification text';
	String get buttonBg => 'Button background';
	String get buttonHoverBg => 'Button background (Hover)';
	String get inputBorder => 'Input field border';
	String get listItemHoverBg => 'List item background (Hover)';
	String get driveFolderBg => 'Drive folder background';
	String get wallpaperOverlay => 'Wallpaper overlay';
	String get badge => 'Badge';
	String get messageBg => 'Chat background';
	String get accentDarken => 'Accent (Darkened)';
	String get accentLighten => 'Accent (Lightened)';
	String get fgHighlighted => 'Highlighted Text';
}

// Path: _widgets._userList
class _StringsWidgetsUserListEnUs {
	_StringsWidgetsUserListEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get chooseList => 'Select a list';
}

// Path: _postForm._placeholders
class _StringsPostFormPlaceholdersEnUs {
	_StringsPostFormPlaceholdersEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get a => 'What are you up to?';
	String get b => 'What\'s happening around you?';
	String get c => 'What\'s on your mind?';
	String get d => 'What do you want to say?';
	String get e => 'Start writing...';
	String get f => 'Waiting for you to write...';
}

// Path: _pages.blocks
class _StringsPagesBlocksEnUs {
	_StringsPagesBlocksEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get text => 'Text';
	String get textarea => 'Text area';
	String get section => 'Section';
	String get image => 'Images';
	String get button => 'Button';
	String get note => 'Embedded note';
	late final _StringsPagesBlocksNoteEnUs _note = _StringsPagesBlocksNoteEnUs._(_root);
}

// Path: _notification._types
class _StringsNotificationTypesEnUs {
	_StringsNotificationTypesEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get all => 'All';
	String get follow => 'New followers';
	String get mention => 'Mentions';
	String get reply => 'Replies';
	String get renote => 'Renotes';
	String get quote => 'Quotes';
	String get reaction => 'Reactions';
	String get pollEnded => 'Polls ending';
	String get receiveFollowRequest => 'Received follow requests';
	String get followRequestAccepted => 'Accepted follow requests';
	String get achievementEarned => 'Achievement unlocked';
	String get app => 'Notifications from linked apps';
}

// Path: _notification._actions
class _StringsNotificationActionsEnUs {
	_StringsNotificationActionsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get followBack => 'followed you back';
	String get reply => 'Reply';
	String get renote => 'Renote';
}

// Path: _deck._columns
class _StringsDeckColumnsEnUs {
	_StringsDeckColumnsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get main => 'Main';
	String get widgets => 'Widgets';
	String get notifications => 'Notifications';
	String get tl => 'Timeline';
	String get antenna => 'Antennas';
	String get list => 'List';
	String get channel => 'Channel';
	String get mentions => 'Mentions';
	String get direct => 'Direct notes';
	String get roleTimeline => 'Role Timeline';
}

// Path: _webhookSettings._events
class _StringsWebhookSettingsEventsEnUs {
	_StringsWebhookSettingsEventsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get follow => 'When following a user';
	String get followed => 'When being followed';
	String get note => 'When posting a note';
	String get reply => 'When receiving a reply';
	String get renote => 'When renoted';
	String get reaction => 'When receiving a reaction';
	String get mention => 'When being mentioned';
}

// Path: _achievements._types._notes1
class _StringsAchievementsTypesNotes1EnUs {
	_StringsAchievementsTypesNotes1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'just setting up my msky';
	String get description => 'Post your first note';
	String get flavor => 'Have a good time with Misskey!';
}

// Path: _achievements._types._notes10
class _StringsAchievementsTypesNotes10EnUs {
	_StringsAchievementsTypesNotes10EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Some notes';
	String get description => 'Post 10 notes';
}

// Path: _achievements._types._notes100
class _StringsAchievementsTypesNotes100EnUs {
	_StringsAchievementsTypesNotes100EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'A lot of notes';
	String get description => 'Post 100 notes';
}

// Path: _achievements._types._notes500
class _StringsAchievementsTypesNotes500EnUs {
	_StringsAchievementsTypesNotes500EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Covered in notes';
	String get description => 'Post 500 notes';
}

// Path: _achievements._types._notes1000
class _StringsAchievementsTypesNotes1000EnUs {
	_StringsAchievementsTypesNotes1000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'A mountain of notes';
	String get description => 'Post 1,000 notes';
}

// Path: _achievements._types._notes5000
class _StringsAchievementsTypesNotes5000EnUs {
	_StringsAchievementsTypesNotes5000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Overflowing notes';
	String get description => 'Post 5,000 notes';
}

// Path: _achievements._types._notes10000
class _StringsAchievementsTypesNotes10000EnUs {
	_StringsAchievementsTypesNotes10000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Supernote';
	String get description => 'Post 10,000 notes';
}

// Path: _achievements._types._notes20000
class _StringsAchievementsTypesNotes20000EnUs {
	_StringsAchievementsTypesNotes20000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Need... more... notes...';
	String get description => 'Post 20,000 notes';
}

// Path: _achievements._types._notes30000
class _StringsAchievementsTypesNotes30000EnUs {
	_StringsAchievementsTypesNotes30000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Notes notes notes!';
	String get description => 'Post 30,000 notes';
}

// Path: _achievements._types._notes40000
class _StringsAchievementsTypesNotes40000EnUs {
	_StringsAchievementsTypesNotes40000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Note factory';
	String get description => 'Post 40,000 notes';
}

// Path: _achievements._types._notes50000
class _StringsAchievementsTypesNotes50000EnUs {
	_StringsAchievementsTypesNotes50000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Planet of notes';
	String get description => 'Post 50,000 notes';
}

// Path: _achievements._types._notes60000
class _StringsAchievementsTypesNotes60000EnUs {
	_StringsAchievementsTypesNotes60000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Note quasar';
	String get description => 'Post 60,000 notes';
}

// Path: _achievements._types._notes70000
class _StringsAchievementsTypesNotes70000EnUs {
	_StringsAchievementsTypesNotes70000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Note black hole';
	String get description => 'Post 70,000 notes';
}

// Path: _achievements._types._notes80000
class _StringsAchievementsTypesNotes80000EnUs {
	_StringsAchievementsTypesNotes80000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Note galaxy';
	String get description => 'Post 80,000 notes';
}

// Path: _achievements._types._notes90000
class _StringsAchievementsTypesNotes90000EnUs {
	_StringsAchievementsTypesNotes90000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Note universe';
	String get description => 'Post 90,000 notes';
}

// Path: _achievements._types._notes100000
class _StringsAchievementsTypesNotes100000EnUs {
	_StringsAchievementsTypesNotes100000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	String get description => 'Post 100,000 notes';
	String get flavor => 'You sure have a lot to say.';
}

// Path: _achievements._types._login3
class _StringsAchievementsTypesLogin3EnUs {
	_StringsAchievementsTypesLogin3EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Beginner I';
	String get description => 'Log in for a total of 3 days';
	String get flavor => 'Starting today, just call me Misskist';
}

// Path: _achievements._types._login7
class _StringsAchievementsTypesLogin7EnUs {
	_StringsAchievementsTypesLogin7EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Beginner II';
	String get description => 'Log in for a total of 7 days';
	String get flavor => 'Feel like you\'ve gotten the hang of things yet?';
}

// Path: _achievements._types._login15
class _StringsAchievementsTypesLogin15EnUs {
	_StringsAchievementsTypesLogin15EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Beginner III';
	String get description => 'Log in for a total of 15 days';
}

// Path: _achievements._types._login30
class _StringsAchievementsTypesLogin30EnUs {
	_StringsAchievementsTypesLogin30EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Misskist I';
	String get description => 'Log in for a total of 30 days';
}

// Path: _achievements._types._login60
class _StringsAchievementsTypesLogin60EnUs {
	_StringsAchievementsTypesLogin60EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Misskist II';
	String get description => 'Log in for a total of 60 days';
}

// Path: _achievements._types._login100
class _StringsAchievementsTypesLogin100EnUs {
	_StringsAchievementsTypesLogin100EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Misskist III';
	String get description => 'Log in for a total of 100 days';
	String get flavor => 'Violent Misskist';
}

// Path: _achievements._types._login200
class _StringsAchievementsTypesLogin200EnUs {
	_StringsAchievementsTypesLogin200EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Regular I';
	String get description => 'Log in for a total of 200 days';
}

// Path: _achievements._types._login300
class _StringsAchievementsTypesLogin300EnUs {
	_StringsAchievementsTypesLogin300EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Regular II';
	String get description => 'Log in for a total of 300 days';
}

// Path: _achievements._types._login400
class _StringsAchievementsTypesLogin400EnUs {
	_StringsAchievementsTypesLogin400EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Regular III';
	String get description => 'Log in for a total of 400 days';
}

// Path: _achievements._types._login500
class _StringsAchievementsTypesLogin500EnUs {
	_StringsAchievementsTypesLogin500EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Expert I';
	String get description => 'Log in for a total of 500 days';
	String get flavor => 'My friends, it has often been said that I like notes';
}

// Path: _achievements._types._login600
class _StringsAchievementsTypesLogin600EnUs {
	_StringsAchievementsTypesLogin600EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Expert II';
	String get description => 'Log in for a total of 600 days';
}

// Path: _achievements._types._login700
class _StringsAchievementsTypesLogin700EnUs {
	_StringsAchievementsTypesLogin700EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Expert III';
	String get description => 'Log in for a total of 700 days';
}

// Path: _achievements._types._login800
class _StringsAchievementsTypesLogin800EnUs {
	_StringsAchievementsTypesLogin800EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Master of Notes I';
	String get description => 'Log in for a total of 800 days';
}

// Path: _achievements._types._login900
class _StringsAchievementsTypesLogin900EnUs {
	_StringsAchievementsTypesLogin900EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Master of Notes II';
	String get description => 'Log in for a total of 900 days';
}

// Path: _achievements._types._login1000
class _StringsAchievementsTypesLogin1000EnUs {
	_StringsAchievementsTypesLogin1000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Master of Notes III';
	String get description => 'Log in for a total of 1,000 days';
	String get flavor => 'Thank you for using Misskey!';
}

// Path: _achievements._types._noteClipped1
class _StringsAchievementsTypesNoteClipped1EnUs {
	_StringsAchievementsTypesNoteClipped1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Must... clip...';
	String get description => 'Clip your first note';
}

// Path: _achievements._types._noteFavorited1
class _StringsAchievementsTypesNoteFavorited1EnUs {
	_StringsAchievementsTypesNoteFavorited1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Stargazer';
	String get description => 'Favorite your first note';
}

// Path: _achievements._types._myNoteFavorited1
class _StringsAchievementsTypesMyNoteFavorited1EnUs {
	_StringsAchievementsTypesMyNoteFavorited1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Seeking Stars';
	String get description => 'Have somebody else favorite one of your notes';
}

// Path: _achievements._types._profileFilled
class _StringsAchievementsTypesProfileFilledEnUs {
	_StringsAchievementsTypesProfileFilledEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Well-prepared';
	String get description => 'Set up your profile';
}

// Path: _achievements._types._markedAsCat
class _StringsAchievementsTypesMarkedAsCatEnUs {
	_StringsAchievementsTypesMarkedAsCatEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'I Am a Cat';
	String get description => 'Mark your account as a cat';
	String get flavor => 'I\'ll give you a name later.';
}

// Path: _achievements._types._following1
class _StringsAchievementsTypesFollowing1EnUs {
	_StringsAchievementsTypesFollowing1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Following your first user';
	String get description => 'Follow a user';
}

// Path: _achievements._types._following10
class _StringsAchievementsTypesFollowing10EnUs {
	_StringsAchievementsTypesFollowing10EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Keep up... keep up...';
	String get description => 'Follow 10 users';
}

// Path: _achievements._types._following50
class _StringsAchievementsTypesFollowing50EnUs {
	_StringsAchievementsTypesFollowing50EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Lots of friends';
	String get description => 'Follow 50 accounts';
}

// Path: _achievements._types._following100
class _StringsAchievementsTypesFollowing100EnUs {
	_StringsAchievementsTypesFollowing100EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => '100 Friends';
	String get description => 'Follow 100 accounts';
}

// Path: _achievements._types._following300
class _StringsAchievementsTypesFollowing300EnUs {
	_StringsAchievementsTypesFollowing300EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Friend overload';
	String get description => 'Follow 300 accounts';
}

// Path: _achievements._types._followers1
class _StringsAchievementsTypesFollowers1EnUs {
	_StringsAchievementsTypesFollowers1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'First follower';
	String get description => 'Gain 1 follower';
}

// Path: _achievements._types._followers10
class _StringsAchievementsTypesFollowers10EnUs {
	_StringsAchievementsTypesFollowers10EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Follow me!';
	String get description => 'Gain 10 followers';
}

// Path: _achievements._types._followers50
class _StringsAchievementsTypesFollowers50EnUs {
	_StringsAchievementsTypesFollowers50EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Coming in crowds';
	String get description => 'Gain 50 followers';
}

// Path: _achievements._types._followers100
class _StringsAchievementsTypesFollowers100EnUs {
	_StringsAchievementsTypesFollowers100EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Popular';
	String get description => 'Gain 100 followers';
}

// Path: _achievements._types._followers300
class _StringsAchievementsTypesFollowers300EnUs {
	_StringsAchievementsTypesFollowers300EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Please form a single line';
	String get description => 'Gain 300 followers';
}

// Path: _achievements._types._followers500
class _StringsAchievementsTypesFollowers500EnUs {
	_StringsAchievementsTypesFollowers500EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Radio Tower';
	String get description => 'Gain 500 followers';
}

// Path: _achievements._types._followers1000
class _StringsAchievementsTypesFollowers1000EnUs {
	_StringsAchievementsTypesFollowers1000EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Influencer';
	String get description => 'Gain 1,000 followers';
}

// Path: _achievements._types._collectAchievements30
class _StringsAchievementsTypesCollectAchievements30EnUs {
	_StringsAchievementsTypesCollectAchievements30EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Achievement Collector';
	String get description => 'Earn 30 achievements';
}

// Path: _achievements._types._viewAchievements3min
class _StringsAchievementsTypesViewAchievements3minEnUs {
	_StringsAchievementsTypesViewAchievements3minEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Likes Achievements';
	String get description => 'Look at your list of achievements for at least 3 minutes';
}

// Path: _achievements._types._iLoveMisskey
class _StringsAchievementsTypesILoveMisskeyEnUs {
	_StringsAchievementsTypesILoveMisskeyEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'I Love Misskey';
	String get description => 'Post "I ❤ #Misskey"';
	String get flavor => 'Misskey\'s development team greatly appreciates your support!';
}

// Path: _achievements._types._foundTreasure
class _StringsAchievementsTypesFoundTreasureEnUs {
	_StringsAchievementsTypesFoundTreasureEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Treasure Hunt';
	String get description => 'You\'ve found the hidden treasure';
}

// Path: _achievements._types._client30min
class _StringsAchievementsTypesClient30minEnUs {
	_StringsAchievementsTypesClient30minEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Short break';
	String get description => 'Keep Misskey opened for at least 30 minutes';
}

// Path: _achievements._types._client60min
class _StringsAchievementsTypesClient60minEnUs {
	_StringsAchievementsTypesClient60minEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'No "Miss" in Misskey';
	String get description => 'Keep Misskey opened for at least 60 minutes';
}

// Path: _achievements._types._noteDeletedWithin1min
class _StringsAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsAchievementsTypesNoteDeletedWithin1minEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Nevermind';
	String get description => 'Delete a note within a minute of posting it';
}

// Path: _achievements._types._postedAtLateNight
class _StringsAchievementsTypesPostedAtLateNightEnUs {
	_StringsAchievementsTypesPostedAtLateNightEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Nocturnal';
	String get description => 'Post a note late at night';
	String get flavor => 'It\'s about time to go to bed.';
}

// Path: _achievements._types._postedAt0min0sec
class _StringsAchievementsTypesPostedAt0min0secEnUs {
	_StringsAchievementsTypesPostedAt0min0secEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Speaking Clock';
	String get description => 'Post a note at 00:00';
	String get flavor => 'Click Click Click Claaang';
}

// Path: _achievements._types._selfQuote
class _StringsAchievementsTypesSelfQuoteEnUs {
	_StringsAchievementsTypesSelfQuoteEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Self-Reference';
	String get description => 'Quote your own note';
}

// Path: _achievements._types._htl20npm
class _StringsAchievementsTypesHtl20npmEnUs {
	_StringsAchievementsTypesHtl20npmEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Flowing Timeline';
	String get description => 'Have the speed of your home timeline exceed 20 npm (notes per minute)';
}

// Path: _achievements._types._viewInstanceChart
class _StringsAchievementsTypesViewInstanceChartEnUs {
	_StringsAchievementsTypesViewInstanceChartEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Analyst';
	String get description => 'View your instance\'s charts';
}

// Path: _achievements._types._outputHelloWorldOnScratchpad
class _StringsAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsAchievementsTypesOutputHelloWorldOnScratchpadEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Hello, world!';
	String get description => 'Output "hello world" in the Scratchpad';
}

// Path: _achievements._types._open3windows
class _StringsAchievementsTypesOpen3windowsEnUs {
	_StringsAchievementsTypesOpen3windowsEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Multi-Window';
	String get description => 'Have at least 3 windows open at the same time';
}

// Path: _achievements._types._driveFolderCircularReference
class _StringsAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsAchievementsTypesDriveFolderCircularReferenceEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Circular Reference';
	String get description => 'Attempt to create a recursively nested folder in Drive';
}

// Path: _achievements._types._reactWithoutRead
class _StringsAchievementsTypesReactWithoutReadEnUs {
	_StringsAchievementsTypesReactWithoutReadEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Did you really read that?';
	String get description => 'React on a note that\'s over 100 characters long within 3 seconds of it being posted';
}

// Path: _achievements._types._clickedClickHere
class _StringsAchievementsTypesClickedClickHereEnUs {
	_StringsAchievementsTypesClickedClickHereEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Click here';
	String get description => 'You\'ve clicked here';
}

// Path: _achievements._types._justPlainLucky
class _StringsAchievementsTypesJustPlainLuckyEnUs {
	_StringsAchievementsTypesJustPlainLuckyEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Just Plain Lucky';
	String get description => 'Has a chance to be obtained with a probability of 0.005% every 10 seconds';
}

// Path: _achievements._types._setNameToSyuilo
class _StringsAchievementsTypesSetNameToSyuiloEnUs {
	_StringsAchievementsTypesSetNameToSyuiloEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'God Complex';
	String get description => 'Set your name to "syuilo"';
}

// Path: _achievements._types._passedSinceAccountCreated1
class _StringsAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated1EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'One Year Anniversary';
	String get description => 'One year has passed since your account was created';
}

// Path: _achievements._types._passedSinceAccountCreated2
class _StringsAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated2EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Two Year Anniversary';
	String get description => 'Two years have passed since your account was created';
}

// Path: _achievements._types._passedSinceAccountCreated3
class _StringsAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated3EnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Three Year Anniversary';
	String get description => 'Three years have passed since your account was created';
}

// Path: _achievements._types._loggedInOnBirthday
class _StringsAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsAchievementsTypesLoggedInOnBirthdayEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Happy Birthday';
	String get description => 'Log in on your birthday';
}

// Path: _achievements._types._loggedInOnNewYearsDay
class _StringsAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsAchievementsTypesLoggedInOnNewYearsDayEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Happy New Year!';
	String get description => 'Logged in on the first day of the year';
	String get flavor => 'To another great year on this instance';
}

// Path: _achievements._types._cookieClicked
class _StringsAchievementsTypesCookieClickedEnUs {
	_StringsAchievementsTypesCookieClickedEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'A game in which you click cookies';
	String get description => 'Clicked the cookie';
	String get flavor => 'Wait, are you on the correct website?';
}

// Path: _achievements._types._brainDiver
class _StringsAchievementsTypesBrainDiverEnUs {
	_StringsAchievementsTypesBrainDiverEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get title => 'Brain Diver';
	String get description => 'Post the link to Brain Diver';
	String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: _pages.blocks._note
class _StringsPagesBlocksNoteEnUs {
	_StringsPagesBlocksNoteEnUs._(this._root);

	final _StringsEnUs _root; // ignore: unused_field

	// Translations
	String get id => 'Note ID';
	String get idDescription => 'You can alternatively paste the note URL here.';
	String get detailed => 'Detailed view';
}

// Path: <root>
class _StringsJaJp extends _StringsEnUs {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJaJp.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.jaJp,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja-JP>.
	@override final TranslationMetadata<AppLocale, _StringsEnUs> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsJaJp _root = this; // ignore: unused_field

	// Translations
	@override String get _lang_ => '日本語';
	@override String get headlineMisskey => 'ノートでつながるネットワーク';
	@override String get introMisskey => 'ようこそ！Misskeyは、オープンソースの分散型マイクロブログサービスです。\n「ノート」を作成して、いま起こっていることを共有したり、あなたについて皆に発信しよう📡\n「リアクション」機能で、皆のノートに素早く反応を追加することもできます👍\n新しい世界を探検しよう🚀';
	@override String get poweredByMisskeyDescription => '{name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつです。';
	@override String get monthAndDay => '{month}月 {day}日';
	@override String get search => '検索';
	@override String get notifications => '通知';
	@override String get username => 'ユーザー名';
	@override String get password => 'パスワード';
	@override String get forgotPassword => 'パスワードを忘れた';
	@override String get fetchingAsApObject => '連合に照会中';
	@override String get ok => 'OK';
	@override String get gotIt => 'わかった';
	@override String get cancel => 'キャンセル';
	@override String get noThankYou => 'やめておく';
	@override String get enterUsername => 'ユーザー名を入力';
	@override String get renotedBy => '{user}がRenote';
	@override String get noNotes => 'ノートはありません';
	@override String get noNotifications => '通知はありません';
	@override String get instance => 'サーバー';
	@override String get settings => '設定';
	@override String get notificationSettings => '通知の設定';
	@override String get basicSettings => '基本設定';
	@override String get otherSettings => 'その他の設定';
	@override String get openInWindow => 'ウィンドウで開く';
	@override String get profile => 'プロフィール';
	@override String get timeline => 'タイムライン';
	@override String get noAccountDescription => '自己紹介はありません';
	@override String get login => 'ログイン';
	@override String get loggingIn => 'ログイン中';
	@override String get logout => 'ログアウト';
	@override String get signup => '新規登録';
	@override String get uploading => 'アップロード中';
	@override String get save => '保存';
	@override String get users => 'ユーザー';
	@override String get addUser => 'ユーザーを追加';
	@override String get favorite => 'お気に入り';
	@override String get favorites => 'お気に入り';
	@override String get unfavorite => 'お気に入り解除';
	@override String get favorited => 'お気に入りに登録しました。';
	@override String get alreadyFavorited => '既にお気に入りに登録されています。';
	@override String get cantFavorite => 'お気に入りに登録できませんでした。';
	@override String get pin => 'ピン留め';
	@override String get unpin => 'ピン留め解除';
	@override String get copyContent => '内容をコピー';
	@override String get copyLink => 'リンクをコピー';
	@override String get delete => '削除';
	@override String get deleteAndEdit => '削除して編集';
	@override String get deleteAndEditConfirm => 'このノートを削除してもう一度編集しますか？このノートへのリアクション、Renote、返信も全て削除されます。';
	@override String get addToList => 'リストに追加';
	@override String get sendMessage => 'メッセージを送信';
	@override String get copyRSS => 'RSSをコピー';
	@override String get copyUsername => 'ユーザー名をコピー';
	@override String get copyUserId => 'ユーザーIDをコピー';
	@override String get copyNoteId => 'ノートIDをコピー';
	@override String get searchUser => 'ユーザーを検索';
	@override String get reply => '返信';
	@override String get loadMore => 'もっと見る';
	@override String get showMore => 'もっと見る';
	@override String get showLess => '閉じる';
	@override String get youGotNewFollower => 'フォローされました';
	@override String get receiveFollowRequest => 'フォローリクエストされました';
	@override String get followRequestAccepted => 'フォローが承認されました';
	@override String get mention => 'メンション';
	@override String get mentions => 'あなた宛て';
	@override String get directNotes => 'ダイレクト投稿';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get export => 'エクスポート';
	@override String get files => 'ファイル';
	@override String get download => 'ダウンロード';
	@override String get driveFileDeleteConfirm => 'ファイル「{name}」を削除しますか？このファイルを使用した全てのコンテンツからも削除されます。';
	@override String get unfollowConfirm => '{name}のフォローを解除しますか？';
	@override String get exportRequested => 'エクスポートをリクエストしました。これには時間がかかる場合があります。エクスポートが終わると、「ドライブ」に追加されます。';
	@override String get importRequested => 'インポートをリクエストしました。これには時間がかかる場合があります。';
	@override String get lists => 'リスト';
	@override String get noLists => 'リストはありません';
	@override String get note => 'ノート';
	@override String get notes => 'ノート';
	@override String get following => 'フォロー';
	@override String get followers => 'フォロワー';
	@override String get followsYou => 'フォローされています';
	@override String get createList => 'リスト作成';
	@override String get manageLists => 'リストの管理';
	@override String get error => 'エラー';
	@override String get somethingHappened => '問題が発生しました';
	@override String get retry => '再試行';
	@override String get pageLoadError => 'ページの読み込みに失敗しました。';
	@override String get pageLoadErrorDescription => 'これは通常、ネットワークまたはブラウザキャッシュが原因です。キャッシュをクリアするか、しばらく待ってから再度試してください。';
	@override String get serverIsDead => 'サーバーの応答がありません。しばらく待ってから再度試してください。';
	@override String get youShouldUpgradeClient => 'このページを表示するためには、リロードして新しいバージョンのクライアントをご利用ください。';
	@override String get enterListName => 'リスト名を入力';
	@override String get privacy => 'プライバシー';
	@override String get makeFollowManuallyApprove => 'フォローを承認制にする';
	@override String get defaultNoteVisibility => 'デフォルトの公開範囲';
	@override String get follow => 'フォロー';
	@override String get followRequest => 'フォロー申請';
	@override String get followRequests => 'フォロー申請';
	@override String get unfollow => 'フォロー解除';
	@override String get followRequestPending => 'フォロー許可待ち';
	@override String get enterEmoji => '絵文字を入力';
	@override String get renote => 'Renote';
	@override String get unrenote => 'Renote解除';
	@override String get renoted => 'Renoteしました。';
	@override String get cantRenote => 'この投稿はRenoteできません。';
	@override String get cantReRenote => 'RenoteをRenoteすることはできません。';
	@override String get quote => '引用';
	@override String get inChannelRenote => 'チャンネル内Renote';
	@override String get inChannelQuote => 'チャンネル内引用';
	@override String get pinnedNote => 'ピン留めされたノート';
	@override String get pinned => 'ピン留め';
	@override String get you => 'あなた';
	@override String get clickToShow => 'クリックして表示';
	@override String get sensitive => '閲覧注意';
	@override String get add => '追加';
	@override String get reaction => 'リアクション';
	@override String get reactions => 'リアクション';
	@override String get reactionSetting => 'ピッカーに表示するリアクション';
	@override String get reactionSettingDescription2 => 'ドラッグして並び替え、クリックして削除、＋を押して追加します。';
	@override String get rememberNoteVisibility => '公開範囲を記憶する';
	@override String get attachCancel => '添付取り消し';
	@override String get markAsSensitive => '閲覧注意にする';
	@override String get unmarkAsSensitive => '閲覧注意を解除する';
	@override String get enterFileName => 'ファイル名を入力';
	@override String get mute => 'ミュート';
	@override String get unmute => 'ミュート解除';
	@override String get renoteMute => 'リノートをミュート';
	@override String get renoteUnmute => 'リノートのミュートを解除';
	@override String get block => 'ブロック';
	@override String get unblock => 'ブロック解除';
	@override String get suspend => '凍結';
	@override String get unsuspend => '解凍';
	@override String get blockConfirm => 'ブロックしますか？';
	@override String get unblockConfirm => 'ブロック解除しますか？';
	@override String get suspendConfirm => '凍結しますか？';
	@override String get unsuspendConfirm => '解凍しますか？';
	@override String get selectList => 'リストを選択';
	@override String get selectChannel => 'チャンネルを選択';
	@override String get selectAntenna => 'アンテナを選択';
	@override String get selectWidget => 'ウィジェットを選択';
	@override String get editWidgets => 'ウィジェットを編集';
	@override String get editWidgetsExit => '編集を終了';
	@override String get customEmojis => 'カスタム絵文字';
	@override String get emoji => '絵文字';
	@override String get emojis => '絵文字';
	@override String get emojiName => '絵文字名';
	@override String get emojiUrl => '絵文字画像URL';
	@override String get addEmoji => '絵文字を追加';
	@override String get settingGuide => 'おすすめ設定';
	@override String get cacheRemoteFiles => 'リモートのファイルをキャッシュする';
	@override String get cacheRemoteFilesDescription => 'この設定を無効にすると、リモートファイルをキャッシュせず直リンクするようになります。サーバーのストレージを節約できますが、サムネイルが生成されないので通信量が増加します。';
	@override String get flagAsBot => 'Botとして設定';
	@override String get flagAsBotDescription => 'このアカウントがプログラムによって運用される場合は、このフラグをオンにします。オンにすると、反応の連鎖を防ぐためのフラグとして他の開発者に役立ったり、Misskeyのシステム上での扱いがBotに合ったものになります。';
	@override String get flagAsCat => 'にゃああああああああああああああ！！！！！！！！！！！！';
	@override String get flagAsCatDescription => 'にゃにゃにゃ？？';
	@override String get flagShowTimelineReplies => 'タイムラインにノートへの返信を表示する';
	@override String get flagShowTimelineRepliesDescription => 'オンにすると、タイムラインにユーザーのノート以外にもそのユーザーの他のノートへの返信を表示します。';
	@override String get autoAcceptFollowed => 'フォロー中ユーザーからのフォロリクを自動承認';
	@override String get addAccount => 'アカウントを追加';
	@override String get reloadAccountsList => 'アカウントリストの情報を更新';
	@override String get loginFailed => 'ログインに失敗しました';
	@override String get showOnRemote => 'リモートで表示';
	@override String get general => '全般';
	@override String get wallpaper => '壁紙';
	@override String get setWallpaper => '壁紙を設定';
	@override String get removeWallpaper => '壁紙を削除';
	@override String get searchWith => '検索: {q}';
	@override String get youHaveNoLists => 'リストがありません';
	@override String get followConfirm => '{name}をフォローしますか？';
	@override String get proxyAccount => 'プロキシアカウント';
	@override String get proxyAccountDescription => 'プロキシアカウントは、特定の条件下でユーザーのリモートフォローを代行するアカウントです。例えば、ユーザーがリモートユーザーをリストに入れたとき、リストに入れられたユーザーを誰もフォローしていないとアクティビティがサーバーに配達されないため、代わりにプロキシアカウントがフォローするようにします。';
	@override String get host => 'ホスト';
	@override String get selectUser => 'ユーザーを選択';
	@override String get recipient => '宛先';
	@override String get annotation => '注釈';
	@override String get federation => '連合';
	@override String get instances => 'サーバー';
	@override String get registeredAt => '初観測';
	@override String get latestRequestReceivedAt => '直近のリクエスト受信';
	@override String get latestStatus => '直近のステータス';
	@override String get storageUsage => 'ストレージ使用量';
	@override String get charts => 'チャート';
	@override String get perHour => '1時間ごと';
	@override String get perDay => '1日ごと';
	@override String get stopActivityDelivery => 'アクティビティの配送を停止';
	@override String get blockThisInstance => 'このサーバーをブロック';
	@override String get operations => '操作';
	@override String get software => 'ソフトウェア';
	@override String get version => 'バージョン';
	@override String get metadata => 'メタデータ';
	@override String get withNFiles => '{n}つのファイル';
	@override String get monitor => 'モニター';
	@override String get jobQueue => 'ジョブキュー';
	@override String get cpuAndMemory => 'CPUとメモリ';
	@override String get network => 'ネットワーク';
	@override String get disk => 'ディスク';
	@override String get instanceInfo => 'サーバー情報';
	@override String get statistics => '統計';
	@override String get clearQueue => 'キューをクリア';
	@override String get clearQueueConfirmTitle => 'キューをクリアしますか？';
	@override String get clearQueueConfirmText => '未配達の投稿は配送されなくなります。通常この操作を行う必要はありません。';
	@override String get clearCachedFiles => 'キャッシュをクリア';
	@override String get clearCachedFilesConfirm => 'キャッシュされたリモートファイルをすべて削除しますか？';
	@override String get blockedInstances => 'ブロックしたサーバー';
	@override String get blockedInstancesDescription => 'ブロックしたいサーバーのホストを改行で区切って設定します。ブロックされたサーバーは、このサーバーとやり取りできなくなります。サブドメインもブロックされます。';
	@override String get muteAndBlock => 'ミュートとブロック';
	@override String get mutedUsers => 'ミュートしたユーザー';
	@override String get blockedUsers => 'ブロックしたユーザー';
	@override String get noUsers => 'ユーザーはいません';
	@override String get editProfile => 'プロフィールを編集';
	@override String get noteDeleteConfirm => 'このノートを削除しますか？';
	@override String get pinLimitExceeded => 'これ以上ピン留めできません';
	@override String get intro => 'Misskeyのインストールが完了しました！管理者アカウントを作成しましょう。';
	@override String get done => '完了';
	@override String get processing => '処理中';
	@override String get preview => 'プレビュー';
	@override String get default_ => 'デフォルト';
	@override String get defaultValueIs => 'デフォルト: {value}';
	@override String get noCustomEmojis => '絵文字はありません';
	@override String get noJobs => 'ジョブはありません';
	@override String get federating => '連合中';
	@override String get blocked => 'ブロック中';
	@override String get suspended => '配信停止';
	@override String get all => '全て';
	@override String get subscribing => '購読中';
	@override String get publishing => '配信中';
	@override String get notResponding => '応答なし';
	@override String get instanceFollowing => 'サーバーのフォロー';
	@override String get instanceFollowers => 'サーバーのフォロワー';
	@override String get instanceUsers => 'サーバーのユーザー';
	@override String get changePassword => 'パスワードを変更';
	@override String get security => 'セキュリティ';
	@override String get retypedNotMatch => '入力が一致しません。';
	@override String get currentPassword => '現在のパスワード';
	@override String get newPassword => '新しいパスワード';
	@override String get newPasswordRetype => '新しいパスワード(再入力)';
	@override String get attachFile => 'ファイルを添付';
	@override String get more => 'もっと！';
	@override String get featured => 'ハイライト';
	@override String get usernameOrUserId => 'ユーザー名かユーザーID';
	@override String get noSuchUser => 'ユーザーが見つかりません';
	@override String get lookup => '照会';
	@override String get announcements => 'お知らせ';
	@override String get imageUrl => '画像URL';
	@override String get remove => '削除';
	@override String get removed => '削除しました';
	@override String get removeAreYouSure => '「{x}」を削除しますか？';
	@override String get deleteAreYouSure => '「{x}」を削除しますか？';
	@override String get resetAreYouSure => 'リセットしますか？';
	@override String get saved => '保存しました';
	@override String get messaging => 'チャット';
	@override String get upload => 'アップロード';
	@override String get keepOriginalUploading => 'オリジナル画像を保持';
	@override String get keepOriginalUploadingDescription => '画像をアップロードする時にオリジナル版を保持します。オフにするとアップロード時にブラウザでWeb公開用画像を生成します。';
	@override String get fromDrive => 'ドライブから';
	@override String get fromUrl => 'URLから';
	@override String get uploadFromUrl => 'URLアップロード';
	@override String get uploadFromUrlDescription => 'アップロードしたいファイルのURL';
	@override String get uploadFromUrlRequested => 'アップロードをリクエストしました';
	@override String get uploadFromUrlMayTakeTime => 'アップロードが完了するまで時間がかかる場合があります。';
	@override String get explore => 'みつける';
	@override String get messageRead => '既読';
	@override String get noMoreHistory => 'これより過去の履歴はありません';
	@override String get startMessaging => 'チャットを開始';
	@override String get nUsersRead => '{n}人が読みました';
	@override String get agreeTo => '{x}に同意';
	@override String get agree => '同意する';
	@override String get agreeBelow => '下記に同意する';
	@override String get basicNotesBeforeCreateAccount => '基本的な注意事項';
	@override String get termsOfService => '利用規約';
	@override String get start => '始める';
	@override String get home => 'ホーム';
	@override String get remoteUserCaution => 'リモートユーザーのため、情報が不完全です。';
	@override String get activity => 'アクティビティ';
	@override String get images => '画像';
	@override String get image => '画像';
	@override String get birthday => '誕生日';
	@override String get yearsOld => '{age}歳';
	@override String get registeredDate => '登録日';
	@override String get location => '場所';
	@override String get theme => 'テーマ';
	@override String get themeForLightMode => 'ライトモードで使うテーマ';
	@override String get themeForDarkMode => 'ダークモードで使うテーマ';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get lightThemes => '明るいテーマ';
	@override String get darkThemes => '暗いテーマ';
	@override String get syncDeviceDarkMode => 'デバイスのダークモードと同期する';
	@override String get drive => 'ドライブ';
	@override String get fileName => 'ファイル名';
	@override String get selectFile => 'ファイルを選択';
	@override String get selectFiles => 'ファイルを選択';
	@override String get selectFolder => 'フォルダーを選択';
	@override String get selectFolders => 'フォルダーを選択';
	@override String get renameFile => 'ファイル名を変更';
	@override String get folderName => 'フォルダー名';
	@override String get createFolder => 'フォルダーを作成';
	@override String get renameFolder => 'フォルダー名を変更';
	@override String get deleteFolder => 'フォルダーを削除';
	@override String get addFile => 'ファイルを追加';
	@override String get emptyDrive => 'ドライブは空です';
	@override String get emptyFolder => 'フォルダーは空です';
	@override String get unableToDelete => '削除できません';
	@override String get inputNewFileName => '新しいファイル名を入力してください';
	@override String get inputNewDescription => '新しいキャプションを入力してください';
	@override String get inputNewFolderName => '新しいフォルダ名を入力してください';
	@override String get circularReferenceFolder => '移動先のフォルダーは、移動するフォルダーのサブフォルダーです。';
	@override String get hasChildFilesOrFolders => 'このフォルダは空でないため、削除できません。';
	@override String get copyUrl => 'URLをコピー';
	@override String get rename => '名前を変更';
	@override String get avatar => 'アイコン';
	@override String get banner => 'バナー';
	@override String get nsfw => '閲覧注意';
	@override String get whenServerDisconnected => 'サーバーとの接続が失われたとき';
	@override String get disconnectedFromServer => 'サーバーから切断されました';
	@override String get reload => 'リロード';
	@override String get doNothing => 'なにもしない';
	@override String get reloadConfirm => 'リロードしますか？';
	@override String get watch => 'ウォッチ';
	@override String get unwatch => 'ウォッチ解除';
	@override String get accept => '許可';
	@override String get reject => '拒否';
	@override String get normal => '正常';
	@override String get instanceName => 'サーバー名';
	@override String get instanceDescription => 'サーバーの紹介';
	@override String get maintainerName => '管理者の名前';
	@override String get maintainerEmail => '管理者のメールアドレス';
	@override String get tosUrl => '利用規約URL';
	@override String get thisYear => '今年';
	@override String get thisMonth => '今月';
	@override String get today => '今日';
	@override String get dayX => '{day}日';
	@override String get monthX => '{month}月';
	@override String get yearX => '{year}年';
	@override String get pages => 'ページ';
	@override String get integration => '連携';
	@override String get connectService => '接続する';
	@override String get disconnectService => '切断する';
	@override String get enableLocalTimeline => 'ローカルタイムラインを有効にする';
	@override String get enableGlobalTimeline => 'グローバルタイムラインを有効にする';
	@override String get disablingTimelinesInfo => 'これらのタイムラインを無効化しても、利便性のため管理者およびモデレーターは引き続き利用することができます。';
	@override String get registration => '登録';
	@override String get enableRegistration => '誰でも新規登録できるようにする';
	@override String get invite => '招待';
	@override String get driveCapacityPerLocalAccount => 'ローカルユーザーひとりあたりのドライブ容量';
	@override String get driveCapacityPerRemoteAccount => 'リモートユーザーひとりあたりのドライブ容量';
	@override String get inMb => 'メガバイト単位';
	@override String get iconUrl => 'アイコン画像のURL (faviconなど)';
	@override String get bannerUrl => 'バナー画像のURL';
	@override String get backgroundImageUrl => '背景画像のURL';
	@override String get basicInfo => '基本情報';
	@override String get pinnedUsers => 'ピン留めユーザー';
	@override String get pinnedUsersDescription => '「みつける」ページなどにピン留めしたいユーザーを改行で区切って記述します。';
	@override String get pinnedPages => 'ピン留めページ';
	@override String get pinnedPagesDescription => 'サーバーのトップページにピン留めしたいページのパスを改行で区切って記述します。';
	@override String get pinnedClipId => 'ピン留めするクリップのID';
	@override String get pinnedNotes => 'ピン留めされたノート';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptchaを有効にする';
	@override String get hcaptchaSiteKey => 'サイトキー';
	@override String get hcaptchaSecretKey => 'シークレットキー';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHAを有効にする';
	@override String get recaptchaSiteKey => 'サイトキー';
	@override String get recaptchaSecretKey => 'シークレットキー';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstileを有効にする';
	@override String get turnstileSiteKey => 'サイトキー';
	@override String get turnstileSecretKey => 'シークレットキー';
	@override String get avoidMultiCaptchaConfirm => '複数のCaptchaを使用すると干渉を起こす可能性があります。他のCaptchaを無効にしますか？キャンセルして複数のCaptchaを有効化したままにすることも可能です。';
	@override String get antennas => 'アンテナ';
	@override String get manageAntennas => 'アンテナの管理';
	@override String get name => '名前';
	@override String get antennaSource => '受信ソース';
	@override String get antennaKeywords => '受信キーワード';
	@override String get antennaExcludeKeywords => '除外キーワード';
	@override String get antennaKeywordsDescription => 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります';
	@override String get notifyAntenna => '新しいノートを通知する';
	@override String get withFileAntenna => 'ファイルが添付されたノートのみ';
	@override String get enableServiceworker => 'ブラウザへのプッシュ通知を有効にする';
	@override String get antennaUsersDescription => 'ユーザー名を改行で区切って指定します';
	@override String get caseSensitive => '大文字小文字を区別する';
	@override String get withReplies => '返信を含む';
	@override String get connectedTo => '次のアカウントに接続されています';
	@override String get notesAndReplies => '投稿と返信';
	@override String get withFiles => 'ファイル付き';
	@override String get silence => 'サイレンス';
	@override String get silenceConfirm => 'サイレンスしますか？';
	@override String get unsilence => 'サイレンス解除';
	@override String get unsilenceConfirm => 'サイレンス解除しますか？';
	@override String get popularUsers => '人気のユーザー';
	@override String get recentlyUpdatedUsers => '最近投稿したユーザー';
	@override String get recentlyRegisteredUsers => '最近登録したユーザー';
	@override String get recentlyDiscoveredUsers => '最近発見されたユーザー';
	@override String get exploreUsersCount => '{count}のユーザーがいます';
	@override String get exploreFediverse => 'Fediverseを探索';
	@override String get popularTags => '人気のタグ';
	@override String get userList => 'リスト';
	@override String get about => '情報';
	@override String get aboutMisskey => 'Misskeyについて';
	@override String get administrator => '管理者';
	@override String get token => '確認コード';
	@override String get twofa => '二要素認証';
	@override String get totp => '認証アプリ';
	@override String get totpDescription => '認証アプリを使ってワンタイムパスワードを入力';
	@override String get moderator => 'モデレーター';
	@override String get moderation => 'モデレーション';
	@override String get nUsersMentioned => '{n}人が投稿';
	@override String get securityKeyAndPasskey => 'セキュリティキー・パスキー';
	@override String get securityKey => 'セキュリティキー';
	@override String get lastUsed => '最後の使用';
	@override String get lastUsedAt => '最後の使用: {t}';
	@override String get unregister => '登録を解除';
	@override String get passwordLessLogin => 'パスワードレスログイン';
	@override String get passwordLessLoginDescription => 'パスワードを使用せず、セキュリティキーやパスキーなどのみでログインします';
	@override String get resetPassword => 'パスワードをリセット';
	@override String get newPasswordIs => '新しいパスワードは「{password}」です';
	@override String get reduceUiAnimation => 'UIのアニメーションを減らす';
	@override String get share => '共有';
	@override String get notFound => '見つかりません';
	@override String get notFoundDescription => '指定されたURLに該当するページはありませんでした。';
	@override String get uploadFolder => '既定アップロード先';
	@override String get cacheClear => 'キャッシュを削除';
	@override String get markAsReadAllNotifications => 'すべての通知を既読にする';
	@override String get markAsReadAllUnreadNotes => 'すべての投稿を既読にする';
	@override String get markAsReadAllTalkMessages => 'すべてのチャットを既読にする';
	@override String get help => 'ヘルプ';
	@override String get inputMessageHere => 'ここにメッセージを入力';
	@override String get close => '閉じる';
	@override String get invites => '招待';
	@override String get members => 'メンバー';
	@override String get transfer => '譲渡';
	@override String get title => 'タイトル';
	@override String get text => 'テキスト';
	@override String get enable => '有効にする';
	@override String get next => '次';
	@override String get retype => '再入力';
	@override String get noteOf => '{user}のノート';
	@override String get quoteAttached => '引用付き';
	@override String get quoteQuestion => '引用として添付しますか？';
	@override String get noMessagesYet => 'まだチャットはありません';
	@override String get newMessageExists => '新しいメッセージがあります';
	@override String get onlyOneFileCanBeAttached => 'メッセージに添付できるファイルはひとつです';
	@override String get signinRequired => '続行する前に、サインアップまたはサインインが必要です';
	@override String get invitations => '招待';
	@override String get invitationCode => '招待コード';
	@override String get checking => '確認しています';
	@override String get available => '利用できます';
	@override String get unavailable => '利用できません';
	@override String get usernameInvalidFormat => 'a~z、A~Z、0~9、_が使えます';
	@override String get tooShort => '短すぎます';
	@override String get tooLong => '長すぎます';
	@override String get weakPassword => '弱いパスワード';
	@override String get normalPassword => '普通のパスワード';
	@override String get strongPassword => '強いパスワード';
	@override String get passwordMatched => '一致しました';
	@override String get passwordNotMatched => '一致していません';
	@override String get signinWith => '{x}でログイン';
	@override String get signinFailed => 'ログインできませんでした。ユーザー名とパスワードを確認してください。';
	@override String get or => 'もしくは';
	@override String get language => '言語';
	@override String get uiLanguage => 'UIの表示言語';
	@override String get aboutX => '{x}について';
	@override String get emojiStyle => '絵文字のスタイル';
	@override String get native => 'ネイティブ';
	@override String get disableDrawer => 'メニューをドロワーで表示しない';
	@override String get showNoteActionsOnlyHover => 'ノートのアクションをホバー時のみ表示する';
	@override String get noHistory => '履歴はありません';
	@override String get signinHistory => 'ログイン履歴';
	@override String get enableAdvancedMfm => '高度なMFMを有効にする';
	@override String get enableAnimatedMfm => '動きのあるMFMを有効にする';
	@override String get doing => 'やっています';
	@override String get category => 'カテゴリ';
	@override String get tags => 'タグ';
	@override String get docSource => 'このドキュメントのソース';
	@override String get createAccount => 'アカウントを作成';
	@override String get existingAccount => '既存のアカウント';
	@override String get regenerate => '再生成';
	@override String get fontSize => 'フォントサイズ';
	@override String get mediaListWithOneImageAppearance => '画像が1枚のみのメディアリストの高さ';
	@override String get limitTo => '{x}を上限に';
	@override String get noFollowRequests => 'フォロー申請はありません';
	@override String get openImageInNewTab => '画像を新しいタブで開く';
	@override String get dashboard => 'ダッシュボード';
	@override String get local => 'ローカル';
	@override String get remote => 'リモート';
	@override String get total => '合計';
	@override String get weekOverWeekChanges => '前週比';
	@override String get dayOverDayChanges => '前日比';
	@override String get appearance => 'アピアランス';
	@override String get clientSettings => 'クライアント設定';
	@override String get accountSettings => 'アカウント設定';
	@override String get promotion => 'プロモーション';
	@override String get promote => 'プロモート';
	@override String get numberOfDays => '日数';
	@override String get hideThisNote => 'このノートを非表示';
	@override String get showFeaturedNotesInTimeline => 'タイムラインにおすすめのノートを表示する';
	@override String get objectStorage => 'オブジェクトストレージ';
	@override String get useObjectStorage => 'オブジェクトストレージを使用';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '参照に使用するURL。CDNやProxyを使用している場合はそのURL、S3: \'https://<bucket>.s3.amazonaws.com\'、GCS等: \'https://storage.googleapis.com/<bucket>\'。';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => '使用サービスのbucket名を指定してください。';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'このprefixのディレクトリ下に格納されます。';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'S3の場合は空、それ以外の場合は各サービスのendpointを指定してください。\'<host>\'または\'<host>:<port>\'のように指定します。';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '\'xx-east-1\'のようなregionを指定してください。使用サービスにregionの概念がない場合は\'us-east-1\'にしてください。AWS設定ファイルまたは環境変数を参照する場合は空にしてください。';
	@override String get objectStorageUseSSL => 'SSLを使用する';
	@override String get objectStorageUseSSLDesc => 'API接続にhttpsを使用しない場合はオフにしてください';
	@override String get objectStorageUseProxy => 'Proxyを利用する';
	@override String get objectStorageUseProxyDesc => 'API接続にproxyを利用しない場合はオフにしてください';
	@override String get objectStorageSetPublicRead => 'アップロード時に\'public-read\'を設定する';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyleを有効にすると、バケット名をURLのホスト名ではなくパスの一部として指定することを強制します。セルフホストされたMinioなどの使用時に有効にする必要がある場合があります。';
	@override String get serverLogs => 'サーバーログ';
	@override String get deleteAll => '全て削除';
	@override String get showFixedPostForm => 'タイムライン上部に投稿フォームを表示する';
	@override String get showFixedPostFormInChannel => 'タイムライン上部に投稿フォームを表示する(チャンネル)';
	@override String get newNoteRecived => '新しいノートがあります';
	@override String get sounds => 'サウンド';
	@override String get sound => 'サウンド';
	@override String get listen => '聴く';
	@override String get none => 'なし';
	@override String get showInPage => 'ページで表示';
	@override String get popout => 'ポップアウト';
	@override String get volume => '音量';
	@override String get masterVolume => 'マスター音量';
	@override String get details => '詳細';
	@override String get chooseEmoji => '絵文字を選択';
	@override String get unableToProcess => '操作を完了できません';
	@override String get recentUsed => '最近使用';
	@override String get install => 'インストール';
	@override String get uninstall => 'アンインストール';
	@override String get installedApps => 'インストールされたアプリ';
	@override String get nothing => 'ありません';
	@override String get installedDate => 'インストール日時';
	@override String get lastUsedDate => '最終使用日時';
	@override String get state => '状態';
	@override String get sort => 'ソート';
	@override String get ascendingOrder => '昇順';
	@override String get descendingOrder => '降順';
	@override String get scratchpad => 'スクラッチパッド';
	@override String get scratchpadDescription => 'スクラッチパッドは、AiScriptの実験環境を提供します。Misskeyと対話するコードの記述、実行、結果の確認ができます。';
	@override String get output => '出力';
	@override String get script => 'スクリプト';
	@override String get disablePagesScript => 'Pagesのスクリプトを無効にする';
	@override String get updateRemoteUser => 'リモートユーザー情報の更新';
	@override String get deleteAllFiles => 'すべてのファイルを削除';
	@override String get deleteAllFilesConfirm => 'すべてのファイルを削除しますか？';
	@override String get removeAllFollowing => 'フォローを全解除';
	@override String get removeAllFollowingDescription => '{host}からのフォローをすべて解除します。そのサーバーがもう存在しなくなった場合などに実行してください。';
	@override String get userSuspended => 'このユーザーは凍結されています。';
	@override String get userSilenced => 'このユーザーはサイレンスされています。';
	@override String get yourAccountSuspendedTitle => 'アカウントが凍結されています';
	@override String get yourAccountSuspendedDescription => 'このアカウントは、サーバーの利用規約に違反したなどの理由により、凍結されています。詳細については管理者までお問い合わせください。新しいアカウントを作らないでください。';
	@override String get tokenRevoked => 'トークンが無効です';
	@override String get tokenRevokedDescription => 'ログイントークンが失効しています。ログインし直してください。';
	@override String get accountDeleted => 'アカウントは削除されています';
	@override String get accountDeletedDescription => 'このアカウントは削除されています。';
	@override String get menu => 'メニュー';
	@override String get divider => '分割線';
	@override String get addItem => '項目を追加';
	@override String get rearrange => '並び替え';
	@override String get relays => 'リレー';
	@override String get addRelay => 'リレーの追加';
	@override String get inboxUrl => 'inboxのURL';
	@override String get addedRelays => '追加済みのリレー';
	@override String get serviceworkerInfo => 'プッシュ通知を行うには有効にする必要があります。';
	@override String get deletedNote => '削除された投稿';
	@override String get invisibleNote => '非公開の投稿';
	@override String get enableInfiniteScroll => '自動でもっと見る';
	@override String get visibility => '公開範囲';
	@override String get poll => 'アンケート';
	@override String get useCw => '内容を隠す';
	@override String get enablePlayer => 'プレイヤーを開く';
	@override String get disablePlayer => 'プレイヤーを閉じる';
	@override String get expandTweet => 'ツイートを展開する';
	@override String get themeEditor => 'テーマエディター';
	@override String get description => '説明';
	@override String get describeFile => 'キャプションを付ける';
	@override String get enterFileDescription => 'キャプションを入力';
	@override String get author => '作者';
	@override String get leaveConfirm => '未保存の変更があります。破棄しますか？';
	@override String get manage => '管理';
	@override String get plugins => 'プラグイン';
	@override String get preferencesBackups => '設定のバックアップ';
	@override String get deck => 'デッキ';
	@override String get undeck => 'デッキ解除';
	@override String get useBlurEffectForModal => 'モーダルにぼかし効果を使用';
	@override String get useFullReactionPicker => 'フル機能リアクションピッカーを使用';
	@override String get width => '幅';
	@override String get height => '高さ';
	@override String get large => '大';
	@override String get medium => '中';
	@override String get small => '小';
	@override String get generateAccessToken => 'アクセストークンの発行';
	@override String get permission => '権限';
	@override String get enableAll => '全て有効にする';
	@override String get disableAll => '全て無効にする';
	@override String get tokenRequested => 'アカウントへのアクセス許可';
	@override String get pluginTokenRequestedDescription => 'このプラグインはここで設定した権限を行使できるようになります。';
	@override String get notificationType => '通知の種類';
	@override String get edit => '編集';
	@override String get emailServer => 'メールサーバー';
	@override String get enableEmail => 'メール配信機能を有効化する';
	@override String get emailConfigInfo => 'メールアドレスの確認やパスワードリセットの際に使います';
	@override String get email => 'メール';
	@override String get emailAddress => 'メールアドレス';
	@override String get smtpConfig => 'SMTP サーバーの設定';
	@override String get smtpHost => 'ホスト';
	@override String get smtpPort => 'ポート';
	@override String get smtpUser => 'ユーザー名';
	@override String get smtpPass => 'パスワード';
	@override String get emptyToDisableSmtpAuth => 'ユーザー名とパスワードを空欄にすることで、SMTP認証を無効化出来ます';
	@override String get smtpSecure => 'SMTP 接続に暗黙的なSSL/TLSを使用する';
	@override String get smtpSecureInfo => 'STARTTLS使用時はオフにします。';
	@override String get testEmail => '配信テスト';
	@override String get wordMute => 'ワードミュート';
	@override String get regexpError => '正規表現エラー';
	@override String get regexpErrorDescription => '{tab}ワードミュートの{line}行目の正規表現にエラーが発生しました:';
	@override String get instanceMute => 'サーバーミュート';
	@override String get userSaysSomething => '{name}が何かを言いました';
	@override String get makeActive => 'アクティブにする';
	@override String get display => '表示';
	@override String get copy => 'コピー';
	@override String get metrics => 'メトリクス';
	@override String get overview => '概要';
	@override String get logs => 'ログ';
	@override String get delayed => '遅延';
	@override String get database => 'データベース';
	@override String get channel => 'チャンネル';
	@override String get create => '作成';
	@override String get notificationSetting => '通知設定';
	@override String get notificationSettingDesc => '表示する通知の種別を選択してください。';
	@override String get useGlobalSetting => 'グローバル設定を使う';
	@override String get useGlobalSettingDesc => 'オンにすると、アカウントの通知設定が使用されます。オフにすると、個別に設定できるようになります。';
	@override String get other => 'その他';
	@override String get regenerateLoginToken => 'ログイントークンを再生成';
	@override String get regenerateLoginTokenDescription => 'ログインに使用される内部トークンを再生成します。通常この操作を行う必要はありません。再生成すると、全てのデバイスでログアウトされます。';
	@override String get setMultipleBySeparatingWithSpace => 'スペースで区切って複数設定できます。';
	@override String get fileIdOrUrl => 'ファイルIDまたはURL';
	@override String get behavior => '動作';
	@override String get sample => 'サンプル';
	@override String get abuseReports => '通報';
	@override String get reportAbuse => '通報';
	@override String get reportAbuseOf => '{name}を通報する';
	@override String get fillAbuseReportDescription => '通報理由の詳細を記入してください。対象のノートがある場合はそのURLも記入してください。';
	@override String get abuseReported => '内容が送信されました。ご報告ありがとうございました。';
	@override String get reporter => '通報者';
	@override String get reporteeOrigin => '通報先';
	@override String get reporterOrigin => '通報元';
	@override String get forwardReport => 'リモートサーバーに通報を転送する';
	@override String get forwardReportIsAnonymous => 'リモートサーバーからはあなたの情報は見れず、匿名のシステムアカウントとして表示されます。';
	@override String get send => '送信';
	@override String get abuseMarkAsResolved => '対応済みにする';
	@override String get openInNewTab => '新しいタブで開く';
	@override String get openInSideView => 'サイドビューで開く';
	@override String get defaultNavigationBehaviour => 'デフォルトのナビゲーション';
	@override String get editTheseSettingsMayBreakAccount => 'これらの設定を編集するとアカウントが破損する可能性があります。';
	@override String get instanceTicker => 'ノートのサーバー情報';
	@override String get waitingFor => '{x}を待っています';
	@override String get random => 'ランダム';
	@override String get system => 'システム';
	@override String get switchUi => 'UI切り替え';
	@override String get desktop => 'デスクトップ';
	@override String get clip => 'クリップ';
	@override String get createNew => '新規作成';
	@override String get optional => '任意';
	@override String get createNewClip => '新しいクリップを作成';
	@override String get unclip => 'クリップ解除';
	@override String get confirmToUnclipAlreadyClippedNote => 'このノートはすでにクリップ「{name}」に含まれています。ノートをこのクリップから除外しますか？';
	@override String get public => 'パブリック';
	@override String get i18nInfo => 'Misskeyは有志によって様々な言語に翻訳されています。{link}で翻訳に協力できます。';
	@override String get manageAccessTokens => 'アクセストークンの管理';
	@override String get accountInfo => 'アカウント情報';
	@override String get notesCount => 'ノートの数';
	@override String get repliesCount => '返信した数';
	@override String get renotesCount => 'Renoteした数';
	@override String get repliedCount => '返信された数';
	@override String get renotedCount => 'Renoteされた数';
	@override String get followingCount => 'フォロー数';
	@override String get followersCount => 'フォロワー数';
	@override String get sentReactionsCount => 'リアクションした数';
	@override String get receivedReactionsCount => 'リアクションされた数';
	@override String get pollVotesCount => 'アンケートに投票した数';
	@override String get pollVotedCount => 'アンケートに投票された数';
	@override String get yes => 'はい';
	@override String get no => 'いいえ';
	@override String get driveFilesCount => 'ドライブのファイル数';
	@override String get driveUsage => 'ドライブ使用量';
	@override String get noCrawle => 'クローラーによるインデックスを拒否';
	@override String get noCrawleDescription => '外部の検索エンジンにあなたのユーザーページ、ノート、Pagesなどのコンテンツを登録(インデックス)しないよう要求します。';
	@override String get lockedAccountInfo => 'フォローを承認制にしても、ノートの公開範囲を「フォロワー」にしない限り、誰でもあなたのノートを見ることができます。';
	@override String get alwaysMarkSensitive => 'デフォルトでメディアを閲覧注意にする';
	@override String get loadRawImages => '添付画像のサムネイルをオリジナル画質にする';
	@override String get disableShowingAnimatedImages => 'アニメーション画像を再生しない';
	@override String get verificationEmailSent => '確認のメールを送信しました。メールに記載されたリンクにアクセスして、設定を完了してください。';
	@override String get notSet => '未設定';
	@override String get emailVerified => 'メールアドレスが確認されました';
	@override String get noteFavoritesCount => 'お気に入りノートの数';
	@override String get pageLikesCount => 'Pageにいいねした数';
	@override String get pageLikedCount => 'Pageにいいねされた数';
	@override String get contact => '連絡先';
	@override String get useSystemFont => 'システムのデフォルトのフォントを使う';
	@override String get clips => 'クリップ';
	@override String get experimentalFeatures => '実験的機能';
	@override String get experimental => '実験的';
	@override String get thisIsExperimentalFeature => 'これは実験的な機能です。仕様が変更されたり、正常に動作しなかったりする可能性があります。';
	@override String get developer => '開発者';
	@override String get makeExplorable => 'アカウントを見つけやすくする';
	@override String get makeExplorableDescription => 'オフにすると、「みつける」にアカウントが載らなくなります。';
	@override String get showGapBetweenNotesInTimeline => 'タイムラインのノートを離して表示';
	@override String get duplicate => '複製';
	@override String get left => '左';
	@override String get center => '中央';
	@override String get wide => '広い';
	@override String get narrow => '狭い';
	@override String get reloadToApplySetting => '設定はページリロード後に反映されます。今すぐリロードしますか？';
	@override String get needReloadToApply => '反映には再起動が必要です。';
	@override String get showTitlebar => 'タイトルバーを表示する';
	@override String get clearCache => 'キャッシュをクリア';
	@override String get onlineUsersCount => '{n}人がオンライン';
	@override String get nUsers => '{n}ユーザー';
	@override String get nNotes => '{n}ノート';
	@override String get sendErrorReports => 'エラーリポートを送信';
	@override String get sendErrorReportsDescription => 'オンにすると、問題が発生したときにエラーの詳細情報がMisskeyに共有され、ソフトウェアの品質向上に役立てることができます。エラー情報には、OSのバージョン、ブラウザの種類、行動履歴などが含まれます。';
	@override String get myTheme => 'マイテーマ';
	@override String get backgroundColor => '背景';
	@override String get accentColor => 'アクセント';
	@override String get textColor => '文字';
	@override String get saveAs => '名前を付けて保存';
	@override String get advanced => '高度';
	@override String get advancedSettings => '高度な設定';
	@override String get value => '値';
	@override String get createdAt => '作成日時';
	@override String get updatedAt => '更新日時';
	@override String get saveConfirm => '保存しますか？';
	@override String get deleteConfirm => '削除しますか？';
	@override String get invalidValue => '有効な値ではありません。';
	@override String get registry => 'レジストリ';
	@override String get closeAccount => 'アカウントを閉鎖する';
	@override String get currentVersion => '現在のバージョン';
	@override String get latestVersion => '最新のバージョン';
	@override String get youAreRunningUpToDateClient => 'お使いのクライアントは最新です。';
	@override String get newVersionOfClientAvailable => '新しいバージョンのクライアントが利用可能です。';
	@override String get usageAmount => '使用量';
	@override String get capacity => '容量';
	@override String get inUse => '使用中';
	@override String get editCode => 'コードを編集';
	@override String get apply => '適用';
	@override String get receiveAnnouncementFromInstance => 'サーバーからのお知らせを受け取る';
	@override String get emailNotification => 'メール通知';
	@override String get publish => '公開';
	@override String get inChannelSearch => 'チャンネル内検索';
	@override String get useReactionPickerForContextMenu => '右クリックでリアクションピッカーを開く';
	@override String get typingUsers => '{users}が入力中';
	@override String get jumpToSpecifiedDate => '特定の日付にジャンプ';
	@override String get showingPastTimeline => '過去のタイムラインを表示しています';
	@override String get clear => 'クリア';
	@override String get markAllAsRead => '全て既読にする';
	@override String get goBack => '戻る';
	@override String get unlikeConfirm => 'いいね解除しますか？';
	@override String get fullView => 'フルビュー';
	@override String get quitFullView => 'フルビュー解除';
	@override String get addDescription => '説明を追加';
	@override String get userPagePinTip => '個々のノートのメニューから「ピン留め」を選択することで、ここにノートを表示しておくことができます。';
	@override String get notSpecifiedMentionWarning => '宛先に含まれていないメンションがあります';
	@override String get info => '情報';
	@override String get userInfo => 'ユーザー情報';
	@override String get unknown => '不明';
	@override String get onlineStatus => 'オンライン状態';
	@override String get hideOnlineStatus => 'オンライン状態を隠す';
	@override String get hideOnlineStatusDescription => 'オンライン状態を隠すと、検索などの一部機能において利便性が低下することがあります。';
	@override String get online => 'オンライン';
	@override String get active => 'アクティブ';
	@override String get offline => 'オフライン';
	@override String get notRecommended => '非推奨';
	@override String get botProtection => 'Botプロテクション';
	@override String get instanceBlocking => 'サーバーブロック';
	@override String get selectAccount => 'アカウントを選択';
	@override String get switchAccount => 'アカウントを切り替え';
	@override String get enabled => '有効';
	@override String get disabled => '無効';
	@override String get quickAction => 'クイックアクション';
	@override String get user => 'ユーザー';
	@override String get administration => '管理';
	@override String get accounts => 'アカウント';
	@override String get switch_ => '切り替え';
	@override String get noMaintainerInformationWarning => '管理者情報が設定されていません。';
	@override String get noBotProtectionWarning => 'Botプロテクションが設定されていません。';
	@override String get configure => '設定する';
	@override String get postToGallery => 'ギャラリーへ投稿';
	@override String get postToHashtag => 'このハッシュタグで投稿';
	@override String get gallery => 'ギャラリー';
	@override String get recentPosts => '最近の投稿';
	@override String get popularPosts => '人気の投稿';
	@override String get shareWithNote => 'ノートで共有';
	@override String get ads => '広告';
	@override String get expiration => '期限';
	@override String get startingperiod => '開始期間';
	@override String get memo => 'メモ';
	@override String get priority => '優先度';
	@override String get high => '高';
	@override String get middle => '中';
	@override String get low => '低';
	@override String get emailNotConfiguredWarning => 'メールアドレスの設定がされていません。';
	@override String get ratio => '比率';
	@override String get previewNoteText => '本文をプレビュー';
	@override String get customCss => 'カスタムCSS';
	@override String get customCssWarn => 'この設定は必ず知識のある方が行ってください。不適切な設定を行うとクライアントが正常に使用できなくなる恐れがあります。';
	@override String get global => 'グローバル';
	@override String get squareAvatars => 'アイコンを四角形で表示';
	@override String get sent => '送信';
	@override String get received => '受信';
	@override String get searchResult => '検索結果';
	@override String get hashtags => 'ハッシュタグ';
	@override String get troubleshooting => 'トラブルシューティング';
	@override String get useBlurEffect => 'UIにぼかし効果を使用';
	@override String get learnMore => '詳しく';
	@override String get misskeyUpdated => 'Misskeyが更新されました！';
	@override String get whatIsNew => '更新情報を見る';
	@override String get translate => '翻訳';
	@override String get translatedFrom => '{x}から翻訳';
	@override String get accountDeletionInProgress => 'アカウントの削除が進行中です';
	@override String get usernameInfo => 'サーバー上であなたのアカウントを一意に識別するための名前。アルファベット(a~z, A~Z)、数字(0~9)、およびアンダーバー(_)が使用できます。ユーザー名は後から変更することは出来ません。';
	@override String get aiChanMode => '藍モード';
	@override String get devMode => '開発者モード';
	@override String get keepCw => 'CWを維持する';
	@override String get pubSub => 'Pub/Subのアカウント';
	@override String get lastCommunication => '直近の通信';
	@override String get resolved => '解決済み';
	@override String get unresolved => '未解決';
	@override String get breakFollow => 'フォロワーを解除';
	@override String get breakFollowConfirm => 'フォロワー解除しますか？';
	@override String get itsOn => 'オンになっています';
	@override String get itsOff => 'オフになっています';
	@override String get on => 'オン';
	@override String get off => 'オフ';
	@override String get emailRequiredForSignup => 'アカウント登録にメールアドレスを必須にする';
	@override String get unread => '未読';
	@override String get filter => 'フィルタ';
	@override String get controlPanel => 'コントロールパネル';
	@override String get manageAccounts => 'アカウントを管理';
	@override String get makeReactionsPublic => 'リアクション一覧を公開する';
	@override String get makeReactionsPublicDescription => 'あなたがしたリアクション一覧を誰でも見れるようにします。';
	@override String get classic => 'クラシック';
	@override String get muteThread => 'スレッドをミュート';
	@override String get unmuteThread => 'スレッドのミュートを解除';
	@override String get ffVisibility => 'つながりの公開範囲';
	@override String get ffVisibilityDescription => '自分のフォロー/フォロワー情報の公開範囲を設定できます。';
	@override String get continueThread => 'さらにスレッドを見る';
	@override String get deleteAccountConfirm => 'アカウントが削除されます。よろしいですか？';
	@override String get incorrectPassword => 'パスワードが間違っています。';
	@override String get voteConfirm => '「{choice}」に投票しますか？';
	@override String get hide => '隠す';
	@override String get useDrawerReactionPickerForMobile => 'モバイルデバイスのときドロワーで表示';
	@override String get welcomeBackWithName => 'おかえりなさい、{name}さん';
	@override String get clickToFinishEmailVerification => '[{ok}]を押して、メールアドレスの確認を完了してください。';
	@override String get overridedDeviceKind => 'デバイスタイプ';
	@override String get smartphone => 'スマートフォン';
	@override String get tablet => 'タブレット';
	@override String get auto => '自動';
	@override String get themeColor => 'テーマカラー';
	@override String get size => 'サイズ';
	@override String get numberOfColumn => '列の数';
	@override String get searchByGoogle => '検索';
	@override String get instanceDefaultLightTheme => 'サーバーデフォルトのライトテーマ';
	@override String get instanceDefaultDarkTheme => 'サーバーデフォルトのダークテーマ';
	@override String get instanceDefaultThemeDescription => 'オブジェクト形式のテーマコードを記入します。';
	@override String get mutePeriod => 'ミュートする期限';
	@override String get period => '期限';
	@override String get indefinitely => '無期限';
	@override String get tenMinutes => '10分';
	@override String get oneHour => '1時間';
	@override String get oneDay => '1日';
	@override String get oneWeek => '1週間';
	@override String get oneMonth => '1ヶ月';
	@override String get reflectMayTakeTime => '反映されるまで時間がかかる場合があります。';
	@override String get failedToFetchAccountInformation => 'アカウント情報の取得に失敗しました';
	@override String get rateLimitExceeded => 'レート制限を超えました';
	@override String get cropImage => '画像のクロップ';
	@override String get cropImageAsk => '画像をクロップしますか？';
	@override String get cropYes => 'クロップする';
	@override String get cropNo => 'そのまま使う';
	@override String get file => 'ファイル';
	@override String get recentNHours => '直近{n}時間';
	@override String get recentNDays => '直近{n}日';
	@override String get noEmailServerWarning => 'メールサーバーの設定がされていません。';
	@override String get thereIsUnresolvedAbuseReportWarning => '未対応の通報があります。';
	@override String get recommended => '推奨';
	@override String get check => 'チェック';
	@override String get driveCapOverrideLabel => 'このユーザーのドライブ容量上限を変更';
	@override String get driveCapOverrideCaption => '0以下を指定すると解除されます。';
	@override String get requireAdminForView => '閲覧するには管理者アカウントでログインしている必要があります。';
	@override String get isSystemAccount => 'システムにより自動で作成・管理されているアカウントです。';
	@override String get typeToConfirm => 'この操作を行うには {x} と入力してください';
	@override String get deleteAccount => 'アカウント削除';
	@override String get document => 'ドキュメント';
	@override String get numberOfPageCache => 'ページキャッシュ数';
	@override String get numberOfPageCacheDescription => '多くすると利便性が向上しますが、負荷とメモリ使用量が増えます。';
	@override String get logoutConfirm => 'ログアウトしますか？';
	@override String get lastActiveDate => '最終利用日時';
	@override String get statusbar => 'ステータスバー';
	@override String get pleaseSelect => '選択してください';
	@override String get reverse => '反転';
	@override String get colored => '色付き';
	@override String get refreshInterval => '更新間隔';
	@override String get label => 'ラベル';
	@override String get type => 'タイプ';
	@override String get speed => '速度';
	@override String get slow => '遅い';
	@override String get fast => '速い';
	@override String get sensitiveMediaDetection => 'センシティブなメディアの検出';
	@override String get localOnly => 'ローカルのみ';
	@override String get remoteOnly => 'リモートのみ';
	@override String get failedToUpload => 'アップロード失敗';
	@override String get cannotUploadBecauseInappropriate => '不適切な内容を含む可能性があると判定されたためアップロードできません。';
	@override String get cannotUploadBecauseNoFreeSpace => 'ドライブの空き容量が無いためアップロードできません。';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'ファイルサイズの制限を超えているためアップロードできません。';
	@override String get beta => 'ベータ';
	@override String get enableAutoSensitive => '自動NSFW判定';
	@override String get enableAutoSensitiveDescription => '利用可能な場合は、機械学習を利用して自動でメディアにNSFWフラグを設定します。この機能をオフにしても、サーバーによっては自動で設定されることがあります。';
	@override String get activeEmailValidationDescription => 'ユーザーのメールアドレスのバリデーションを、捨てアドかどうかや実際に通信可能かどうかなどを判定しより積極的に行います。オフにすると単に文字列として正しいかどうかのみチェックされます。';
	@override String get navbar => 'ナビゲーションバー';
	@override String get shuffle => 'シャッフル';
	@override String get account => 'アカウント';
	@override String get move => '移動';
	@override String get pushNotification => 'プッシュ通知';
	@override String get subscribePushNotification => 'プッシュ通知を有効化';
	@override String get unsubscribePushNotification => 'プッシュ通知を停止する';
	@override String get pushNotificationAlreadySubscribed => 'プッシュ通知は有効です';
	@override String get pushNotificationNotSupported => 'ブラウザかサーバーがプッシュ通知に非対応';
	@override String get sendPushNotificationReadMessage => '通知が既読になったらプッシュ通知を削除する';
	@override String get sendPushNotificationReadMessageCaption => '端末の電池消費量が増加する可能性があります。';
	@override String get windowMaximize => '最大化';
	@override String get windowMinimize => '最小化';
	@override String get windowRestore => '元に戻す';
	@override String get caption => 'キャプション';
	@override String get loggedInAsBot => 'Botアカウントでログイン中';
	@override String get tools => 'ツール';
	@override String get cannotLoad => '読み込めません';
	@override String get numberOfProfileView => 'プロフィール表示回数';
	@override String get like => 'いいね！';
	@override String get unlike => 'いいねを解除';
	@override String get numberOfLikes => 'いいね数';
	@override String get show => '表示';
	@override String get neverShow => '今後表示しない';
	@override String get remindMeLater => 'また後で';
	@override String get didYouLikeMisskey => 'Misskeyを気に入っていただけましたか？';
	@override String get pleaseDonate => 'Misskeyは{host}が使用している無料のソフトウェアです。これからも開発を続けられるように、ぜひ寄付をお願いします！';
	@override String get roles => 'ロール';
	@override String get role => 'ロール';
	@override String get noRole => 'ロールはありません';
	@override String get normalUser => '一般ユーザー';
	@override String get undefined => '未定義';
	@override String get assign => 'アサイン';
	@override String get unassign => 'アサインを解除';
	@override String get color => '色';
	@override String get manageCustomEmojis => 'カスタム絵文字の管理';
	@override String get youCannotCreateAnymore => 'これ以上作成することはできません。';
	@override String get cannotPerformTemporary => '一時的に利用できません';
	@override String get cannotPerformTemporaryDescription => '操作回数が制限を超過するため一時的に利用できません。しばらく時間を置いてから再度お試しください。';
	@override String get invalidParamError => 'パラメータエラー';
	@override String get invalidParamErrorDescription => 'リクエストパラメータに問題があります。通常これはバグですが、入力した文字数が多すぎる等の可能性もあります。';
	@override String get permissionDeniedError => '操作が拒否されました';
	@override String get permissionDeniedErrorDescription => 'このアカウントにはこの操作を行うための権限がありません。';
	@override String get preset => 'プリセット';
	@override String get selectFromPresets => 'プリセットから選択';
	@override String get achievements => '実績';
	@override String get gotInvalidResponseError => 'サーバーの応答が無効です';
	@override String get gotInvalidResponseErrorDescription => 'サーバーがダウンまたはメンテナンスしている可能性があります。しばらくしてから再度お試しください。';
	@override String get thisPostMayBeAnnoying => 'この投稿は迷惑になる可能性があります。';
	@override String get thisPostMayBeAnnoyingHome => 'ホームに投稿';
	@override String get thisPostMayBeAnnoyingCancel => 'やめる';
	@override String get thisPostMayBeAnnoyingIgnore => 'このまま投稿';
	@override String get collapseRenotes => '見たことのあるRenoteを省略して表示';
	@override String get internalServerError => 'サーバー内部エラー';
	@override String get internalServerErrorDescription => 'サーバー内部で予期しないエラーが発生しました。';
	@override String get copyErrorInfo => 'エラー情報をコピー';
	@override String get joinThisServer => 'このサーバーに登録する';
	@override String get exploreOtherServers => '他のサーバーを探す';
	@override String get letsLookAtTimeline => 'タイムラインを見てみる';
	@override String get disableFederationConfirm => '連合なしにしますか？';
	@override String get disableFederationConfirmWarn => '連合なしにしても投稿は非公開になりません。ほとんどの場合、連合なしにする必要はありません。';
	@override String get disableFederationOk => '連合なしにする';
	@override String get invitationRequiredToRegister => '現在このサーバーは招待制です。招待コードをお持ちの方のみ登録できます。';
	@override String get emailNotSupported => 'このサーバーではメール配信はサポートされていません';
	@override String get postToTheChannel => 'チャンネルに投稿';
	@override String get cannotBeChangedLater => '後から変更できません。';
	@override String get reactionAcceptance => 'リアクションの受け入れ';
	@override String get likeOnly => 'いいねのみ';
	@override String get likeOnlyForRemote => '全て (リモートはいいねのみ)';
	@override String get nonSensitiveOnly => '非センシティブのみ';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => '非センシティブのみ (リモートはいいねのみ)';
	@override String get rolesAssignedToMe => '自分に割り当てられたロール';
	@override String get resetPasswordConfirm => 'パスワードリセットしますか？';
	@override String get sensitiveWords => 'センシティブワード';
	@override String get sensitiveWordsDescription => '設定したワードが含まれるノートの公開範囲をホームにします。改行で区切って複数設定できます。';
	@override String get sensitiveWordsDescription2 => 'スペースで区切るとAND指定になり、キーワードをスラッシュで囲むと正規表現になります。';
	@override String get notesSearchNotAvailable => 'ノート検索は利用できません。';
	@override String get license => 'ライセンス';
	@override String get unfavoriteConfirm => 'お気に入り解除しますか？';
	@override String get myClips => '自分のクリップ';
	@override String get drivecleaner => 'ドライブクリーナー';
	@override String get retryAllQueuesNow => 'すべてのキューを今すぐ再試行';
	@override String get retryAllQueuesConfirmTitle => '今すぐ再試行しますか？';
	@override String get retryAllQueuesConfirmText => '一時的にサーバーの負荷が増大することがあります。';
	@override String get enableChartsForRemoteUser => 'リモートユーザーのチャートを生成';
	@override String get enableChartsForFederatedInstances => 'リモートサーバーのチャートを生成';
	@override String get showClipButtonInNoteFooter => 'ノートのアクションにクリップを追加';
	@override String get largeNoteReactions => 'ノートのリアクションを大きく表示';
	@override String get noteIdOrUrl => 'ノートIDまたはURL';
	@override String get video => '動画';
	@override String get videos => '動画';
	@override String get dataSaver => 'データセーバー';
	@override String get accountMigration => 'アカウントの移行';
	@override String get accountMoved => 'このユーザーは新しいアカウントに移行しました：';
	@override String get accountMovedShort => 'このアカウントは移行されています';
	@override String get operationForbidden => 'この操作はできません';
	@override String get forceShowAds => '常に広告を表示する';
	@override String get addMemo => 'メモを追加';
	@override String get editMemo => 'メモを編集';
	@override String get reactionsList => 'リアクション一覧';
	@override String get renotesList => 'Renote一覧';
	@override String get notificationDisplay => '通知の表示';
	@override String get leftTop => '左上';
	@override String get rightTop => '右上';
	@override String get leftBottom => '左下';
	@override String get rightBottom => '右下';
	@override String get stackAxis => 'スタック方向';
	@override String get vertical => '縦';
	@override String get horizontal => '横';
	@override String get position => '位置';
	@override String get serverRules => 'サーバールール';
	@override String get pleaseConfirmBelowBeforeSignup => 'このサーバーに登録する前に、以下を確認してください。';
	@override String get pleaseAgreeAllToContinue => '続けるには、全ての「同意する」にチェックが入っている必要があります。';
	@override String get continue_ => '続ける';
	@override String get preservedUsernames => '予約ユーザー名';
	@override String get preservedUsernamesDescription => '予約するユーザー名を改行で列挙します。ここで指定されたユーザー名はアカウント作成時に使えなくなりますが、管理者によるアカウント作成時はこの制限を受けません。また、既に存在するアカウントも影響を受けません。';
	@override String get createNoteFromTheFile => 'このファイルからノートを作成';
	@override String get archive => 'アーカイブ';
	@override String get channelArchiveConfirmTitle => '{name}をアーカイブしますか？';
	@override String get channelArchiveConfirmDescription => 'アーカイブすると、チャンネル一覧や検索結果に表示されなくなり、新たな書き込みもできなくなります。';
	@override String get thisChannelArchived => 'このチャンネルはアーカイブされています。';
	@override String get displayOfNote => 'ノートの表示';
	@override String get initialAccountSetting => '初期設定';
	@override String get youFollowing => 'フォロー中';
	@override String get preventAiLearning => '生成AIによる学習を拒否';
	@override String get preventAiLearningDescription => '外部の文章生成AIや画像生成AIに対して、投稿したノートや画像などのコンテンツを学習の対象にしないように要求します。これはnoaiフラグをHTMLレスポンスに含めることによって実現されますが、この要求に従うかはそのAI次第であるため、学習を完全に防止するものではありません。';
	@override String get options => 'オプション';
	@override String get specifyUser => 'ユーザー指定';
	@override String get failedToPreviewUrl => 'プレビューできません';
	@override String get update => '更新';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'リアクションとして使えるロール';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'ロールの指定が一つもない場合、誰でもリアクションとして使えます。';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'ロールは公開ロールである必要があります。';
	@override String get cancelReactionConfirm => 'リアクションを取り消しますか？';
	@override String get changeReactionConfirm => 'リアクションを変更しますか？';
	@override String get later => 'あとで';
	@override String get goToMisskey => 'Misskeyへ';
	@override String get additionalEmojiDictionary => '絵文字の追加辞書';
	@override String get installed => 'インストール済み';
	@override late final _StringsInitialAccountSettingJaJp _initialAccountSetting = _StringsInitialAccountSettingJaJp._(_root);
	@override late final _StringsServerRulesJaJp _serverRules = _StringsServerRulesJaJp._(_root);
	@override late final _StringsAccountMigrationJaJp _accountMigration = _StringsAccountMigrationJaJp._(_root);
	@override late final _StringsAchievementsJaJp _achievements = _StringsAchievementsJaJp._(_root);
	@override late final _StringsRoleJaJp _role = _StringsRoleJaJp._(_root);
	@override late final _StringsSensitiveMediaDetectionJaJp _sensitiveMediaDetection = _StringsSensitiveMediaDetectionJaJp._(_root);
	@override late final _StringsEmailUnavailableJaJp _emailUnavailable = _StringsEmailUnavailableJaJp._(_root);
	@override late final _StringsFfVisibilityJaJp _ffVisibility = _StringsFfVisibilityJaJp._(_root);
	@override late final _StringsSignupJaJp _signup = _StringsSignupJaJp._(_root);
	@override late final _StringsAccountDeleteJaJp _accountDelete = _StringsAccountDeleteJaJp._(_root);
	@override late final _StringsAdJaJp _ad = _StringsAdJaJp._(_root);
	@override late final _StringsForgotPasswordJaJp _forgotPassword = _StringsForgotPasswordJaJp._(_root);
	@override late final _StringsGalleryJaJp _gallery = _StringsGalleryJaJp._(_root);
	@override late final _StringsEmailJaJp _email = _StringsEmailJaJp._(_root);
	@override late final _StringsPluginJaJp _plugin = _StringsPluginJaJp._(_root);
	@override late final _StringsPreferencesBackupsJaJp _preferencesBackups = _StringsPreferencesBackupsJaJp._(_root);
	@override late final _StringsRegistryJaJp _registry = _StringsRegistryJaJp._(_root);
	@override late final _StringsAboutMisskeyJaJp _aboutMisskey = _StringsAboutMisskeyJaJp._(_root);
	@override late final _StringsNsfwJaJp _nsfw = _StringsNsfwJaJp._(_root);
	@override late final _StringsInstanceTickerJaJp _instanceTicker = _StringsInstanceTickerJaJp._(_root);
	@override late final _StringsServerDisconnectedBehaviorJaJp _serverDisconnectedBehavior = _StringsServerDisconnectedBehaviorJaJp._(_root);
	@override late final _StringsChannelJaJp _channel = _StringsChannelJaJp._(_root);
	@override late final _StringsMenuDisplayJaJp _menuDisplay = _StringsMenuDisplayJaJp._(_root);
	@override late final _StringsWordMuteJaJp _wordMute = _StringsWordMuteJaJp._(_root);
	@override late final _StringsInstanceMuteJaJp _instanceMute = _StringsInstanceMuteJaJp._(_root);
	@override late final _StringsThemeJaJp _theme = _StringsThemeJaJp._(_root);
	@override late final _StringsSfxJaJp _sfx = _StringsSfxJaJp._(_root);
	@override late final _StringsAgoJaJp _ago = _StringsAgoJaJp._(_root);
	@override late final _StringsTimeJaJp _time = _StringsTimeJaJp._(_root);
	@override late final _StringsTimelineTutorialJaJp _timelineTutorial = _StringsTimelineTutorialJaJp._(_root);
	@override late final _Strings2faJaJp _2fa = _Strings2faJaJp._(_root);
	@override late final _StringsAuthJaJp _auth = _StringsAuthJaJp._(_root);
	@override late final _StringsAntennaSourcesJaJp _antennaSources = _StringsAntennaSourcesJaJp._(_root);
	@override late final _StringsWeekdayJaJp _weekday = _StringsWeekdayJaJp._(_root);
	@override late final _StringsWidgetsJaJp _widgets = _StringsWidgetsJaJp._(_root);
	@override late final _StringsCwJaJp _cw = _StringsCwJaJp._(_root);
	@override late final _StringsPollJaJp _poll = _StringsPollJaJp._(_root);
	@override late final _StringsVisibilityJaJp _visibility = _StringsVisibilityJaJp._(_root);
	@override late final _StringsPostFormJaJp _postForm = _StringsPostFormJaJp._(_root);
	@override late final _StringsProfileJaJp _profile = _StringsProfileJaJp._(_root);
	@override late final _StringsExportOrImportJaJp _exportOrImport = _StringsExportOrImportJaJp._(_root);
	@override late final _StringsChartsJaJp _charts = _StringsChartsJaJp._(_root);
	@override late final _StringsInstanceChartsJaJp _instanceCharts = _StringsInstanceChartsJaJp._(_root);
	@override late final _StringsTimelinesJaJp _timelines = _StringsTimelinesJaJp._(_root);
	@override late final _StringsPlayJaJp _play = _StringsPlayJaJp._(_root);
	@override late final _StringsPagesJaJp _pages = _StringsPagesJaJp._(_root);
	@override late final _StringsRelayStatusJaJp _relayStatus = _StringsRelayStatusJaJp._(_root);
	@override late final _StringsNotificationJaJp _notification = _StringsNotificationJaJp._(_root);
	@override late final _StringsDeckJaJp _deck = _StringsDeckJaJp._(_root);
	@override late final _StringsDialogJaJp _dialog = _StringsDialogJaJp._(_root);
	@override late final _StringsDisabledTimelineJaJp _disabledTimeline = _StringsDisabledTimelineJaJp._(_root);
	@override late final _StringsDrivecleanerJaJp _drivecleaner = _StringsDrivecleanerJaJp._(_root);
	@override late final _StringsWebhookSettingsJaJp _webhookSettings = _StringsWebhookSettingsJaJp._(_root);
}

// Path: _initialAccountSetting
class _StringsInitialAccountSettingJaJp extends _StringsInitialAccountSettingEnUs {
	_StringsInitialAccountSettingJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'アカウントの作成が完了しました！';
	@override String get letsStartAccountSetup => 'アカウントの初期設定を行いましょう。';
	@override String get letsFillYourProfile => 'まずはあなたのプロフィールを設定しましょう。';
	@override String get profileSetting => 'プロフィール設定';
	@override String get privacySetting => 'プライバシー設定';
	@override String get theseSettingsCanEditLater => 'これらの設定は後から変更できます。';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'この他にも様々な設定を「設定」ページから行えます。ぜひ後で確認してみてください。';
	@override String get followUsers => 'タイムラインを構築するため、気になるユーザーをフォローしてみましょう。';
	@override String get pushNotificationDescription => 'プッシュ通知を有効にすると{name}の通知をお使いのデバイスで受け取ることができます。';
	@override String get initialAccountSettingCompleted => '初期設定が完了しました！';
	@override String get haveFun => '{name}をお楽しみください！';
	@override String get ifYouNeedLearnMore => '{name}(Misskey)の使い方などを詳しく知るには{link}をご覧ください。';
	@override String get skipAreYouSure => '初期設定をスキップしますか？';
	@override String get laterAreYouSure => '初期設定をあとでやり直しますか？';
}

// Path: _serverRules
class _StringsServerRulesJaJp extends _StringsServerRulesEnUs {
	_StringsServerRulesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => '新規登録前に表示する、サーバーの簡潔なルールを設定します。内容は利用規約の要約とすることを推奨します。';
}

// Path: _accountMigration
class _StringsAccountMigrationJaJp extends _StringsAccountMigrationEnUs {
	_StringsAccountMigrationJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '別のアカウントからこのアカウントに移行';
	@override String get moveFromSub => '別のアカウントへエイリアスを作成';
	@override String get moveFromLabel => '移行元のアカウント #{n}';
	@override String get moveFromDescription => '別のアカウントからこのアカウントに移行したい場合、ここでエイリアスを作成しておく必要があります。\n移行元のアカウントをこのように入力してください: @username@server.example.com\n削除するには、入力欄を空にして保存します（非推奨）。';
	@override String get moveTo => 'このアカウントを新しいアカウントへ移行';
	@override String get moveToLabel => '移行先のアカウント:';
	@override String get moveCannotBeUndone => 'アカウントを移行すると、取り消すことはできません。';
	@override String get moveAccountDescription => '新しいアカウントへ移行します。\n　・フォロワーが新しいアカウントを自動でフォローします\n　・このアカウントからのフォローは全て解除されます\n　・このアカウントではノートの作成などができなくなります\n\nフォロワーの移行は自動ですが、フォローの移行は手動で行う必要があります。移行前にこのアカウントでフォローエクスポートし、移行後すぐに移行先アカウントでインポートを行なってください。\nリスト・ミュート・ブロックについても同様ですので、手動で移行する必要があります。\n\n（この説明はこのサーバー（Misskey v13.12.0以降）の仕様です。Mastodonなどの他のActivityPubソフトウェアでは挙動が異なる場合があります。）';
	@override String get moveAccountHowTo => 'アカウントの移行には、まずは移行先のアカウントでこのアカウントに対しエイリアスを作成します。\nエイリアス作成後、移行先のアカウントを次のように入力してください: @username@server.example.com';
	@override String get startMigration => '移行する';
	@override String get migrationConfirm => '本当にこのアカウントを {account} に移行しますか？一度移行すると取り消せず、二度とこのアカウントを元の状態で使用できなくなります。';
	@override String get movedAndCannotBeUndone => '\nアカウントは移行されています。\n移行を取り消すことはできません。';
	@override String get postMigrationNote => 'このアカウントからのフォロー解除は移行操作から24時間後に実行されます。\nこのアカウントのフォロー・フォロワー数は0になっています。フォロワーの解除はされないため、あなたのフォロワーはこのアカウントのフォロワー向け投稿を引き続き閲覧できます。';
	@override String get movedTo => '移行先のアカウント:';
}

// Path: _achievements
class _StringsAchievementsJaJp extends _StringsAchievementsEnUs {
	_StringsAchievementsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '獲得日時';
	@override late final _StringsAchievementsTypesJaJp _types = _StringsAchievementsTypesJaJp._(_root);
}

// Path: _role
class _StringsRoleJaJp extends _StringsRoleEnUs {
	_StringsRoleJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'ロールの作成';
	@override String get edit => 'ロールの編集';
	@override String get name => 'ロール名';
	@override String get description => 'ロールの説明';
	@override String get permission => 'ロールの権限';
	@override String get descriptionOfPermission => '<b>モデレーター</b>は基本的なモデレーションに関する操作を行えます。\n<b>管理者</b>はサーバーの全ての設定を変更できます。';
	@override String get assignTarget => 'アサイン';
	@override String get descriptionOfAssignTarget => '<b>マニュアル</b>は誰がこのロールに含まれるかを手動で管理します。\n<b>コンディショナル</b>は条件を設定し、それに合致するユーザーが自動で含まれるようになります。';
	@override String get manual => 'マニュアル';
	@override String get conditional => 'コンディショナル';
	@override String get condition => '条件';
	@override String get isConditionalRole => 'これはコンディショナルロールです。';
	@override String get isPublic => 'ロールを公開';
	@override String get descriptionOfIsPublic => 'ロールにアサインされたユーザーを誰でも見ることができます。また、ユーザーのプロフィールでこのロールが表示されます。';
	@override String get options => 'オプション';
	@override String get policies => 'ポリシー';
	@override String get baseRole => 'ベースロール';
	@override String get useBaseValue => 'ベースロールの値を使用';
	@override String get chooseRoleToAssign => 'アサインするロールを選択';
	@override String get iconUrl => 'アイコン画像のURL';
	@override String get asBadge => 'バッジとして表示';
	@override String get descriptionOfAsBadge => 'オンにすると、ユーザー名の横にロールのアイコンが表示されます。';
	@override String get isExplorable => 'ロールタイムラインを公開';
	@override String get descriptionOfIsExplorable => 'オンにすると、ロールのタイムラインを公開します。ロールの公開がオフの場合、タイムラインの公開はされません。';
	@override String get displayOrder => '表示順';
	@override String get descriptionOfDisplayOrder => '数値が大きいほどUI上で先頭に表示されます。';
	@override String get canEditMembersByModerator => 'モデレーターのメンバー編集を許可';
	@override String get descriptionOfCanEditMembersByModerator => 'オンにすると、管理者に加えてモデレーターもこのロールへユーザーをアサイン/アサイン解除できるようになります。オフにすると管理者のみが行えます。';
	@override String get priority => '優先度';
	@override late final _StringsRolePriorityJaJp _priority = _StringsRolePriorityJaJp._(_root);
	@override late final _StringsRoleOptionsJaJp _options = _StringsRoleOptionsJaJp._(_root);
	@override late final _StringsRoleConditionJaJp _condition = _StringsRoleConditionJaJp._(_root);
}

// Path: _sensitiveMediaDetection
class _StringsSensitiveMediaDetectionJaJp extends _StringsSensitiveMediaDetectionEnUs {
	_StringsSensitiveMediaDetectionJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get description => '機械学習を使って自動でセンシティブなメディアを検出し、モデレーションに役立てることができます。サーバーの負荷が少し増えます。';
	@override String get sensitivity => '検出感度';
	@override String get sensitivityDescription => '感度を低くすると、誤検知(偽陽性)が減ります。感度を高くすると、検知漏れ(偽陰性)が減ります。';
	@override String get setSensitiveFlagAutomatically => 'NSFWフラグを設定する';
	@override String get setSensitiveFlagAutomaticallyDescription => 'この設定をオフにしても内部的に判定結果は保持されます。';
	@override String get analyzeVideos => '動画の解析を有効化';
	@override String get analyzeVideosDescription => '静止画に加えて動画も解析するようにします。サーバーの負荷が少し増えます。';
}

// Path: _emailUnavailable
class _StringsEmailUnavailableJaJp extends _StringsEmailUnavailableEnUs {
	_StringsEmailUnavailableJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get used => '既に使用されています';
	@override String get format => '形式が正しくありません';
	@override String get disposable => '恒久的に使用可能なアドレスではありません';
	@override String get mx => '正しいメールサーバーではありません';
	@override String get smtp => 'メールサーバーが応答しません';
}

// Path: _ffVisibility
class _StringsFfVisibilityJaJp extends _StringsFfVisibilityEnUs {
	_StringsFfVisibilityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get followers => 'フォロワーだけに公開';
	@override String get private => '非公開';
}

// Path: _signup
class _StringsSignupJaJp extends _StringsSignupEnUs {
	_StringsSignupJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'ほとんど完了です';
	@override String get emailAddressInfo => 'あなたが使っているメールアドレスを入力してください。メールアドレスが公開されることはありません。';
	@override String get emailSent => '入力されたメールアドレス({email})宛に確認のメールが送信されました。メールに記載されたリンクにアクセスすると、アカウントの作成が完了します。';
}

// Path: _accountDelete
class _StringsAccountDeleteJaJp extends _StringsAccountDeleteEnUs {
	_StringsAccountDeleteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'アカウントの削除';
	@override String get mayTakeTime => 'アカウントの削除は負荷のかかる処理であるため、作成したコンテンツの数やアップロードしたファイルの数が多いと完了までに時間がかかることがあります。';
	@override String get sendEmail => 'アカウントの削除が完了する際は、登録してあったメールアドレス宛に通知を送信します。';
	@override String get requestAccountDelete => 'アカウント削除をリクエスト';
	@override String get started => '削除処理が開始されました。';
	@override String get inProgress => '削除が進行中';
}

// Path: _ad
class _StringsAdJaJp extends _StringsAdEnUs {
	_StringsAdJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get back => '戻る';
	@override String get reduceFrequencyOfThisAd => 'この広告の表示頻度を下げる';
	@override String get hide => '表示しない';
}

// Path: _forgotPassword
class _StringsForgotPasswordJaJp extends _StringsForgotPasswordEnUs {
	_StringsForgotPasswordJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'アカウントに登録したメールアドレスを入力してください。そのアドレス宛てに、パスワードリセット用のリンクが送信されます。';
	@override String get ifNoEmail => 'メールアドレスを登録していない場合は、管理者までお問い合わせください。';
	@override String get contactAdmin => 'このサーバーではメールがサポートされていないため、パスワードリセットを行う場合は管理者までお問い合わせください。';
}

// Path: _gallery
class _StringsGalleryJaJp extends _StringsGalleryEnUs {
	_StringsGalleryJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get my => '自分の投稿';
	@override String get liked => 'いいねした投稿';
	@override String get like => 'いいね！';
	@override String get unlike => 'いいね解除';
}

// Path: _email
class _StringsEmailJaJp extends _StringsEmailEnUs {
	_StringsEmailJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsEmailFollowJaJp _follow = _StringsEmailFollowJaJp._(_root);
	@override late final _StringsEmailReceiveFollowRequestJaJp _receiveFollowRequest = _StringsEmailReceiveFollowRequestJaJp._(_root);
}

// Path: _plugin
class _StringsPluginJaJp extends _StringsPluginEnUs {
	_StringsPluginJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get install => 'プラグインのインストール';
	@override String get installWarn => '信頼できないプラグインはインストールしないでください。';
	@override String get manage => 'プラグインの管理';
}

// Path: _preferencesBackups
class _StringsPreferencesBackupsJaJp extends _StringsPreferencesBackupsEnUs {
	_StringsPreferencesBackupsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get list => '作成したバックアップ';
	@override String get saveNew => '新規保存';
	@override String get loadFile => 'ファイルを読み込み';
	@override String get apply => 'このデバイスに適用';
	@override String get save => '上書き保存';
	@override String get inputName => 'バックアップ名を入力';
	@override String get cannotSave => '保存できません';
	@override String get nameAlreadyExists => 'バックアップ名「{name}」は既に存在します。違う名前を指定してください。';
	@override String get applyConfirm => 'バックアップ「{name}」を現在のデバイスに適用しますか？現在のデバイス設定は失われます。';
	@override String get saveConfirm => '{name}に上書き保存しますか？';
	@override String get deleteConfirm => '{name}を削除しますか？';
	@override String get renameConfirm => '「{old}」を「{new_}」に変更しますか？';
	@override String get noBackups => 'バックアップはありません。「新規保存」で現在のクライアント設定をサーバーに保存できます。';
	@override String get createdAt => '作成日時: {date} {time}';
	@override String get updatedAt => '更新日時: {date} {time}';
	@override String get cannotLoad => '読み込みできません';
	@override String get invalidFile => 'ファイル形式が違います。';
}

// Path: _registry
class _StringsRegistryJaJp extends _StringsRegistryEnUs {
	_StringsRegistryJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get scope => 'スコープ';
	@override String get key => 'キー';
	@override String get keys => 'キー';
	@override String get domain => 'ドメイン';
	@override String get createKey => 'キーを作成';
}

// Path: _aboutMisskey
class _StringsAboutMisskeyJaJp extends _StringsAboutMisskeyEnUs {
	_StringsAboutMisskeyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskeyはsyuiloによって2014年から開発されている、オープンソースのソフトウェアです。';
	@override String get contributors => '主なコントリビューター';
	@override String get allContributors => '全てのコントリビューター';
	@override String get source => 'ソースコード';
	@override String get translation => 'Misskeyを翻訳';
	@override String get donate => 'Misskeyに寄付';
	@override String get morePatrons => '他にも多くの方が支援してくれています。ありがとうございます🥰';
	@override String get patrons => '支援者';
}

// Path: _nsfw
class _StringsNsfwJaJp extends _StringsNsfwEnUs {
	_StringsNsfwJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get respect => '閲覧注意のメディアは隠す';
	@override String get ignore => '閲覧注意のメディアを隠さない';
	@override String get force => '常にメディアを隠す';
}

// Path: _instanceTicker
class _StringsInstanceTickerJaJp extends _StringsInstanceTickerEnUs {
	_StringsInstanceTickerJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get none => '表示しない';
	@override String get remote => 'リモートユーザーに表示';
	@override String get always => '常に表示';
}

// Path: _serverDisconnectedBehavior
class _StringsServerDisconnectedBehaviorJaJp extends _StringsServerDisconnectedBehaviorEnUs {
	_StringsServerDisconnectedBehaviorJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get reload => '自動でリロード';
	@override String get dialog => 'ダイアログで警告';
	@override String get quiet => '控えめに警告';
}

// Path: _channel
class _StringsChannelJaJp extends _StringsChannelEnUs {
	_StringsChannelJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get create => 'チャンネルを作成';
	@override String get edit => 'チャンネルを編集';
	@override String get setBanner => 'バナーを設定';
	@override String get removeBanner => 'バナーを削除';
	@override String get featured => 'トレンド';
	@override String get owned => '管理中';
	@override String get following => 'フォロー中';
	@override String get usersCount => '{n}人が参加中';
	@override String get notesCount => '{n}投稿があります';
	@override String get nameAndDescription => '名前と説明';
	@override String get nameOnly => '名前のみ';
}

// Path: _menuDisplay
class _StringsMenuDisplayJaJp extends _StringsMenuDisplayEnUs {
	_StringsMenuDisplayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '横';
	@override String get sideIcon => '横(アイコン)';
	@override String get top => '上部';
	@override String get hide => '隠す';
}

// Path: _wordMute
class _StringsWordMuteJaJp extends _StringsWordMuteEnUs {
	_StringsWordMuteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'ミュートするワード';
	@override String get muteWordsDescription => 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります。';
	@override String get muteWordsDescription2 => 'キーワードをスラッシュで囲むと正規表現になります。';
	@override String get softDescription => '指定した条件のノートをタイムラインから隠します。';
	@override String get hardDescription => '指定した条件のノートをタイムラインに追加しないようにします。追加されなかったノートは、条件を変更しても除外されたままになります。';
	@override String get soft => 'ソフト';
	@override String get hard => 'ハード';
	@override String get mutedNotes => 'ミュートされたノート';
}

// Path: _instanceMute
class _StringsInstanceMuteJaJp extends _StringsInstanceMuteEnUs {
	_StringsInstanceMuteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'ミュートしたサーバーのユーザーへの返信を含めて、設定したサーバーの全てのノートとRenoteをミュートします。';
	@override String get instanceMuteDescription2 => '改行で区切って設定します';
	@override String get title => '設定したサーバーのノートを隠します。';
	@override String get heading => 'ミュートするサーバー';
}

// Path: _theme
class _StringsThemeJaJp extends _StringsThemeEnUs {
	_StringsThemeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get explore => 'テーマを探す';
	@override String get install => 'テーマのインストール';
	@override String get manage => 'テーマの管理';
	@override String get code => 'テーマコード';
	@override String get description => '説明';
	@override String get installed => '{name}をインストールしました';
	@override String get installedThemes => 'インストールされたテーマ';
	@override String get builtinThemes => '標準のテーマ';
	@override String get alreadyInstalled => 'そのテーマは既にインストールされています';
	@override String get invalid => 'テーマの形式が間違っています';
	@override String get make => 'テーマを作る';
	@override String get base => 'ベース';
	@override String get addConstant => '定数を追加';
	@override String get constant => '定数';
	@override String get defaultValue => 'デフォルト値';
	@override String get color => '色';
	@override String get refProp => 'プロパティを参照';
	@override String get refConst => '定数を参照';
	@override String get key => 'キー';
	@override String get func => '関数';
	@override String get funcKind => '関数の種類';
	@override String get argument => '引数';
	@override String get basedProp => '元にするプロパティの名前';
	@override String get alpha => '不透明度';
	@override String get darken => '暗さ';
	@override String get lighten => '明るさ';
	@override String get inputConstantName => '定数名を入力してください';
	@override String get importInfo => 'ここにテーマコードを貼り付けて、エディターにインポートできます';
	@override String get deleteConstantConfirm => '定数 {const_} を削除しても良いですか？';
	@override late final _StringsThemeKeysJaJp keys = _StringsThemeKeysJaJp._(_root);
}

// Path: _sfx
class _StringsSfxJaJp extends _StringsSfxEnUs {
	_StringsSfxJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get note => 'ノート';
	@override String get noteMy => 'ノート(自分)';
	@override String get notification => '通知';
	@override String get chat => 'チャット';
	@override String get chatBg => 'チャット(バックグラウンド)';
	@override String get antenna => 'アンテナ受信';
	@override String get channel => 'チャンネル通知';
}

// Path: _ago
class _StringsAgoJaJp extends _StringsAgoEnUs {
	_StringsAgoJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get future => '未来';
	@override String get justNow => 'たった今';
	@override String get secondsAgo => '{n}秒前';
	@override String get minutesAgo => '{n}分前';
	@override String get hoursAgo => '{n}時間前';
	@override String get daysAgo => '{n}日前';
	@override String get weeksAgo => '{n}週間前';
	@override String get monthsAgo => '{n}ヶ月前';
	@override String get yearsAgo => '{n}年前';
	@override String get invalid => 'ありません';
}

// Path: _time
class _StringsTimeJaJp extends _StringsTimeEnUs {
	_StringsTimeJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分';
	@override String get hour => '時間';
	@override String get day => '日';
}

// Path: _timelineTutorial
class _StringsTimelineTutorialJaJp extends _StringsTimelineTutorialEnUs {
	_StringsTimelineTutorialJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyの使い方';
	@override String get step1_1 => 'この画面は「タイムライン」です。{name}に投稿された「ノート」が時系列で表示されます。';
	@override String get step1_2 => 'タイムラインにはいくつか種類があり、例えば「ホームタイムライン」にはあなたがフォローしている人のノートが流れ、「ローカルタイムライン」には{name}全体のノートが流れます。';
	@override String get step2_1 => '試しに、何かノートを投稿してみましょう。画面上にある鉛筆マークのボタンを押すとフォームが開きます。';
	@override String get step2_2 => '初めてのノートの内容は、あなたの自己紹介や「{name}始めました」などがおすすめです。';
	@override String get step3_1 => '投稿できましたか？';
	@override String get step3_2 => 'あなたのノートがタイムラインに表示されていれば成功です。';
	@override String get step4_1 => 'ノートには、「リアクション」を付けることができます。';
	@override String get step4_2 => 'リアクションを付けるには、ノートの「+」マークをクリックして、好きな絵文字を選択します。';
}

// Path: _2fa
class _Strings2faJaJp extends _Strings2faEnUs {
	_Strings2faJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '既に設定は完了しています。';
	@override String get registerTOTP => '認証アプリの設定を開始';
	@override String get passwordToTOTP => 'パスワードを入力してください';
	@override String get step1 => 'まず、{a}や{b}などの認証アプリをお使いのデバイスにインストールします。';
	@override String get step2 => '次に、表示されているQRコードをアプリでスキャンします。';
	@override String get step2Click => 'QRコードをクリックすると、お使いの端末にインストールされている認証アプリやキーリングに登録できます。';
	@override String get step2Url => 'デスクトップアプリでは次のURIを入力します:';
	@override String get step3Title => '確認コードを入力';
	@override String get step3 => 'アプリに表示されている確認コード（トークン）を入力して完了です。';
	@override String get step4 => 'これからログインするときも、同じように確認コードを入力します。';
	@override String get securityKeyNotSupported => 'お使いのブラウザはセキュリティキーに対応していません。';
	@override String get registerTOTPBeforeKey => 'セキュリティキー・パスキーを登録するには、まず認証アプリの設定を行なってください。';
	@override String get securityKeyInfo => 'FIDO2をサポートするハードウェアセキュリティキー、端末の生体認証やPINロック、パスキーといった、WebAuthn由来の鍵を登録します。';
	@override String get chromePasskeyNotSupported => 'Chromeのパスキーは現在サポートしていません。';
	@override String get registerSecurityKey => 'セキュリティキー・パスキーを登録する';
	@override String get securityKeyName => 'キーの名前を入力';
	@override String get tapSecurityKey => 'ブラウザの指示に従い、セキュリティキーやパスキーを登録してください';
	@override String get removeKey => 'セキュリティキーを削除';
	@override String get removeKeyConfirm => '{name}を削除しますか？';
	@override String get whyTOTPOnlyRenew => 'セキュリティキーが登録されている場合、認証アプリの設定は解除できません。';
	@override String get renewTOTP => '認証アプリを再設定';
	@override String get renewTOTPConfirm => '今までの認証アプリの確認コードは使用できなくなります';
	@override String get renewTOTPOk => '再設定する';
	@override String get renewTOTPCancel => 'やめておく';
}

// Path: _auth
class _StringsAuthJaJp extends _StringsAuthEnUs {
	_StringsAuthJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'アプリへのアクセス許可';
	@override String get shareAccess => '「{name}」がアカウントにアクセスすることを許可しますか？';
	@override String get shareAccessAsk => 'アカウントへのアクセスを許可しますか？';
	@override String get permission => '{name}は次の権限を要求しています';
	@override String get permissionAsk => 'このアプリは次の権限を要求しています';
	@override String get pleaseGoBack => 'アプリケーションに戻ってやっていってください';
	@override String get callback => 'アプリケーションに戻っています';
	@override String get denied => 'アクセスを拒否しました';
	@override String get pleaseLogin => 'アプリケーションにアクセス許可を与えるには、ログインが必要です。';
}

// Path: _antennaSources
class _StringsAntennaSourcesJaJp extends _StringsAntennaSourcesEnUs {
	_StringsAntennaSourcesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => '全てのノート';
	@override String get homeTimeline => 'フォローしているユーザーのノート';
	@override String get users => '指定した一人または複数のユーザーのノート';
	@override String get userList => '指定したリストのユーザーのノート';
}

// Path: _weekday
class _StringsWeekdayJaJp extends _StringsWeekdayEnUs {
	_StringsWeekdayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get sunday => '日曜日';
	@override String get monday => '月曜日';
	@override String get tuesday => '火曜日';
	@override String get wednesday => '水曜日';
	@override String get thursday => '木曜日';
	@override String get friday => '金曜日';
	@override String get saturday => '土曜日';
}

// Path: _widgets
class _StringsWidgetsJaJp extends _StringsWidgetsEnUs {
	_StringsWidgetsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get instanceInfo => 'サーバー情報';
	@override String get memo => '付箋';
	@override String get notifications => '通知';
	@override String get timeline => 'タイムライン';
	@override String get calendar => 'カレンダー';
	@override String get trends => 'トレンド';
	@override String get clock => '時計';
	@override String get rss => 'RSSリーダー';
	@override String get rssTicker => 'RSSティッカー';
	@override String get activity => 'アクティビティ';
	@override String get photos => 'フォト';
	@override String get digitalClock => 'デジタル時計';
	@override String get unixClock => 'UNIX時計';
	@override String get federation => '連合';
	@override String get instanceCloud => 'サーバークラウド';
	@override String get postForm => '投稿フォーム';
	@override String get slideshow => 'スライドショー';
	@override String get button => 'ボタン';
	@override String get onlineUsers => 'オンラインユーザー';
	@override String get jobQueue => 'ジョブキュー';
	@override String get serverMetric => 'サーバーメトリクス';
	@override String get aiscript => 'AiScriptコンソール';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => '藍';
	@override String get userList => 'ユーザーリスト';
	@override late final _StringsWidgetsUserListJaJp _userList = _StringsWidgetsUserListJaJp._(_root);
	@override String get clicker => 'クリッカー';
}

// Path: _cw
class _StringsCwJaJp extends _StringsCwEnUs {
	_StringsCwJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get hide => '隠す';
	@override String get show => 'もっと見る';
	@override String get chars => '{count}文字';
	@override String get files => '{count}ファイル';
}

// Path: _poll
class _StringsPollJaJp extends _StringsPollEnUs {
	_StringsPollJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '選択肢は最低2つ必要です';
	@override String get choiceN => '選択肢{n}';
	@override String get noMore => 'これ以上追加できません';
	@override String get canMultipleVote => '複数回答可';
	@override String get expiration => '期限';
	@override String get infinite => '無期限';
	@override String get at => '日時指定';
	@override String get after => '経過指定';
	@override String get deadlineDate => '期日';
	@override String get deadlineTime => '時間';
	@override String get duration => '期間';
	@override String get votesCount => '{n}票';
	@override String get totalVotes => '計{n}票';
	@override String get vote => '投票する';
	@override String get showResult => '結果を見る';
	@override String get voted => '投票済み';
	@override String get closed => '終了済み';
	@override String get remainingDays => '終了まであと{d}日{h}時間';
	@override String get remainingHours => '終了まであと{h}時間{m}分';
	@override String get remainingMinutes => '終了まであと{m}分{s}秒';
	@override String get remainingSeconds => '終了まであと{s}秒';
}

// Path: _visibility
class _StringsVisibilityJaJp extends _StringsVisibilityEnUs {
	_StringsVisibilityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get public => 'パブリック';
	@override String get publicDescription => '全てのユーザーに公開';
	@override String get home => 'ホーム';
	@override String get homeDescription => 'ホームタイムラインのみに公開';
	@override String get followers => 'フォロワー';
	@override String get followersDescription => '自分のフォロワーのみに公開';
	@override String get specified => 'ダイレクト';
	@override String get specifiedDescription => '指定したユーザーのみに公開';
	@override String get disableFederation => '連合なし';
	@override String get disableFederationDescription => '他サーバーへの配信を行いません';
}

// Path: _postForm
class _StringsPostFormJaJp extends _StringsPostFormEnUs {
	_StringsPostFormJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'このノートに返信...';
	@override String get quotePlaceholder => 'このノートを引用...';
	@override String get channelPlaceholder => 'チャンネルに投稿...';
	@override late final _StringsPostFormPlaceholdersJaJp _placeholders = _StringsPostFormPlaceholdersJaJp._(_root);
}

// Path: _profile
class _StringsProfileJaJp extends _StringsProfileEnUs {
	_StringsProfileJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get name => '名前';
	@override String get username => 'ユーザー名';
	@override String get description => '自己紹介';
	@override String get youCanIncludeHashtags => 'ハッシュタグを含めることができます。';
	@override String get metadata => '追加情報';
	@override String get metadataEdit => '追加情報を編集';
	@override String get metadataDescription => 'プロフィールに表として追加情報を表示することができます。';
	@override String get metadataLabel => 'ラベル';
	@override String get metadataContent => '内容';
	@override String get changeAvatar => 'アイコン画像を変更';
	@override String get changeBanner => 'バナー画像を変更';
}

// Path: _exportOrImport
class _StringsExportOrImportJaJp extends _StringsExportOrImportEnUs {
	_StringsExportOrImportJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '全てのノート';
	@override String get favoritedNotes => 'お気に入りにしたノート';
	@override String get followingList => 'フォロー';
	@override String get muteList => 'ミュート';
	@override String get blockingList => 'ブロック';
	@override String get userLists => 'リスト';
	@override String get excludeMutingUsers => 'ミュートしているユーザーを除外';
	@override String get excludeInactiveUsers => '使われていないアカウントを除外';
}

// Path: _charts
class _StringsChartsJaJp extends _StringsChartsEnUs {
	_StringsChartsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get federation => '連合';
	@override String get apRequest => 'リクエスト';
	@override String get usersIncDec => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの合計';
	@override String get activeUsers => 'アクティブユーザー数';
	@override String get notesIncDec => 'ノートの増減';
	@override String get localNotesIncDec => 'ローカルのノートの増減';
	@override String get remoteNotesIncDec => 'リモートのノートの増減';
	@override String get notesTotal => 'ノートの合計';
	@override String get filesIncDec => 'ファイルの増減';
	@override String get filesTotal => 'ファイルの合計';
	@override String get storageUsageIncDec => 'ストレージ使用量の増減';
	@override String get storageUsageTotal => 'ストレージ使用量の合計';
}

// Path: _instanceCharts
class _StringsInstanceChartsJaJp extends _StringsInstanceChartsEnUs {
	_StringsInstanceChartsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requests => 'リクエスト';
	@override String get users => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの累積';
	@override String get notes => 'ノートの増減';
	@override String get notesTotal => 'ノートの累積';
	@override String get ff => 'フォロー/フォロワーの増減';
	@override String get ffTotal => 'フォロー/フォロワーの累積';
	@override String get cacheSize => 'キャッシュサイズの増減';
	@override String get cacheSizeTotal => 'キャッシュサイズの累積';
	@override String get files => 'ファイル数の増減';
	@override String get filesTotal => 'ファイル数の累積';
}

// Path: _timelines
class _StringsTimelinesJaJp extends _StringsTimelinesEnUs {
	_StringsTimelinesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get local => 'ローカル';
	@override String get social => 'ソーシャル';
	@override String get global => 'グローバル';
}

// Path: _play
class _StringsPlayJaJp extends _StringsPlayEnUs {
	_StringsPlayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Playの作成';
	@override String get edit => 'Playの編集';
	@override String get created => 'Playを作成しました';
	@override String get updated => 'Playを更新しました';
	@override String get deleted => 'Playを削除しました';
	@override String get pageSetting => 'Play設定';
	@override String get editThisPage => 'このPlayを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get my => '自分のPlay';
	@override String get liked => 'いいねしたPlay';
	@override String get featured => '人気';
	@override String get title => 'タイトル';
	@override String get script => 'スクリプト';
	@override String get summary => '説明';
}

// Path: _pages
class _StringsPagesJaJp extends _StringsPagesEnUs {
	_StringsPagesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'ページの作成';
	@override String get editPage => 'ページの編集';
	@override String get readPage => 'ソースを表示中';
	@override String get created => 'ページを作成しました';
	@override String get updated => 'ページを更新しました';
	@override String get deleted => 'ページを削除しました';
	@override String get pageSetting => 'ページ設定';
	@override String get nameAlreadyExists => '指定されたページURLは既に存在しています';
	@override String get invalidNameTitle => '不正なページURLです';
	@override String get invalidNameText => '空白でないか確認してください';
	@override String get editThisPage => 'このページを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get viewPage => 'ページを見る';
	@override String get like => 'いいね';
	@override String get unlike => 'いいね解除';
	@override String get my => '自分のページ';
	@override String get liked => 'いいねしたページ';
	@override String get featured => '人気';
	@override String get inspector => 'インスペクター';
	@override String get contents => 'コンテンツ';
	@override String get content => 'ページブロック';
	@override String get variables => '変数';
	@override String get title => 'タイトル';
	@override String get url => 'ページURL';
	@override String get summary => 'ページの要約';
	@override String get alignCenter => '中央寄せ';
	@override String get hideTitleWhenPinned => 'ピン留めされているときにタイトルを非表示';
	@override String get font => 'フォント';
	@override String get fontSerif => 'セリフ';
	@override String get fontSansSerif => 'サンセリフ';
	@override String get eyeCatchingImageSet => 'アイキャッチ画像を設定';
	@override String get eyeCatchingImageRemove => 'アイキャッチ画像を削除';
	@override String get chooseBlock => 'ブロックを追加';
	@override String get selectType => '種類を選択';
	@override String get contentBlocks => 'コンテンツ';
	@override String get inputBlocks => '入力';
	@override String get specialBlocks => '特殊';
	@override late final _StringsPagesBlocksJaJp blocks = _StringsPagesBlocksJaJp._(_root);
}

// Path: _relayStatus
class _StringsRelayStatusJaJp extends _StringsRelayStatusEnUs {
	_StringsRelayStatusJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get requesting => '承認待ち';
	@override String get accepted => '承認済み';
	@override String get rejected => '拒否済み';
}

// Path: _notification
class _StringsNotificationJaJp extends _StringsNotificationEnUs {
	_StringsNotificationJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ファイルがアップロードされました';
	@override String get youGotMention => '{name}からのメンション';
	@override String get youGotReply => '{name}からのリプライ';
	@override String get youGotQuote => '{name}による引用';
	@override String get youRenoted => '{name}がRenoteしました';
	@override String get youWereFollowed => 'フォローされました';
	@override String get youReceivedFollowRequest => 'フォローリクエストが来ました';
	@override String get yourFollowRequestAccepted => 'フォローリクエストが承認されました';
	@override String get pollEnded => 'アンケートの結果が出ました';
	@override String get unreadAntennaNote => 'アンテナ {name}';
	@override String get emptyPushNotificationMessage => 'プッシュ通知の更新をしました';
	@override String get achievementEarned => '実績を獲得';
	@override late final _StringsNotificationTypesJaJp _types = _StringsNotificationTypesJaJp._(_root);
	@override late final _StringsNotificationActionsJaJp _actions = _StringsNotificationActionsJaJp._(_root);
}

// Path: _deck
class _StringsDeckJaJp extends _StringsDeckEnUs {
	_StringsDeckJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '常にメインカラムを表示';
	@override String get columnAlign => 'カラムの寄せ';
	@override String get addColumn => 'カラムを追加';
	@override String get configureColumn => 'カラムの設定';
	@override String get swapLeft => '左に移動';
	@override String get swapRight => '右に移動';
	@override String get swapUp => '上に移動';
	@override String get swapDown => '下に移動';
	@override String get stackLeft => '左にスタック';
	@override String get popRight => '右に出す';
	@override String get profile => 'プロファイル';
	@override String get newProfile => '新規プロファイル';
	@override String get deleteProfile => 'プロファイルを削除';
	@override String get introduction => 'カラムを組み合わせて自分だけのインターフェイスを作りましょう！';
	@override String get introduction2 => '画面の右にある + を押して、いつでもカラムを追加できます。';
	@override String get widgetsIntroduction => 'カラムのメニューから、「ウィジェットの編集」を選択してウィジェットを追加してください';
	@override late final _StringsDeckColumnsJaJp _columns = _StringsDeckColumnsJaJp._(_root);
}

// Path: _dialog
class _StringsDialogJaJp extends _StringsDialogEnUs {
	_StringsDialogJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get charactersExceeded => '最大文字数を超えています！ 現在 {current} / 制限 {max}';
	@override String get charactersBelow => '最小文字数を下回っています！ 現在 {current} / 制限 {min}';
}

// Path: _disabledTimeline
class _StringsDisabledTimelineJaJp extends _StringsDisabledTimelineEnUs {
	_StringsDisabledTimelineJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '無効化されたタイムライン';
	@override String get description => '現在のロールでは、このタイムラインを使用することはできません。';
}

// Path: _drivecleaner
class _StringsDrivecleanerJaJp extends _StringsDrivecleanerEnUs {
	_StringsDrivecleanerJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'サイズが大きい順';
	@override String get orderByCreatedAtAsc => '追加日が古い順';
}

// Path: _webhookSettings
class _StringsWebhookSettingsJaJp extends _StringsWebhookSettingsEnUs {
	_StringsWebhookSettingsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhookを作成';
	@override String get name => '名前';
	@override String get secret => 'シークレット';
	@override String get events => 'Webhookを実行するタイミング';
	@override String get active => '有効';
	@override late final _StringsWebhookSettingsEventsJaJp _events = _StringsWebhookSettingsEventsJaJp._(_root);
}

// Path: _achievements._types
class _StringsAchievementsTypesJaJp extends _StringsAchievementsTypesEnUs {
	_StringsAchievementsTypesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override late final _StringsAchievementsTypesNotes1JaJp _notes1 = _StringsAchievementsTypesNotes1JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes10JaJp _notes10 = _StringsAchievementsTypesNotes10JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes100JaJp _notes100 = _StringsAchievementsTypesNotes100JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes500JaJp _notes500 = _StringsAchievementsTypesNotes500JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes1000JaJp _notes1000 = _StringsAchievementsTypesNotes1000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes5000JaJp _notes5000 = _StringsAchievementsTypesNotes5000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes10000JaJp _notes10000 = _StringsAchievementsTypesNotes10000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes20000JaJp _notes20000 = _StringsAchievementsTypesNotes20000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes30000JaJp _notes30000 = _StringsAchievementsTypesNotes30000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes40000JaJp _notes40000 = _StringsAchievementsTypesNotes40000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes50000JaJp _notes50000 = _StringsAchievementsTypesNotes50000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes60000JaJp _notes60000 = _StringsAchievementsTypesNotes60000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes70000JaJp _notes70000 = _StringsAchievementsTypesNotes70000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes80000JaJp _notes80000 = _StringsAchievementsTypesNotes80000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes90000JaJp _notes90000 = _StringsAchievementsTypesNotes90000JaJp._(_root);
	@override late final _StringsAchievementsTypesNotes100000JaJp _notes100000 = _StringsAchievementsTypesNotes100000JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin3JaJp _login3 = _StringsAchievementsTypesLogin3JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin7JaJp _login7 = _StringsAchievementsTypesLogin7JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin15JaJp _login15 = _StringsAchievementsTypesLogin15JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin30JaJp _login30 = _StringsAchievementsTypesLogin30JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin60JaJp _login60 = _StringsAchievementsTypesLogin60JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin100JaJp _login100 = _StringsAchievementsTypesLogin100JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin200JaJp _login200 = _StringsAchievementsTypesLogin200JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin300JaJp _login300 = _StringsAchievementsTypesLogin300JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin400JaJp _login400 = _StringsAchievementsTypesLogin400JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin500JaJp _login500 = _StringsAchievementsTypesLogin500JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin600JaJp _login600 = _StringsAchievementsTypesLogin600JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin700JaJp _login700 = _StringsAchievementsTypesLogin700JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin800JaJp _login800 = _StringsAchievementsTypesLogin800JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin900JaJp _login900 = _StringsAchievementsTypesLogin900JaJp._(_root);
	@override late final _StringsAchievementsTypesLogin1000JaJp _login1000 = _StringsAchievementsTypesLogin1000JaJp._(_root);
	@override late final _StringsAchievementsTypesNoteClipped1JaJp _noteClipped1 = _StringsAchievementsTypesNoteClipped1JaJp._(_root);
	@override late final _StringsAchievementsTypesNoteFavorited1JaJp _noteFavorited1 = _StringsAchievementsTypesNoteFavorited1JaJp._(_root);
	@override late final _StringsAchievementsTypesMyNoteFavorited1JaJp _myNoteFavorited1 = _StringsAchievementsTypesMyNoteFavorited1JaJp._(_root);
	@override late final _StringsAchievementsTypesProfileFilledJaJp _profileFilled = _StringsAchievementsTypesProfileFilledJaJp._(_root);
	@override late final _StringsAchievementsTypesMarkedAsCatJaJp _markedAsCat = _StringsAchievementsTypesMarkedAsCatJaJp._(_root);
	@override late final _StringsAchievementsTypesFollowing1JaJp _following1 = _StringsAchievementsTypesFollowing1JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowing10JaJp _following10 = _StringsAchievementsTypesFollowing10JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowing50JaJp _following50 = _StringsAchievementsTypesFollowing50JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowing100JaJp _following100 = _StringsAchievementsTypesFollowing100JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowing300JaJp _following300 = _StringsAchievementsTypesFollowing300JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers1JaJp _followers1 = _StringsAchievementsTypesFollowers1JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers10JaJp _followers10 = _StringsAchievementsTypesFollowers10JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers50JaJp _followers50 = _StringsAchievementsTypesFollowers50JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers100JaJp _followers100 = _StringsAchievementsTypesFollowers100JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers300JaJp _followers300 = _StringsAchievementsTypesFollowers300JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers500JaJp _followers500 = _StringsAchievementsTypesFollowers500JaJp._(_root);
	@override late final _StringsAchievementsTypesFollowers1000JaJp _followers1000 = _StringsAchievementsTypesFollowers1000JaJp._(_root);
	@override late final _StringsAchievementsTypesCollectAchievements30JaJp _collectAchievements30 = _StringsAchievementsTypesCollectAchievements30JaJp._(_root);
	@override late final _StringsAchievementsTypesViewAchievements3minJaJp _viewAchievements3min = _StringsAchievementsTypesViewAchievements3minJaJp._(_root);
	@override late final _StringsAchievementsTypesILoveMisskeyJaJp _iLoveMisskey = _StringsAchievementsTypesILoveMisskeyJaJp._(_root);
	@override late final _StringsAchievementsTypesFoundTreasureJaJp _foundTreasure = _StringsAchievementsTypesFoundTreasureJaJp._(_root);
	@override late final _StringsAchievementsTypesClient30minJaJp _client30min = _StringsAchievementsTypesClient30minJaJp._(_root);
	@override late final _StringsAchievementsTypesClient60minJaJp _client60min = _StringsAchievementsTypesClient60minJaJp._(_root);
	@override late final _StringsAchievementsTypesNoteDeletedWithin1minJaJp _noteDeletedWithin1min = _StringsAchievementsTypesNoteDeletedWithin1minJaJp._(_root);
	@override late final _StringsAchievementsTypesPostedAtLateNightJaJp _postedAtLateNight = _StringsAchievementsTypesPostedAtLateNightJaJp._(_root);
	@override late final _StringsAchievementsTypesPostedAt0min0secJaJp _postedAt0min0sec = _StringsAchievementsTypesPostedAt0min0secJaJp._(_root);
	@override late final _StringsAchievementsTypesSelfQuoteJaJp _selfQuote = _StringsAchievementsTypesSelfQuoteJaJp._(_root);
	@override late final _StringsAchievementsTypesHtl20npmJaJp _htl20npm = _StringsAchievementsTypesHtl20npmJaJp._(_root);
	@override late final _StringsAchievementsTypesViewInstanceChartJaJp _viewInstanceChart = _StringsAchievementsTypesViewInstanceChartJaJp._(_root);
	@override late final _StringsAchievementsTypesOutputHelloWorldOnScratchpadJaJp _outputHelloWorldOnScratchpad = _StringsAchievementsTypesOutputHelloWorldOnScratchpadJaJp._(_root);
	@override late final _StringsAchievementsTypesOpen3windowsJaJp _open3windows = _StringsAchievementsTypesOpen3windowsJaJp._(_root);
	@override late final _StringsAchievementsTypesDriveFolderCircularReferenceJaJp _driveFolderCircularReference = _StringsAchievementsTypesDriveFolderCircularReferenceJaJp._(_root);
	@override late final _StringsAchievementsTypesReactWithoutReadJaJp _reactWithoutRead = _StringsAchievementsTypesReactWithoutReadJaJp._(_root);
	@override late final _StringsAchievementsTypesClickedClickHereJaJp _clickedClickHere = _StringsAchievementsTypesClickedClickHereJaJp._(_root);
	@override late final _StringsAchievementsTypesJustPlainLuckyJaJp _justPlainLucky = _StringsAchievementsTypesJustPlainLuckyJaJp._(_root);
	@override late final _StringsAchievementsTypesSetNameToSyuiloJaJp _setNameToSyuilo = _StringsAchievementsTypesSetNameToSyuiloJaJp._(_root);
	@override late final _StringsAchievementsTypesPassedSinceAccountCreated1JaJp _passedSinceAccountCreated1 = _StringsAchievementsTypesPassedSinceAccountCreated1JaJp._(_root);
	@override late final _StringsAchievementsTypesPassedSinceAccountCreated2JaJp _passedSinceAccountCreated2 = _StringsAchievementsTypesPassedSinceAccountCreated2JaJp._(_root);
	@override late final _StringsAchievementsTypesPassedSinceAccountCreated3JaJp _passedSinceAccountCreated3 = _StringsAchievementsTypesPassedSinceAccountCreated3JaJp._(_root);
	@override late final _StringsAchievementsTypesLoggedInOnBirthdayJaJp _loggedInOnBirthday = _StringsAchievementsTypesLoggedInOnBirthdayJaJp._(_root);
	@override late final _StringsAchievementsTypesLoggedInOnNewYearsDayJaJp _loggedInOnNewYearsDay = _StringsAchievementsTypesLoggedInOnNewYearsDayJaJp._(_root);
	@override late final _StringsAchievementsTypesCookieClickedJaJp _cookieClicked = _StringsAchievementsTypesCookieClickedJaJp._(_root);
	@override late final _StringsAchievementsTypesBrainDiverJaJp _brainDiver = _StringsAchievementsTypesBrainDiverJaJp._(_root);
}

// Path: _role._priority
class _StringsRolePriorityJaJp extends _StringsRolePriorityEnUs {
	_StringsRolePriorityJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get low => '低';
	@override String get middle => '中';
	@override String get high => '高';
}

// Path: _role._options
class _StringsRoleOptionsJaJp extends _StringsRoleOptionsEnUs {
	_StringsRoleOptionsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'グローバルタイムラインの閲覧';
	@override String get ltlAvailable => 'ローカルタイムラインの閲覧';
	@override String get canPublicNote => 'パブリック投稿の許可';
	@override String get canInvite => 'サーバー招待コードの発行';
	@override String get canManageCustomEmojis => 'カスタム絵文字の管理';
	@override String get driveCapacity => 'ドライブ容量';
	@override String get alwaysMarkNsfw => 'ファイルにNSFWを常に付与';
	@override String get pinMax => 'ノートのピン留めの最大数';
	@override String get antennaMax => 'アンテナの作成可能数';
	@override String get wordMuteMax => 'ワードミュートの最大文字数';
	@override String get webhookMax => 'Webhookの作成可能数';
	@override String get clipMax => 'クリップの作成可能数';
	@override String get noteEachClipsMax => 'クリップ内のノートの最大数';
	@override String get userListMax => 'ユーザーリストの作成可能数';
	@override String get userEachUserListsMax => 'ユーザーリスト内のユーザーの最大数';
	@override String get rateLimitFactor => 'レートリミット';
	@override String get descriptionOfRateLimitFactor => '小さいほど制限が緩和され、大きいほど制限が強化されます。';
	@override String get canHideAds => '広告の非表示';
	@override String get canSearchNotes => 'ノート検索の利用可否';
}

// Path: _role._condition
class _StringsRoleConditionJaJp extends _StringsRoleConditionEnUs {
	_StringsRoleConditionJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'ローカルユーザー';
	@override String get isRemote => 'リモートユーザー';
	@override String get createdLessThan => 'アカウント作成から～以内';
	@override String get createdMoreThan => 'アカウント作成から～経過';
	@override String get followersLessThanOrEq => 'フォロワー数が～以下';
	@override String get followersMoreThanOrEq => 'フォロワー数が～以上';
	@override String get followingLessThanOrEq => 'フォロー数が～以下';
	@override String get followingMoreThanOrEq => 'フォロー数が～以上';
	@override String get notesLessThanOrEq => '投稿数が～以下';
	@override String get notesMoreThanOrEq => '投稿数が～以上';
	@override String get and => '～かつ～';
	@override String get or => '～または～';
	@override String get not => '～ではない';
}

// Path: _email._follow
class _StringsEmailFollowJaJp extends _StringsEmailFollowEnUs {
	_StringsEmailFollowJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローされました';
}

// Path: _email._receiveFollowRequest
class _StringsEmailReceiveFollowRequestJaJp extends _StringsEmailReceiveFollowRequestEnUs {
	_StringsEmailReceiveFollowRequestJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローリクエストを受け取りました';
}

// Path: _theme.keys
class _StringsThemeKeysJaJp extends _StringsThemeKeysEnUs {
	_StringsThemeKeysJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get accent => 'アクセント';
	@override String get bg => '背景';
	@override String get fg => '文字';
	@override String get focus => 'フォーカス';
	@override String get indicator => 'インジケーター';
	@override String get panel => 'パネル';
	@override String get shadow => '影';
	@override String get header => 'ヘッダー';
	@override String get navBg => 'サイドバーの背景';
	@override String get navFg => 'サイドバーの文字';
	@override String get navHoverFg => 'サイドバー文字(ホバー)';
	@override String get navActive => 'サイドバー文字(アクティブ)';
	@override String get navIndicator => 'サイドバーのインジケーター';
	@override String get link => 'リンク';
	@override String get hashtag => 'ハッシュタグ';
	@override String get mention => 'メンション';
	@override String get mentionMe => 'あなた宛てメンション';
	@override String get renote => 'Renote';
	@override String get modalBg => 'モーダルの背景';
	@override String get divider => '分割線';
	@override String get scrollbarHandle => 'スクロールバーの取っ手';
	@override String get scrollbarHandleHover => 'スクロールバーの取っ手（ホバー)';
	@override String get dateLabelFg => '日付ラベルの文字';
	@override String get infoBg => '情報の背景';
	@override String get infoFg => '情報の文字';
	@override String get infoWarnBg => '警告の背景';
	@override String get infoWarnFg => '警告の文字';
	@override String get cwBg => 'CW ボタンの背景';
	@override String get cwFg => 'CW ボタンの文字';
	@override String get cwHoverBg => 'CW ボタンの背景 (ホバー)';
	@override String get toastBg => '通知トーストの背景';
	@override String get toastFg => '通知トーストの文字';
	@override String get buttonBg => 'ボタンの背景';
	@override String get buttonHoverBg => 'ボタンの背景 (ホバー)';
	@override String get inputBorder => '入力ボックスの縁取り';
	@override String get listItemHoverBg => 'リスト項目の背景 (ホバー)';
	@override String get driveFolderBg => 'ドライブフォルダーの背景';
	@override String get wallpaperOverlay => '壁紙のオーバーレイ';
	@override String get badge => 'バッジ';
	@override String get messageBg => 'チャットの背景';
	@override String get accentDarken => 'アクセント (暗め)';
	@override String get accentLighten => 'アクセント (明るめ)';
	@override String get fgHighlighted => '強調された文字';
}

// Path: _widgets._userList
class _StringsWidgetsUserListJaJp extends _StringsWidgetsUserListEnUs {
	_StringsWidgetsUserListJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'リストを選択';
}

// Path: _postForm._placeholders
class _StringsPostFormPlaceholdersJaJp extends _StringsPostFormPlaceholdersEnUs {
	_StringsPostFormPlaceholdersJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get a => 'いまどうしてる？';
	@override String get b => '何かありましたか？';
	@override String get c => '何をお考えですか？';
	@override String get d => '言いたいことは？';
	@override String get e => 'ここに書いてください';
	@override String get f => 'あなたが書くのを待っています...';
}

// Path: _pages.blocks
class _StringsPagesBlocksJaJp extends _StringsPagesBlocksEnUs {
	_StringsPagesBlocksJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get text => 'テキスト';
	@override String get textarea => 'テキストエリア';
	@override String get section => 'セクション';
	@override String get image => '画像';
	@override String get button => 'ボタン';
	@override String get note => 'ノート埋め込み';
	@override late final _StringsPagesBlocksNoteJaJp _note = _StringsPagesBlocksNoteJaJp._(_root);
}

// Path: _notification._types
class _StringsNotificationTypesJaJp extends _StringsNotificationTypesEnUs {
	_StringsNotificationTypesJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get all => 'すべて';
	@override String get follow => 'フォロー';
	@override String get mention => 'メンション';
	@override String get reply => 'リプライ';
	@override String get renote => 'Renote';
	@override String get quote => '引用';
	@override String get reaction => 'リアクション';
	@override String get pollEnded => 'アンケートが終了';
	@override String get receiveFollowRequest => 'フォロー申請を受け取った';
	@override String get followRequestAccepted => 'フォローが受理された';
	@override String get achievementEarned => '実績の獲得';
	@override String get app => '連携アプリからの通知';
}

// Path: _notification._actions
class _StringsNotificationActionsJaJp extends _StringsNotificationActionsEnUs {
	_StringsNotificationActionsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'フォローバック';
	@override String get reply => '返信';
	@override String get renote => 'Renote';
}

// Path: _deck._columns
class _StringsDeckColumnsJaJp extends _StringsDeckColumnsEnUs {
	_StringsDeckColumnsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get main => 'メイン';
	@override String get widgets => 'ウィジェット';
	@override String get notifications => '通知';
	@override String get tl => 'タイムライン';
	@override String get antenna => 'アンテナ';
	@override String get list => 'リスト';
	@override String get channel => 'チャンネル';
	@override String get mentions => 'あなた宛て';
	@override String get direct => 'ダイレクト';
	@override String get roleTimeline => 'ロールタイムライン';
}

// Path: _webhookSettings._events
class _StringsWebhookSettingsEventsJaJp extends _StringsWebhookSettingsEventsEnUs {
	_StringsWebhookSettingsEventsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get follow => 'フォローしたとき';
	@override String get followed => 'フォローされたとき';
	@override String get note => 'ノートを投稿したとき';
	@override String get reply => '返信されたとき';
	@override String get renote => 'Renoteされたとき';
	@override String get reaction => 'リアクションがあったとき';
	@override String get mention => 'メンションされたとき';
}

// Path: _achievements._types._notes1
class _StringsAchievementsTypesNotes1JaJp extends _StringsAchievementsTypesNotes1EnUs {
	_StringsAchievementsTypesNotes1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'just setting up my msky';
	@override String get description => '初めてノートを投稿した';
	@override String get flavor => '良いMisskeyライフを！';
}

// Path: _achievements._types._notes10
class _StringsAchievementsTypesNotes10JaJp extends _StringsAchievementsTypesNotes10EnUs {
	_StringsAchievementsTypesNotes10JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'いくつかのノート';
	@override String get description => 'ノートを10回投稿した';
}

// Path: _achievements._types._notes100
class _StringsAchievementsTypesNotes100JaJp extends _StringsAchievementsTypesNotes100EnUs {
	_StringsAchievementsTypesNotes100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'たくさんのノート';
	@override String get description => 'ノートを100回投稿した';
}

// Path: _achievements._types._notes500
class _StringsAchievementsTypesNotes500JaJp extends _StringsAchievementsTypesNotes500EnUs {
	_StringsAchievementsTypesNotes500JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートまみれ';
	@override String get description => 'ノートを500回投稿した';
}

// Path: _achievements._types._notes1000
class _StringsAchievementsTypesNotes1000JaJp extends _StringsAchievementsTypesNotes1000EnUs {
	_StringsAchievementsTypesNotes1000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの山';
	@override String get description => 'ノートを1,000回投稿した';
}

// Path: _achievements._types._notes5000
class _StringsAchievementsTypesNotes5000JaJp extends _StringsAchievementsTypesNotes5000EnUs {
	_StringsAchievementsTypesNotes5000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '湧き出るノート';
	@override String get description => 'ノートを5,000回投稿した';
}

// Path: _achievements._types._notes10000
class _StringsAchievementsTypesNotes10000JaJp extends _StringsAchievementsTypesNotes10000EnUs {
	_StringsAchievementsTypesNotes10000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'スーパーノート';
	@override String get description => 'ノートを10,000回投稿した';
}

// Path: _achievements._types._notes20000
class _StringsAchievementsTypesNotes20000JaJp extends _StringsAchievementsTypesNotes20000EnUs {
	_StringsAchievementsTypesNotes20000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ニードモアノート';
	@override String get description => 'ノートを20,000回投稿した';
}

// Path: _achievements._types._notes30000
class _StringsAchievementsTypesNotes30000JaJp extends _StringsAchievementsTypesNotes30000EnUs {
	_StringsAchievementsTypesNotes30000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートノートノート';
	@override String get description => 'ノートを30,000回投稿した';
}

// Path: _achievements._types._notes40000
class _StringsAchievementsTypesNotes40000JaJp extends _StringsAchievementsTypesNotes40000EnUs {
	_StringsAchievementsTypesNotes40000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノート工場';
	@override String get description => 'ノートを40,000回投稿した';
}

// Path: _achievements._types._notes50000
class _StringsAchievementsTypesNotes50000JaJp extends _StringsAchievementsTypesNotes50000EnUs {
	_StringsAchievementsTypesNotes50000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの惑星';
	@override String get description => 'ノートを50,000回投稿した';
}

// Path: _achievements._types._notes60000
class _StringsAchievementsTypesNotes60000JaJp extends _StringsAchievementsTypesNotes60000EnUs {
	_StringsAchievementsTypesNotes60000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートクエーサー';
	@override String get description => 'ノートを60,000回投稿した';
}

// Path: _achievements._types._notes70000
class _StringsAchievementsTypesNotes70000JaJp extends _StringsAchievementsTypesNotes70000EnUs {
	_StringsAchievementsTypesNotes70000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ブラックノートホール';
	@override String get description => 'ノートを70,000回投稿した';
}

// Path: _achievements._types._notes80000
class _StringsAchievementsTypesNotes80000JaJp extends _StringsAchievementsTypesNotes80000EnUs {
	_StringsAchievementsTypesNotes80000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートギャラクシー';
	@override String get description => 'ノートを80,000回投稿した';
}

// Path: _achievements._types._notes90000
class _StringsAchievementsTypesNotes90000JaJp extends _StringsAchievementsTypesNotes90000EnUs {
	_StringsAchievementsTypesNotes90000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートバース';
	@override String get description => 'ノートを90,000回投稿した';
}

// Path: _achievements._types._notes100000
class _StringsAchievementsTypesNotes100000JaJp extends _StringsAchievementsTypesNotes100000EnUs {
	_StringsAchievementsTypesNotes100000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'ノートを100,000回投稿した';
	@override String get flavor => 'そんなに書くことある？';
}

// Path: _achievements._types._login3
class _StringsAchievementsTypesLogin3JaJp extends _StringsAchievementsTypesLogin3EnUs {
	_StringsAchievementsTypesLogin3JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅠ';
	@override String get description => '通算ログイン日数が3日';
	@override String get flavor => '今日からね僕は ミスキストってことで';
}

// Path: _achievements._types._login7
class _StringsAchievementsTypesLogin7JaJp extends _StringsAchievementsTypesLogin7EnUs {
	_StringsAchievementsTypesLogin7JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅡ';
	@override String get description => '通算ログイン日数が7日';
	@override String get flavor => '慣れてきましたか？';
}

// Path: _achievements._types._login15
class _StringsAchievementsTypesLogin15JaJp extends _StringsAchievementsTypesLogin15EnUs {
	_StringsAchievementsTypesLogin15JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅢ';
	@override String get description => '通算ログイン日数が15日';
}

// Path: _achievements._types._login30
class _StringsAchievementsTypesLogin30JaJp extends _StringsAchievementsTypesLogin30EnUs {
	_StringsAchievementsTypesLogin30JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅠ';
	@override String get description => '通算ログイン日数が30日';
}

// Path: _achievements._types._login60
class _StringsAchievementsTypesLogin60JaJp extends _StringsAchievementsTypesLogin60EnUs {
	_StringsAchievementsTypesLogin60JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅡ';
	@override String get description => '通算ログイン日数が60日';
}

// Path: _achievements._types._login100
class _StringsAchievementsTypesLogin100JaJp extends _StringsAchievementsTypesLogin100EnUs {
	_StringsAchievementsTypesLogin100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅢ';
	@override String get description => '通算ログイン日数が100日';
	@override String get flavor => 'そのユーザー、ミスキストにつき';
}

// Path: _achievements._types._login200
class _StringsAchievementsTypesLogin200JaJp extends _StringsAchievementsTypesLogin200EnUs {
	_StringsAchievementsTypesLogin200JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅰ';
	@override String get description => '通算ログイン日数が200日';
}

// Path: _achievements._types._login300
class _StringsAchievementsTypesLogin300JaJp extends _StringsAchievementsTypesLogin300EnUs {
	_StringsAchievementsTypesLogin300JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅱ';
	@override String get description => '通算ログイン日数が300日';
}

// Path: _achievements._types._login400
class _StringsAchievementsTypesLogin400JaJp extends _StringsAchievementsTypesLogin400EnUs {
	_StringsAchievementsTypesLogin400JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '常連Ⅲ';
	@override String get description => '通算ログイン日数が400日';
}

// Path: _achievements._types._login500
class _StringsAchievementsTypesLogin500JaJp extends _StringsAchievementsTypesLogin500EnUs {
	_StringsAchievementsTypesLogin500JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅠ';
	@override String get description => '通算ログイン日数が500日';
	@override String get flavor => '諸君、私はノートが好きだ';
}

// Path: _achievements._types._login600
class _StringsAchievementsTypesLogin600JaJp extends _StringsAchievementsTypesLogin600EnUs {
	_StringsAchievementsTypesLogin600JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅡ';
	@override String get description => '通算ログイン日数が600日';
}

// Path: _achievements._types._login700
class _StringsAchievementsTypesLogin700JaJp extends _StringsAchievementsTypesLogin700EnUs {
	_StringsAchievementsTypesLogin700JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランⅢ';
	@override String get description => '通算ログイン日数が700日';
}

// Path: _achievements._types._login800
class _StringsAchievementsTypesLogin800JaJp extends _StringsAchievementsTypesLogin800EnUs {
	_StringsAchievementsTypesLogin800JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅠ';
	@override String get description => '通算ログイン日数が800日';
}

// Path: _achievements._types._login900
class _StringsAchievementsTypesLogin900JaJp extends _StringsAchievementsTypesLogin900EnUs {
	_StringsAchievementsTypesLogin900JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅡ';
	@override String get description => '通算ログイン日数が900日';
}

// Path: _achievements._types._login1000
class _StringsAchievementsTypesLogin1000JaJp extends _StringsAchievementsTypesLogin1000EnUs {
	_StringsAchievementsTypesLogin1000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマスターⅢ';
	@override String get description => '通算ログイン日数が1,000日';
	@override String get flavor => 'Misskeyを使ってくれてありがとう！';
}

// Path: _achievements._types._noteClipped1
class _StringsAchievementsTypesNoteClipped1JaJp extends _StringsAchievementsTypesNoteClipped1EnUs {
	_StringsAchievementsTypesNoteClipped1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'クリップせずにはいられないな';
	@override String get description => '初めてノートをクリップした';
}

// Path: _achievements._types._noteFavorited1
class _StringsAchievementsTypesNoteFavorited1JaJp extends _StringsAchievementsTypesNoteFavorited1EnUs {
	_StringsAchievementsTypesNoteFavorited1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '星をみるひと';
	@override String get description => '初めてノートをお気に入りに登録した';
}

// Path: _achievements._types._myNoteFavorited1
class _StringsAchievementsTypesMyNoteFavorited1JaJp extends _StringsAchievementsTypesMyNoteFavorited1EnUs {
	_StringsAchievementsTypesMyNoteFavorited1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '星が欲しい';
	@override String get description => '自分のノートが他の人からお気に入りに登録された';
}

// Path: _achievements._types._profileFilled
class _StringsAchievementsTypesProfileFilledJaJp extends _StringsAchievementsTypesProfileFilledEnUs {
	_StringsAchievementsTypesProfileFilledJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '準備万端';
	@override String get description => 'プロフィール設定を行った';
}

// Path: _achievements._types._markedAsCat
class _StringsAchievementsTypesMarkedAsCatJaJp extends _StringsAchievementsTypesMarkedAsCatEnUs {
	_StringsAchievementsTypesMarkedAsCatJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '吾輩は猫である';
	@override String get description => 'アカウントをCatとして設定した';
	@override String get flavor => '名前はまだない。';
}

// Path: _achievements._types._following1
class _StringsAchievementsTypesFollowing1JaJp extends _StringsAchievementsTypesFollowing1EnUs {
	_StringsAchievementsTypesFollowing1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロー';
	@override String get description => '初めてフォローした';
}

// Path: _achievements._types._following10
class _StringsAchievementsTypesFollowing10JaJp extends _StringsAchievementsTypesFollowing10EnUs {
	_StringsAchievementsTypesFollowing10JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ついてく、ついてく';
	@override String get description => 'フォローが10人を超した';
}

// Path: _achievements._types._following50
class _StringsAchievementsTypesFollowing50JaJp extends _StringsAchievementsTypesFollowing50EnUs {
	_StringsAchievementsTypesFollowing50JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達たくさん';
	@override String get description => 'フォローが50人を超した';
}

// Path: _achievements._types._following100
class _StringsAchievementsTypesFollowing100JaJp extends _StringsAchievementsTypesFollowing100EnUs {
	_StringsAchievementsTypesFollowing100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達100人';
	@override String get description => 'フォローが100人を超した';
}

// Path: _achievements._types._following300
class _StringsAchievementsTypesFollowing300JaJp extends _StringsAchievementsTypesFollowing300EnUs {
	_StringsAchievementsTypesFollowing300JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '友達過多';
	@override String get description => 'フォローが300人を超した';
}

// Path: _achievements._types._followers1
class _StringsAchievementsTypesFollowers1JaJp extends _StringsAchievementsTypesFollowers1EnUs {
	_StringsAchievementsTypesFollowers1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロワー';
	@override String get description => '初めてフォローされた';
}

// Path: _achievements._types._followers10
class _StringsAchievementsTypesFollowers10JaJp extends _StringsAchievementsTypesFollowers10EnUs {
	_StringsAchievementsTypesFollowers10JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローミー！';
	@override String get description => 'フォロワーが10人を超した';
}

// Path: _achievements._types._followers50
class _StringsAchievementsTypesFollowers50JaJp extends _StringsAchievementsTypesFollowers50EnUs {
	_StringsAchievementsTypesFollowers50JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ぞろぞろ';
	@override String get description => 'フォロワーが50人を超した';
}

// Path: _achievements._types._followers100
class _StringsAchievementsTypesFollowers100JaJp extends _StringsAchievementsTypesFollowers100EnUs {
	_StringsAchievementsTypesFollowers100JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '人気者';
	@override String get description => 'フォロワーが100人を超した';
}

// Path: _achievements._types._followers300
class _StringsAchievementsTypesFollowers300JaJp extends _StringsAchievementsTypesFollowers300EnUs {
	_StringsAchievementsTypesFollowers300JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '一列でお並びください';
	@override String get description => 'フォロワーが300人を超した';
}

// Path: _achievements._types._followers500
class _StringsAchievementsTypesFollowers500JaJp extends _StringsAchievementsTypesFollowers500EnUs {
	_StringsAchievementsTypesFollowers500JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '基地局';
	@override String get description => 'フォロワーが500人を超した';
}

// Path: _achievements._types._followers1000
class _StringsAchievementsTypesFollowers1000JaJp extends _StringsAchievementsTypesFollowers1000EnUs {
	_StringsAchievementsTypesFollowers1000JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'インフルエンサー';
	@override String get description => 'フォロワーが1,000人を超した';
}

// Path: _achievements._types._collectAchievements30
class _StringsAchievementsTypesCollectAchievements30JaJp extends _StringsAchievementsTypesCollectAchievements30EnUs {
	_StringsAchievementsTypesCollectAchievements30JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '実績コレクター';
	@override String get description => '実績を30個以上獲得した';
}

// Path: _achievements._types._viewAchievements3min
class _StringsAchievementsTypesViewAchievements3minJaJp extends _StringsAchievementsTypesViewAchievements3minEnUs {
	_StringsAchievementsTypesViewAchievements3minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '実績好き';
	@override String get description => '実績一覧を3分以上眺め続けた';
}

// Path: _achievements._types._iLoveMisskey
class _StringsAchievementsTypesILoveMisskeyJaJp extends _StringsAchievementsTypesILoveMisskeyEnUs {
	_StringsAchievementsTypesILoveMisskeyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '"I ❤ #Misskey"を投稿した';
	@override String get flavor => 'Misskeyを使ってくださりありがとうございます！ by 開発チーム';
}

// Path: _achievements._types._foundTreasure
class _StringsAchievementsTypesFoundTreasureJaJp extends _StringsAchievementsTypesFoundTreasureEnUs {
	_StringsAchievementsTypesFoundTreasureJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '宝探し';
	@override String get description => '隠されたお宝を発見した';
}

// Path: _achievements._types._client30min
class _StringsAchievementsTypesClient30minJaJp extends _StringsAchievementsTypesClient30minEnUs {
	_StringsAchievementsTypesClient30minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ひとやすみ';
	@override String get description => 'クライアントを起動してから30分以上経過した';
}

// Path: _achievements._types._client60min
class _StringsAchievementsTypesClient60minJaJp extends _StringsAchievementsTypesClient60minEnUs {
	_StringsAchievementsTypesClient60minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyの見すぎ';
	@override String get description => 'クライアントを起動してから60分以上経過した';
}

// Path: _achievements._types._noteDeletedWithin1min
class _StringsAchievementsTypesNoteDeletedWithin1minJaJp extends _StringsAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsAchievementsTypesNoteDeletedWithin1minJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'いまのなし';
	@override String get description => '投稿してから1分以内にその投稿を削除した';
}

// Path: _achievements._types._postedAtLateNight
class _StringsAchievementsTypesPostedAtLateNightJaJp extends _StringsAchievementsTypesPostedAtLateNightEnUs {
	_StringsAchievementsTypesPostedAtLateNightJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '夜行性';
	@override String get description => '深夜にノートを投稿した';
	@override String get flavor => 'そろそろ寝よう。';
}

// Path: _achievements._types._postedAt0min0sec
class _StringsAchievementsTypesPostedAt0min0secJaJp extends _StringsAchievementsTypesPostedAt0min0secEnUs {
	_StringsAchievementsTypesPostedAt0min0secJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '時報';
	@override String get description => '0分0秒にノートを投稿した';
	@override String get flavor => 'ポッ ポッ ポッ ピーン';
}

// Path: _achievements._types._selfQuote
class _StringsAchievementsTypesSelfQuoteJaJp extends _StringsAchievementsTypesSelfQuoteEnUs {
	_StringsAchievementsTypesSelfQuoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '自己言及';
	@override String get description => '自分のノートを引用した';
}

// Path: _achievements._types._htl20npm
class _StringsAchievementsTypesHtl20npmJaJp extends _StringsAchievementsTypesHtl20npmEnUs {
	_StringsAchievementsTypesHtl20npmJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '流れるTL';
	@override String get description => 'ホームタイムラインの流速が20npmを越す';
}

// Path: _achievements._types._viewInstanceChart
class _StringsAchievementsTypesViewInstanceChartJaJp extends _StringsAchievementsTypesViewInstanceChartEnUs {
	_StringsAchievementsTypesViewInstanceChartJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'アナリスト';
	@override String get description => 'サーバーのチャートを表示した';
}

// Path: _achievements._types._outputHelloWorldOnScratchpad
class _StringsAchievementsTypesOutputHelloWorldOnScratchpadJaJp extends _StringsAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsAchievementsTypesOutputHelloWorldOnScratchpadJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'スクラッチパッドで hello world を出力した';
}

// Path: _achievements._types._open3windows
class _StringsAchievementsTypesOpen3windowsJaJp extends _StringsAchievementsTypesOpen3windowsEnUs {
	_StringsAchievementsTypesOpen3windowsJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'マルチウィンドウ';
	@override String get description => 'ウィンドウを3つ以上開いた状態にした';
}

// Path: _achievements._types._driveFolderCircularReference
class _StringsAchievementsTypesDriveFolderCircularReferenceJaJp extends _StringsAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsAchievementsTypesDriveFolderCircularReferenceJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '循環参照';
	@override String get description => 'ドライブのフォルダを再帰的な入れ子にしようとした';
}

// Path: _achievements._types._reactWithoutRead
class _StringsAchievementsTypesReactWithoutReadJaJp extends _StringsAchievementsTypesReactWithoutReadEnUs {
	_StringsAchievementsTypesReactWithoutReadJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ちゃんと読んだ？';
	@override String get description => '100文字以上のテキストを含むノートに投稿されてから3秒以内にリアクションした';
}

// Path: _achievements._types._clickedClickHere
class _StringsAchievementsTypesClickedClickHereJaJp extends _StringsAchievementsTypesClickedClickHereEnUs {
	_StringsAchievementsTypesClickedClickHereJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ここをクリック';
	@override String get description => 'ここをクリックした';
}

// Path: _achievements._types._justPlainLucky
class _StringsAchievementsTypesJustPlainLuckyJaJp extends _StringsAchievementsTypesJustPlainLuckyEnUs {
	_StringsAchievementsTypesJustPlainLuckyJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '単なるラッキー';
	@override String get description => '10秒ごとに0.005%の確率で獲得';
}

// Path: _achievements._types._setNameToSyuilo
class _StringsAchievementsTypesSetNameToSyuiloJaJp extends _StringsAchievementsTypesSetNameToSyuiloEnUs {
	_StringsAchievementsTypesSetNameToSyuiloJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '神様コンプレックス';
	@override String get description => '名前を syuilo に設定した';
}

// Path: _achievements._types._passedSinceAccountCreated1
class _StringsAchievementsTypesPassedSinceAccountCreated1JaJp extends _StringsAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated1JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '一周年';
	@override String get description => 'アカウント作成から1年経過した';
}

// Path: _achievements._types._passedSinceAccountCreated2
class _StringsAchievementsTypesPassedSinceAccountCreated2JaJp extends _StringsAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated2JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '二周年';
	@override String get description => 'アカウント作成から2年経過した';
}

// Path: _achievements._types._passedSinceAccountCreated3
class _StringsAchievementsTypesPassedSinceAccountCreated3JaJp extends _StringsAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated3JaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => '三周年';
	@override String get description => 'アカウント作成から3年経過した';
}

// Path: _achievements._types._loggedInOnBirthday
class _StringsAchievementsTypesLoggedInOnBirthdayJaJp extends _StringsAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsAchievementsTypesLoggedInOnBirthdayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'ハッピーバースデー';
	@override String get description => '誕生日にログインした';
}

// Path: _achievements._types._loggedInOnNewYearsDay
class _StringsAchievementsTypesLoggedInOnNewYearsDayJaJp extends _StringsAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsAchievementsTypesLoggedInOnNewYearsDayJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'あけましておめでとうございます';
	@override String get description => '元日にログインした';
	@override String get flavor => '今年も弊サーバーをよろしくお願いします';
}

// Path: _achievements._types._cookieClicked
class _StringsAchievementsTypesCookieClickedJaJp extends _StringsAchievementsTypesCookieClickedEnUs {
	_StringsAchievementsTypesCookieClickedJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'クッキーをクリックするゲーム';
	@override String get description => 'クッキーをクリックした';
	@override String get flavor => 'ソフト間違ってない？';
}

// Path: _achievements._types._brainDiver
class _StringsAchievementsTypesBrainDiverJaJp extends _StringsAchievementsTypesBrainDiverEnUs {
	_StringsAchievementsTypesBrainDiverJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diverへのリンクを投稿した';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: _pages.blocks._note
class _StringsPagesBlocksNoteJaJp extends _StringsPagesBlocksNoteEnUs {
	_StringsPagesBlocksNoteJaJp._(_StringsJaJp root) : this._root = root, super._(root);

	@override final _StringsJaJp _root; // ignore: unused_field

	// Translations
	@override String get id => 'ノートID';
	@override String get idDescription => 'ノートURLをペーストして設定することもできます。';
	@override String get detailed => '詳細な表示';
}

// Path: <root>
class _StringsJaKs extends _StringsEnUs {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJaKs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.jaKs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja-KS>.
	@override final TranslationMetadata<AppLocale, _StringsEnUs> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsJaKs _root = this; // ignore: unused_field

	// Translations
	@override String get _lang_ => '日本語 (関西弁)';
	@override String get headlineMisskey => 'ノートでつながるネットワーク';
	@override String get introMisskey => 'ようお越し！Misskeyは、オープンソースの分散型マイクロブログサービスやねん。\n「ノート」を作って、いま起こっとることを共有したり、あんたについて皆に発信しよう📡\n「ツッコミ」機能で、皆のノートに素早く反応を追加したりもできるで✌\nほな新しい世界を探検しよか🚀';
	@override String get poweredByMisskeyDescription => '{name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつなんやで。';
	@override String get monthAndDay => '{month}月 {day}日';
	@override String get search => '探す';
	@override String get notifications => '通知';
	@override String get username => 'ユーザー名';
	@override String get password => 'パスワード';
	@override String get forgotPassword => 'パスワード忘れたん？';
	@override String get fetchingAsApObject => '今ちと連合に照会しとるで';
	@override String get ok => 'ええで';
	@override String get gotIt => 'ほい';
	@override String get cancel => 'やめとく';
	@override String get noThankYou => 'やめとく';
	@override String get enterUsername => 'ユーザー名を入れてや';
	@override String get renotedBy => '{user}がRenoteしたで';
	@override String get noNotes => 'ノートはあらへん';
	@override String get noNotifications => '通知はあらへん';
	@override String get instance => 'サーバー';
	@override String get settings => '設定';
	@override String get notificationSettings => '通知の設定';
	@override String get basicSettings => '基本設定';
	@override String get otherSettings => 'ほかの設定';
	@override String get openInWindow => 'ウィンドウで開くで';
	@override String get profile => 'プロフィール';
	@override String get timeline => 'タイムライン';
	@override String get noAccountDescription => '自己紹介食ってもた';
	@override String get login => 'ログイン';
	@override String get loggingIn => 'ログインしよるで';
	@override String get logout => 'ログアウト';
	@override String get signup => '新規登録';
	@override String get uploading => 'アップロードしとるで';
	@override String get save => 'とっとく';
	@override String get users => 'ユーザー';
	@override String get addUser => 'ユーザーを追加や';
	@override String get favorite => 'お気に入り';
	@override String get favorites => 'お気に入り';
	@override String get unfavorite => 'やっぱ気に入らん';
	@override String get favorited => 'お気に入りに入れたで';
	@override String get alreadyFavorited => 'もうお気に入りに入れとるがな。';
	@override String get cantFavorite => 'アカン、お気に入りに入れれんかったわ。';
	@override String get pin => 'ピン留めしとく';
	@override String get unpin => 'やっぱピン留めせん';
	@override String get copyContent => '内容をコピー';
	@override String get copyLink => 'リンクをコピー';
	@override String get delete => 'ほかす';
	@override String get deleteAndEdit => 'ほかして直す';
	@override String get deleteAndEditConfirm => 'このノートをほかしてもっかい直す？このノートへのツッコミ、Renote、返信も全部消えるんやけどそれでもええん？';
	@override String get addToList => 'リストに入れたる';
	@override String get sendMessage => 'メッセージを送る';
	@override String get copyRSS => 'RSSをコピー';
	@override String get copyUsername => 'ユーザー名をコピー';
	@override String get copyUserId => 'ユーザーIDをコピー';
	@override String get copyNoteId => 'ノートIDをコピー';
	@override String get searchUser => 'ユーザーを検索';
	@override String get reply => '返事';
	@override String get loadMore => 'まだまだあるで！';
	@override String get showMore => 'まだまだあるで！';
	@override String get showLess => 'さいなら';
	@override String get youGotNewFollower => 'フォローされたで';
	@override String get receiveFollowRequest => 'フォローリクエストされたで';
	@override String get followRequestAccepted => 'フォローが承認されたで';
	@override String get mention => 'メンション';
	@override String get mentions => '自分宛て';
	@override String get directNotes => 'ダイレクト投稿';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get export => 'エクスポート';
	@override String get files => 'ファイル';
	@override String get download => 'ダウンロード';
	@override String get driveFileDeleteConfirm => 'ファイル「{name}」をほかしてええか？このファイルを添付したノートも消えてまうで。';
	@override String get unfollowConfirm => '{name}のフォローを解除してもええんか？';
	@override String get exportRequested => 'エクスポートしてな、ってリクエストしたけど、これ多分めっちゃ時間かかるで。エクスポート終わったら「ドライブ」に突っ込んどくで。';
	@override String get importRequested => 'インポートしてな、ってリクエストしたけど、これ多分めっちゃ時間かかるで。';
	@override String get lists => 'リスト';
	@override String get noLists => 'リストなんてあらへんで';
	@override String get note => 'ノート';
	@override String get notes => 'ノート';
	@override String get following => 'フォロー';
	@override String get followers => 'フォロワー';
	@override String get followsYou => 'フォローされとるで';
	@override String get createList => 'リスト作る';
	@override String get manageLists => 'リストの管理';
	@override String get error => 'エラー';
	@override String get somethingHappened => 'なんかあかんわ';
	@override String get retry => 'もっぺんやる？';
	@override String get pageLoadError => 'ページが読み込めんかったわ。';
	@override String get pageLoadErrorDescription => 'これは普通ならネットワークかブラウザキャッシュが悪さしてるんよ。キャッシュをほかすか、もうちょっとだけ待ってくれへん？';
	@override String get serverIsDead => 'サーバーからの応答がないで。もうちょい待ってから試してみてな。';
	@override String get youShouldUpgradeClient => 'このページを表示するには、リロードして新しいバージョンのクライアントを使ってなー。';
	@override String get enterListName => 'リスト名を入れてや';
	@override String get privacy => 'プライバシー';
	@override String get makeFollowManuallyApprove => 'ええって言わなフォローできへんようにする';
	@override String get defaultNoteVisibility => 'もとからの公開範囲';
	@override String get follow => 'フォロー';
	@override String get followRequest => 'フォローを頼む';
	@override String get followRequests => 'フォロー申請';
	@override String get unfollow => 'フォローやめる';
	@override String get followRequestPending => 'フォロー許してくれるん待っとる';
	@override String get enterEmoji => '絵文字を入れてや';
	@override String get renote => 'Renote';
	@override String get unrenote => 'Renoteやめる';
	@override String get renoted => 'Renoteしたで。';
	@override String get cantRenote => 'この投稿はRenoteできへんらしい。';
	@override String get cantReRenote => 'Renote自体はRenoteできへんで。';
	@override String get quote => '引用';
	@override String get inChannelRenote => 'チャンネル内Renote';
	@override String get inChannelQuote => 'チャンネル内引用';
	@override String get pinnedNote => 'ピン留めされとるノート';
	@override String get pinned => 'ピン留めしとく';
	@override String get you => 'あんた';
	@override String get clickToShow => '押したら見えるで';
	@override String get sensitive => '気いつけて見いや';
	@override String get add => '増やす';
	@override String get reaction => 'ツッコミ';
	@override String get reactions => 'ツッコミ';
	@override String get reactionSetting => 'ピッカーに出しとくツッコミ';
	@override String get reactionSettingDescription2 => 'ドラッグで並び替え、クリックで削除、＋を押して追加やで。';
	@override String get rememberNoteVisibility => '公開範囲覚えといて';
	@override String get attachCancel => 'のっけるのやめる';
	@override String get markAsSensitive => 'ちょっとこれはアカン';
	@override String get unmarkAsSensitive => 'そこまでアカンことないやろ';
	@override String get enterFileName => 'ファイル名を入れてや';
	@override String get mute => 'ミュート';
	@override String get unmute => 'ミュートやめたる';
	@override String get renoteMute => 'Renoteは見いひん';
	@override String get renoteUnmute => 'Renoteもやっぱ見るわ';
	@override String get block => 'ブロック';
	@override String get unblock => 'ブロックやめたる';
	@override String get suspend => '凍結';
	@override String get unsuspend => '溶かす';
	@override String get blockConfirm => 'ブロックしてもええんか？';
	@override String get unblockConfirm => 'ブロックやめたるってほんまか？';
	@override String get suspendConfirm => '凍結してしもうてええか？';
	@override String get unsuspendConfirm => '解凍するけどええか？';
	@override String get selectList => 'リストを選ぶ';
	@override String get selectChannel => 'チャンネルを選ぶ';
	@override String get selectAntenna => 'アンテナを選ぶ';
	@override String get selectWidget => 'ウィジェットを選ぶ';
	@override String get editWidgets => 'ウィジェットをいじる';
	@override String get editWidgetsExit => '編集終ったで';
	@override String get customEmojis => 'カスタム絵文字';
	@override String get emoji => '絵文字';
	@override String get emojis => '絵文字';
	@override String get emojiName => '絵文字はんの名前';
	@override String get emojiUrl => '絵文字画像URL';
	@override String get addEmoji => '絵文字を追加';
	@override String get settingGuide => 'ええ感じの設定';
	@override String get cacheRemoteFiles => 'リモートのファイルをキャッシュする';
	@override String get cacheRemoteFilesDescription => 'この設定を切っとったら、リモートファイルをキャッシュせんと直リンクするようになるで。サーバーの容量は節約できるけど、サムネイルを作らんなるから通信量が増えるで。';
	@override String get flagAsBot => 'Botにするで';
	@override String get flagAsBotDescription => 'もしこのアカウントをプログラム使うて運用するんやったら、このフラグをオンにしてや。オンにすれば、反応がバーッて連鎖せんように開発者が使うたり、Misskeyのシステム上での扱いがBotに合ったもんになるからな。';
	@override String get flagAsCat => 'Catやで';
	@override String get flagAsCatDescription => 'ワレ、猫ちゃんならこのフラグをつけてみ？';
	@override String get flagShowTimelineReplies => 'タイムラインにノートへの返信を表示するで';
	@override String get flagShowTimelineRepliesDescription => 'オンにしたら、タイムラインにユーザーのノートの他にもそのユーザーの他のノートへの返信を表示するで。';
	@override String get autoAcceptFollowed => 'フォローしとるユーザーからのフォローリクエストを勝手に許可しとく';
	@override String get addAccount => 'アカウントを追加';
	@override String get reloadAccountsList => 'アカウントリストの情報を更新';
	@override String get loginFailed => 'ログインに失敗してもうた…';
	@override String get showOnRemote => 'リモートで見る';
	@override String get general => '全般';
	@override String get wallpaper => '壁紙';
	@override String get setWallpaper => '壁紙を設定';
	@override String get removeWallpaper => '壁紙ほかす';
	@override String get searchWith => '検索: {q}';
	@override String get youHaveNoLists => 'リストがあらへんで？';
	@override String get followConfirm => '{name}をフォローしてええか？';
	@override String get proxyAccount => 'プロキシアカウント';
	@override String get proxyAccountDescription => 'プロキシアカウントは、代わりにフォローしてくれるアカウントや。例えば、551に豚まんが無いときやったり、ユーザーがリモートユーザーをアカウントに入れたとき、リストに入れられたユーザーが誰からもフォローされてないと寂しいやん。寂しいし、アクティビティも配達されへんから、プロキシアカウントがフォローしてくれるで。ええやつやん…';
	@override String get host => 'ホスト';
	@override String get selectUser => 'ユーザーを選ぶ';
	@override String get recipient => '宛先';
	@override String get annotation => '注釈';
	@override String get federation => '連合';
	@override String get instances => 'サーバー';
	@override String get registeredAt => '初観測';
	@override String get latestRequestReceivedAt => 'ちょっと前のリクエスト受信';
	@override String get latestStatus => 'ちょっと前のステータス';
	@override String get storageUsage => 'ストレージ使うた量';
	@override String get charts => 'チャート';
	@override String get perHour => '1時間ごと';
	@override String get perDay => '1日ごと';
	@override String get stopActivityDelivery => 'アクティビティの配送をやめる';
	@override String get blockThisInstance => 'このサーバーをブロックすんで';
	@override String get operations => '操作';
	@override String get software => 'ソフトウェア';
	@override String get version => 'バージョン';
	@override String get metadata => 'メタデータ';
	@override String get withNFiles => '{n}個のファイル';
	@override String get monitor => 'モニター';
	@override String get jobQueue => 'ジョブキュー';
	@override String get cpuAndMemory => 'CPUとメモリ';
	@override String get network => 'ネットワーク';
	@override String get disk => 'ディスク';
	@override String get instanceInfo => 'サーバー情報';
	@override String get statistics => '統計';
	@override String get clearQueue => 'キューをほかす';
	@override String get clearQueueConfirmTitle => 'キューをほかしとこか？';
	@override String get clearQueueConfirmText => '未配達の投稿は配送されんなるで。ふつうこの操作を行う必要は無いんやけどな。';
	@override String get clearCachedFiles => 'キャッシュをほかす';
	@override String get clearCachedFilesConfirm => 'キャッシュされとるリモートファイルをみんなほかしてええか？';
	@override String get blockedInstances => 'ブロックしたサーバー';
	@override String get blockedInstancesDescription => 'ブロックしたいサーバーのホストを改行で区切って設定してな。ブロックされてもうたサーバーとはもう金輪際やり取りできひんくなるで。ついでにそのサブドメインもブロックするで。';
	@override String get muteAndBlock => 'ミュートとブロック';
	@override String get mutedUsers => 'ミュートしたユーザー';
	@override String get blockedUsers => 'ブロックしたユーザー';
	@override String get noUsers => 'ユーザーはおらん';
	@override String get editProfile => 'プロフィールをいじる';
	@override String get noteDeleteConfirm => 'このノートをほかしてええか？';
	@override String get pinLimitExceeded => 'これ以上ピン留めできひん';
	@override String get intro => 'Misskeyのインストールが完了したで！管理者アカウントを作ってや。';
	@override String get done => 'でけた';
	@override String get processing => '処理しとる';
	@override String get preview => 'プレビュー';
	@override String get default_ => 'デフォルト';
	@override String get defaultValueIs => 'デフォルト: {value}';
	@override String get noCustomEmojis => '絵文字はあらへん';
	@override String get noJobs => 'ジョブはあらへん';
	@override String get federating => '連合しとる';
	@override String get blocked => 'ブロックしとる';
	@override String get suspended => '配信せぇへん';
	@override String get all => 'みんな';
	@override String get subscribing => '購読しとる';
	@override String get publishing => '配信しとる';
	@override String get notResponding => '応答してへんで';
	@override String get instanceFollowing => 'サーバーのフォロー';
	@override String get instanceFollowers => 'サーバーのフォロワー\n';
	@override String get instanceUsers => 'サーバーのユーザー';
	@override String get changePassword => 'パスワードをいじる';
	@override String get security => 'セキュリティ';
	@override String get retypedNotMatch => '入れたやつ合うてへんわ。';
	@override String get currentPassword => '今のパスワード';
	@override String get newPassword => '次のパスワード';
	@override String get newPasswordRetype => '今度のパスワード(もっぺん入れて)';
	@override String get attachFile => 'ファイルのっける';
	@override String get more => '他のん';
	@override String get featured => 'ハイライト';
	@override String get usernameOrUserId => 'ユーザー名かユーザーID';
	@override String get noSuchUser => 'ユーザーが見つからへんで';
	@override String get lookup => '見てきて';
	@override String get announcements => 'お知らせ';
	@override String get imageUrl => '画像URL';
	@override String get remove => 'ほかす';
	@override String get removed => 'ほかしたで！';
	@override String get removeAreYouSure => '「{x}」はほかしてええか？';
	@override String get deleteAreYouSure => '「{x}」はほかしてええか？';
	@override String get resetAreYouSure => 'リセットしてええん？';
	@override String get saved => '保存したで！';
	@override String get messaging => 'チャット';
	@override String get upload => 'アップロード';
	@override String get keepOriginalUploading => 'オリジナル画像のまんま';
	@override String get keepOriginalUploadingDescription => '画像を上げるときにオリジナル版のまんまにするで。オフにしたら、上げたときにブラウザでWeb公開用の画像を生成するで。 ';
	@override String get fromDrive => 'ドライブから';
	@override String get fromUrl => 'URLから';
	@override String get uploadFromUrl => 'URLアップロード';
	@override String get uploadFromUrlDescription => 'このURLのファイルをアップロードしたいねん';
	@override String get uploadFromUrlRequested => 'アップロードしたい言うといたで';
	@override String get uploadFromUrlMayTakeTime => 'アップロード終わるんにちょい時間かかるかもしれへんわ。';
	@override String get explore => 'みつける';
	@override String get messageRead => 'もう読んだ';
	@override String get noMoreHistory => 'これより昔のんはあらへんで';
	@override String get startMessaging => 'チャットやるで';
	@override String get nUsersRead => '{n}人が読んでもうた';
	@override String get agreeTo => '{x}に同意したで';
	@override String get agree => 'せやな';
	@override String get agreeBelow => '下記に同意したる';
	@override String get basicNotesBeforeCreateAccount => 'よう読んでやってや';
	@override String get termsOfService => '使うための決め事';
	@override String get start => '始める';
	@override String get home => 'ホーム';
	@override String get remoteUserCaution => 'リモートユーザーやから、足りひん情報あるかもしれへん。';
	@override String get activity => 'アクティビティ';
	@override String get images => '画像';
	@override String get image => '画像';
	@override String get birthday => '生まれた日';
	@override String get yearsOld => '{age}歳';
	@override String get registeredDate => '始めた日';
	@override String get location => '場所';
	@override String get theme => 'テーマ';
	@override String get themeForLightMode => 'ライトモードではこのテーマ使うて';
	@override String get themeForDarkMode => 'ダークモードではこのテーマ使うて';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get lightThemes => 'デイゲーム';
	@override String get darkThemes => 'ナイトゲーム';
	@override String get syncDeviceDarkMode => 'デバイスのダークモードと一緒にする';
	@override String get drive => 'ドライブ';
	@override String get fileName => 'ファイル名';
	@override String get selectFile => 'ファイル選んでや';
	@override String get selectFiles => 'ファイル選んでや';
	@override String get selectFolder => 'フォルダ選んでや';
	@override String get selectFolders => 'フォルダ選んでや';
	@override String get renameFile => 'ファイル名をいらう';
	@override String get folderName => 'フォルダー名';
	@override String get createFolder => 'フォルダー作る';
	@override String get renameFolder => 'フォルダー名を変える';
	@override String get deleteFolder => 'フォルダーをほかす';
	@override String get addFile => 'ファイルを追加';
	@override String get emptyDrive => 'ドライブは空っぽや';
	@override String get emptyFolder => 'このフォルダーは空や';
	@override String get unableToDelete => '消せんかったわ';
	@override String get inputNewFileName => '今度のファイル名は何にするん？';
	@override String get inputNewDescription => '新しいキャプションを入れてや';
	@override String get inputNewFolderName => '今度のフォルダ名は何にするん？';
	@override String get circularReferenceFolder => '移動先のフォルダーは、移動するフォルダーのサブフォルダーや。';
	@override String get hasChildFilesOrFolders => 'このフォルダは空っぽちゃうから消されへん';
	@override String get copyUrl => 'URLをコピー';
	@override String get rename => '名前を変えるで';
	@override String get avatar => 'アイコン';
	@override String get banner => 'バナー';
	@override String get nsfw => '見るんは気いつけてな';
	@override String get whenServerDisconnected => 'サーバーとの接続が失くなってしもうたとき';
	@override String get disconnectedFromServer => 'サーバーが機嫌悪いねん';
	@override String get reload => 'リロード';
	@override String get doNothing => '何もせんとく';
	@override String get reloadConfirm => 'リロードしてええか？';
	@override String get watch => 'ウォッチ';
	@override String get unwatch => 'ウォッチやめる';
	@override String get accept => 'ええで';
	@override String get reject => 'あかん';
	@override String get normal => 'ええ感じ';
	@override String get instanceName => 'サーバー名';
	@override String get instanceDescription => 'サーバーの紹介';
	@override String get maintainerName => '管理者はんの名前';
	@override String get maintainerEmail => '管理者はんのメールアドレス';
	@override String get tosUrl => '使うための決め事のURL';
	@override String get thisYear => '今年';
	@override String get thisMonth => '今月';
	@override String get today => '今日';
	@override String get dayX => '{day}日';
	@override String get monthX => '{month}月';
	@override String get yearX => '{year}年';
	@override String get pages => 'ページ';
	@override String get integration => '連携';
	@override String get connectService => 'つなげるで';
	@override String get disconnectService => '切るで';
	@override String get enableLocalTimeline => 'ローカルタイムラインを使えるようにするわ';
	@override String get enableGlobalTimeline => 'グローバルタイムラインを使えるようにするわ';
	@override String get disablingTimelinesInfo => 'ここらへんのタイムラインを使えんようにしてしもても、管理者とモデレーターは使えるままになってるで、そうやなかったら不便やからな。';
	@override String get registration => '登録';
	@override String get enableRegistration => '一見さんでも誰でもいらっしゃ～い';
	@override String get invite => '来てや';
	@override String get driveCapacityPerLocalAccount => 'ローカルユーザーはんひとりあたりのドライブ容量';
	@override String get driveCapacityPerRemoteAccount => 'リモートユーザーはんひとりあたりのドライブ容量';
	@override String get inMb => 'メガバイト単位';
	@override String get iconUrl => 'アイコン画像のURL';
	@override String get bannerUrl => 'バナー画像のURL';
	@override String get backgroundImageUrl => '背景画像のURL';
	@override String get basicInfo => '基本情報';
	@override String get pinnedUsers => 'ピン留めしたユーザー';
	@override String get pinnedUsersDescription => '「みつける」ページとかにピン留めしたいユーザーをここに書けばええんやで。ユーザー毎に改行してや。';
	@override String get pinnedPages => 'ピン留めページ';
	@override String get pinnedPagesDescription => 'サーバーのいっちゃん上にピン留めしたいページのパスを改行で区切って記述してな';
	@override String get pinnedClipId => 'ピン留めするクリップのID';
	@override String get pinnedNotes => 'ピン留めされとるノート';
	@override String get hcaptcha => 'hCaptcha（キャプチャ）';
	@override String get enableHcaptcha => 'hCaptcha（キャプチャ）をつけとく';
	@override String get hcaptchaSiteKey => 'サイトキー';
	@override String get hcaptchaSecretKey => 'シークレットキー';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA（リキャプチャ）を有効にする';
	@override String get recaptchaSiteKey => 'サイトキー';
	@override String get recaptchaSecretKey => 'シークレットキー';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstileを有効にするで';
	@override String get turnstileSiteKey => 'サイトキー';
	@override String get turnstileSecretKey => 'シークレットキー';
	@override String get avoidMultiCaptchaConfirm => 'ぎょうさんのCaptchaをつこてしまうと、仲良うせんことがあるんや。他のCaptchaをなおしとこか？別にキャンセルしてもろうたらCaptchaは消されへんで済むけど知らんで。';
	@override String get antennas => 'アンテナ';
	@override String get manageAntennas => 'アンテナいじる';
	@override String get name => '名前';
	@override String get antennaSource => '受信ソース(このソースは食われへん)';
	@override String get antennaKeywords => '受信キーワード';
	@override String get antennaExcludeKeywords => '除外キーワード';
	@override String get antennaKeywordsDescription => 'スペースで区切ったるとAND指定で、改行で区切ったるとOR指定や';
	@override String get notifyAntenna => '新しいノートを通知すんで';
	@override String get withFileAntenna => 'なんか添付されたノートだけ';
	@override String get enableServiceworker => 'ブラウザにプッシュ通知が行くようにする';
	@override String get antennaUsersDescription => 'ユーザー名を改行で区切ったってな';
	@override String get caseSensitive => '大文字と小文字は別もんや';
	@override String get withReplies => '返信も入れたって';
	@override String get connectedTo => '次のアカウントに繋がっとるで';
	@override String get notesAndReplies => '投稿と返信';
	@override String get withFiles => 'ファイル付いとる';
	@override String get silence => 'サイレンス';
	@override String get silenceConfirm => 'サイレンスしよか？';
	@override String get unsilence => 'サイレンスやめるで';
	@override String get unsilenceConfirm => 'サイレンスやめよか？';
	@override String get popularUsers => '人気のユーザー';
	@override String get recentlyUpdatedUsers => 'ちょっと前に投稿したばっかりのユーザー';
	@override String get recentlyRegisteredUsers => 'ちょっと前に始めたばっかりのユーザー';
	@override String get recentlyDiscoveredUsers => '最近見っけたユーザー';
	@override String get exploreUsersCount => '{count}もユーザーおるで';
	@override String get exploreFediverse => 'Fediverseを探ってみる';
	@override String get popularTags => '人気のタグ';
	@override String get userList => 'リスト';
	@override String get about => '情報';
	@override String get aboutMisskey => 'Misskeyってなんや？';
	@override String get administrator => '管理者';
	@override String get token => 'トークン';
	@override String get twofa => '二要素認証';
	@override String get totp => '認証アプリ';
	@override String get totpDescription => '認証アプリ使うてワンタイムパスワードを入れる';
	@override String get moderator => 'モデレーター';
	@override String get moderation => 'モデレーション';
	@override String get nUsersMentioned => '{n}人が投稿';
	@override String get securityKeyAndPasskey => 'セキュリティキー・パスキー';
	@override String get securityKey => 'セキュリティキー';
	@override String get lastUsed => '最後につこうた日';
	@override String get lastUsedAt => '最後に使うたんは: {t}';
	@override String get unregister => '登録やめる';
	@override String get passwordLessLogin => 'パスワード無くてもログインできるようにする';
	@override String get passwordLessLoginDescription => 'パスワードなんかいらん、セキュリティキーとかパスキーだけでログインするわ';
	@override String get resetPassword => 'パスワードをリセット';
	@override String get newPasswordIs => '今度のパスワードは「{password}」や';
	@override String get reduceUiAnimation => 'UIの動きやアニメーションを少なする';
	@override String get share => 'わけわけ';
	@override String get notFound => '見つからへんね';
	@override String get notFoundDescription => '言われたURLにはまるページはなかったで。';
	@override String get uploadFolder => 'とりあえずアップロードしたやつ置いとく所';
	@override String get cacheClear => 'キャッシュをほかす';
	@override String get markAsReadAllNotifications => '通知はもう全て読んだわっ';
	@override String get markAsReadAllUnreadNotes => '投稿は全て読んだわっ';
	@override String get markAsReadAllTalkMessages => 'チャットはもうぜんぶ読んだわっ';
	@override String get help => 'ヘルプ';
	@override String get inputMessageHere => 'ここにメッセージ書いてや';
	@override String get close => 'さいなら';
	@override String get invites => '来てや';
	@override String get members => 'メンバーはん';
	@override String get transfer => '譲渡';
	@override String get title => 'タイトル';
	@override String get text => 'テキスト';
	@override String get enable => '有効にするで';
	@override String get next => '次';
	@override String get retype => 'もっかい入力';
	@override String get noteOf => '{user}はんのノート';
	@override String get quoteAttached => '引用付いとるで';
	@override String get quoteQuestion => '引用として添付してもええか？';
	@override String get noMessagesYet => 'まだチャットはあらへんで';
	@override String get newMessageExists => '新しいメッセージがきたで';
	@override String get onlyOneFileCanBeAttached => 'ごめんな、メッセージに添付できるファイルはひとつだけなんよ。';
	@override String get signinRequired => 'ログインしてくれへん？';
	@override String get invitations => '来てや';
	@override String get invitationCode => '招待コード';
	@override String get checking => '確認しとるで';
	@override String get available => '使えるで';
	@override String get unavailable => '利用できん';
	@override String get usernameInvalidFormat => 'a~z、A~Z、0~9、_が使えるで';
	@override String get tooShort => '短すぎやろ！';
	@override String get tooLong => '長すぎやろ！';
	@override String get weakPassword => 'へぼいパスワード';
	@override String get normalPassword => 'ぼちぼちのパスワード';
	@override String get strongPassword => 'ええ感じのパスワード';
	@override String get passwordMatched => 'よし！一致や！';
	@override String get passwordNotMatched => '一致しとらんで？';
	@override String get signinWith => '{x}でログイン';
	@override String get signinFailed => 'ログインできんかったで。もっかいユーザー名とパスワードを確認してみてや。';
	@override String get or => 'それか';
	@override String get language => '言語';
	@override String get uiLanguage => 'UIの表示言語';
	@override String get aboutX => '{x}について';
	@override String get emojiStyle => '絵文字のスタイル';
	@override String get native => 'ネイティブ';
	@override String get disableDrawer => 'メニューをドロワーで表示せえへん';
	@override String get showNoteActionsOnlyHover => 'ノートの操作部をホバー時のみ表示するで';
	@override String get noHistory => '履歴はないわ。';
	@override String get signinHistory => 'ログイン履歴';
	@override String get enableAdvancedMfm => 'ややこしいMFMもありにする';
	@override String get enableAnimatedMfm => '動きがやかましいMFMも許したる';
	@override String get doing => 'やっとるがな';
	@override String get category => 'カテゴリ';
	@override String get tags => 'タグ';
	@override String get docSource => 'このドキュメントのソース';
	@override String get createAccount => 'アカウントを作るで';
	@override String get existingAccount => '前に作ったアカウント';
	@override String get regenerate => 'もっぺん生成するで';
	@override String get fontSize => '字の大きさ';
	@override String get mediaListWithOneImageAppearance => '画像が1枚のみのメディアリストの高さ';
	@override String get limitTo => '{x}をいっぱいに';
	@override String get noFollowRequests => 'フォロー申請はあらへんで';
	@override String get openImageInNewTab => '画像を新しいタブで開くで';
	@override String get dashboard => 'ダッシュボード';
	@override String get local => 'ローカル';
	@override String get remote => 'リモート';
	@override String get total => '合計';
	@override String get weekOverWeekChanges => '前週比';
	@override String get dayOverDayChanges => '前日比';
	@override String get appearance => '見た目';
	@override String get clientSettings => 'クライアントの設定';
	@override String get accountSettings => 'アカウントの設定';
	@override String get promotion => '宣伝';
	@override String get promote => '宣伝';
	@override String get numberOfDays => '日数';
	@override String get hideThisNote => 'このノートは表示せんでいい';
	@override String get showFeaturedNotesInTimeline => 'タイムラインにおすすめのノートを表示してや';
	@override String get objectStorage => 'オブジェクトストレージ';
	@override String get useObjectStorage => 'オブジェクトストレージを使う';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '参照に使うにURLやで。CDNやProxyを使用してるんならそのURL、S3: \'https://<bucket>.s3.amazonaws.com\'、GCSとかなら: \'https://storage.googleapis.com/<bucket>\'。';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => '使ってるサービスのbucket名を選んでな';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'このprefixのディレクトリ下に格納されるで';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'S3のときは空、それ以外は各サービスのendpointを指定してなー。\'<host>\'ってやるか\'<host>:<port>\'みたいに指定するんやで。';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '\'xx-east-1\'みたいなregionを指定したってやー。使ってるサービスにregionの概念がないときは、空か\'us-east-1\'にするんやで。';
	@override String get objectStorageUseSSL => 'SSLを使う';
	@override String get objectStorageUseSSLDesc => 'API接続にhttpsを使わん場合はオフにするんやで';
	@override String get objectStorageUseProxy => 'Proxyを使う';
	@override String get objectStorageUseProxyDesc => 'API接続にproxy使わんのやったら切ってくれへん？';
	@override String get objectStorageSetPublicRead => 'アップロードした時に\'public-read\'を設定してや';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyleを使たらバケット名をURLのホスト名やなくてパスの一部として必ず指定させるようになるで。セルフホストされたMinioとかを使うてるんやったら有効にせなあかん場合があるで。';
	@override String get serverLogs => 'サーバーログ';
	@override String get deleteAll => '全部ほかす';
	@override String get showFixedPostForm => 'タイムラインの上の方で投稿できるようにやってくれへん？';
	@override String get showFixedPostFormInChannel => 'タイムラインの上の方で投稿できるようにするわ(チャンネル)';
	@override String get newNoteRecived => '新しいノートがあるで';
	@override String get sounds => 'サウンド';
	@override String get sound => 'サウンド';
	@override String get listen => '聴く';
	@override String get none => 'なし';
	@override String get showInPage => 'ページで表示';
	@override String get popout => 'ポップアウト';
	@override String get volume => 'やかましさ';
	@override String get masterVolume => '全体のやかましさ';
	@override String get details => 'もっと';
	@override String get chooseEmoji => '絵文字を選ぶ';
	@override String get unableToProcess => 'なんか奥の方で詰まってもうた';
	@override String get recentUsed => '最近使ったやつ';
	@override String get install => 'インストール';
	@override String get uninstall => 'アンインストール';
	@override String get installedApps => 'インストールされとるアプリ';
	@override String get nothing => 'あらへん';
	@override String get installedDate => 'インストールした日時';
	@override String get lastUsedDate => '最後に使った日時';
	@override String get state => '状態';
	@override String get sort => '仕分ける';
	@override String get ascendingOrder => '小さい順';
	@override String get descendingOrder => '大きい順';
	@override String get scratchpad => 'スクラッチパッド';
	@override String get scratchpadDescription => 'スクラッチパッドではAiScriptを色々試すことができるんや。Misskeyに対して色々できるコードを書いて動かしてみたり、結果を見たりできるで。';
	@override String get output => '出力';
	@override String get script => 'スクリプト';
	@override String get disablePagesScript => 'Pagesのスクリプトを無効にしてや';
	@override String get updateRemoteUser => 'リモートユーザー情報の更新してくれん？';
	@override String get deleteAllFiles => 'ファイルを全部ほかす';
	@override String get deleteAllFilesConfirm => 'ホンマにファイル全部ほかすんか？消したもんはもう戻ってこんのやで？';
	@override String get removeAllFollowing => 'フォローを全解除';
	@override String get removeAllFollowingDescription => '{host}からのフォローをすべて解除するで。そのインスタンスが消えて無くなった時とかには便利な機能やで。';
	@override String get userSuspended => 'このユーザーは...凍結されとる。';
	@override String get userSilenced => 'このユーザーは...サイレンスされとる。';
	@override String get yourAccountSuspendedTitle => 'あんたのアカウント凍結されとるで';
	@override String get yourAccountSuspendedDescription => 'あんたのアカウントは、サーバーの使うための決め事に違反したとかの理由で、凍結されとるで。細かいことは管理者までお問い合わせたってなー。絶対に新しいアカウント作ったらあかんで。絶対やで。';
	@override String get tokenRevoked => 'トークンが無効やで';
	@override String get tokenRevokedDescription => 'ログイントークンが失効しとるで。もっかいログインしてもろてもええか？';
	@override String get accountDeleted => 'アカウントは削除されとるで';
	@override String get accountDeletedDescription => 'このアカウントは削除されとるで。';
	@override String get menu => 'メニュー';
	@override String get divider => '分割線';
	@override String get addItem => '項目を追加';
	@override String get rearrange => '並び替え';
	@override String get relays => 'リレー';
	@override String get addRelay => 'リレーの追加';
	@override String get inboxUrl => 'inboxのURL';
	@override String get addedRelays => '追加済みのリレー';
	@override String get serviceworkerInfo => 'プッシュ通知をするんなら有効にせなあかんで。';
	@override String get deletedNote => '消された投稿';
	@override String get invisibleNote => '非公開の投稿';
	@override String get enableInfiniteScroll => '自動でもっと見る';
	@override String get visibility => '公開範囲';
	@override String get poll => 'アンケート';
	@override String get useCw => '内容を隠す';
	@override String get enablePlayer => 'プレイヤーを開く';
	@override String get disablePlayer => 'プレイヤーを閉じる';
	@override String get expandTweet => 'ツイートを展開する';
	@override String get themeEditor => 'テーマエディター';
	@override String get description => '説明';
	@override String get describeFile => 'キャプションを付ける';
	@override String get enterFileDescription => 'キャプションを入力';
	@override String get author => '作者';
	@override String get leaveConfirm => 'あんた、いじったのにまだ保存してないで！ほかしてええか？';
	@override String get manage => '管理';
	@override String get plugins => 'プラグイン';
	@override String get preferencesBackups => '設定のバックアップ';
	@override String get deck => 'デッキ';
	@override String get undeck => 'デッキ解除';
	@override String get useBlurEffectForModal => 'モーダルにぼかし効果を使用';
	@override String get useFullReactionPicker => 'フル機能の突っ込みピッカーを使用';
	@override String get width => '幅';
	@override String get height => '高さ';
	@override String get large => '大';
	@override String get medium => '中';
	@override String get small => '小';
	@override String get generateAccessToken => 'アクセストークンの発行';
	@override String get permission => '権限';
	@override String get enableAll => '全部使えるようにする';
	@override String get disableAll => '全部使えへんようにする';
	@override String get tokenRequested => 'アカウントへのアクセス許してやったらどうや';
	@override String get pluginTokenRequestedDescription => 'このプラグインはここで設定した権限を使えるようになるで。';
	@override String get notificationType => '通知の種類';
	@override String get edit => '編集';
	@override String get emailServer => 'メールサーバー';
	@override String get enableEmail => 'メール配信を受け取る';
	@override String get emailConfigInfo => 'メールアドレスの確認とかパスワードリセットの時に使うで';
	@override String get email => 'メール';
	@override String get emailAddress => 'メールアドレス';
	@override String get smtpConfig => 'SMTP サーバーの設定';
	@override String get smtpHost => 'ホスト';
	@override String get smtpPort => 'ポート';
	@override String get smtpUser => 'ユーザー名';
	@override String get smtpPass => 'パスワード';
	@override String get emptyToDisableSmtpAuth => 'ユーザー名とパスワードになんも入れんかったら、SMTP認証を無効化するで';
	@override String get smtpSecure => 'SMTP 接続に暗黙的なSSL/TLSを使用する';
	@override String get smtpSecureInfo => 'STARTTLS使っとる時はオフにしてや。';
	@override String get testEmail => '配信テスト';
	@override String get wordMute => 'ワードミュート';
	@override String get regexpError => '正規表現エラー';
	@override String get regexpErrorDescription => '{tab}ワードミュートの{line}行目の正規表現にエラーが出てきたで:';
	@override String get instanceMute => 'サーバーミュート';
	@override String get userSaysSomething => '{name}が何か言うとるわ';
	@override String get makeActive => '使うで';
	@override String get display => '表示';
	@override String get copy => 'コピー';
	@override String get metrics => 'メトリクス';
	@override String get overview => '概要';
	@override String get logs => 'ログ';
	@override String get delayed => '遅延';
	@override String get database => 'データベース';
	@override String get channel => 'チャンネル';
	@override String get create => '作成';
	@override String get notificationSetting => '通知設定';
	@override String get notificationSettingDesc => '表示する通知の種類えらんでや。';
	@override String get useGlobalSetting => 'グローバル設定を使ってや';
	@override String get useGlobalSettingDesc => 'オンにすると、アカウントの通知設定が使われるで。オフにすると、別々に設定できるようになるで。';
	@override String get other => 'その他';
	@override String get regenerateLoginToken => 'ログイントークンを再生成';
	@override String get regenerateLoginTokenDescription => 'ログインに使われる内部トークンをもっかい作るで。いつもならこれをやる必要はないで。もっかい作ると、全部のデバイスでログアウトされるで気ぃつけてなー。';
	@override String get setMultipleBySeparatingWithSpace => 'スペースで区切って何個でも設定できるで。';
	@override String get fileIdOrUrl => 'ファイルIDかURL';
	@override String get behavior => '動作';
	@override String get sample => 'サンプル';
	@override String get abuseReports => '通報';
	@override String get reportAbuse => '通報';
	@override String get reportAbuseOf => '{name}を通報する';
	@override String get fillAbuseReportDescription => '細かい通報理由を書いてなー。対象ノートがある時はそのURLも書いといてなー。';
	@override String get abuseReported => '無事内容が送信されたみたいやで。おおきに〜。';
	@override String get reporter => '通報者';
	@override String get reporteeOrigin => '通報先';
	@override String get reporterOrigin => '通報元';
	@override String get forwardReport => 'リモートサーバーに通報を転送するで';
	@override String get forwardReportIsAnonymous => 'リモートサーバーからはあんたの情報は見えんなって、匿名のシステムアカウントとして表示されるで。';
	@override String get send => '送信';
	@override String get abuseMarkAsResolved => '対応したで';
	@override String get openInNewTab => '新しいタブで開く';
	@override String get openInSideView => 'サイドビューで開く';
	@override String get defaultNavigationBehaviour => 'デフォルトのナビゲーション';
	@override String get editTheseSettingsMayBreakAccount => 'このへんの設定をようわからんままイジるとアカウントが壊れて使えんくなるかも知れへんで？';
	@override String get instanceTicker => 'ノートのサーバー情報';
	@override String get waitingFor => '{x}を待っとるで';
	@override String get random => 'ランダム';
	@override String get system => 'システム';
	@override String get switchUi => 'UI切り替え';
	@override String get desktop => 'デスクトップ';
	@override String get clip => 'クリップ';
	@override String get createNew => '新しく作るで';
	@override String get optional => '任意';
	@override String get createNewClip => '新しいクリップを作るで';
	@override String get unclip => 'クリップ解除するで';
	@override String get confirmToUnclipAlreadyClippedNote => 'このノートはすでにクリップ「{name}」に含まれとるで。ノートをこのクリップから除外しよか？';
	@override String get public => 'パブリック';
	@override String get i18nInfo => 'Misskeyは有志によっていろんな言語に翻訳されとるで。{link}で翻訳に協力したってやー。';
	@override String get manageAccessTokens => 'アクセストークンの管理';
	@override String get accountInfo => 'アカウント情報';
	@override String get notesCount => 'ノートの数やで';
	@override String get repliesCount => '返信した数やで';
	@override String get renotesCount => 'Renoteした数やで';
	@override String get repliedCount => '返信された数やで';
	@override String get renotedCount => 'Renoteされた数やで';
	@override String get followingCount => 'フォロー数やで';
	@override String get followersCount => 'フォロワー数やで';
	@override String get sentReactionsCount => 'ツッコんだ数';
	@override String get receivedReactionsCount => 'ツッコまれた数';
	@override String get pollVotesCount => 'アンケートに投票した数';
	@override String get pollVotedCount => 'アンケートに投票された数';
	@override String get yes => 'ええで';
	@override String get no => 'あかん';
	@override String get driveFilesCount => 'ドライブのファイル数';
	@override String get driveUsage => 'ドライブ使用量やで';
	@override String get noCrawle => 'クローラーによるインデックスを拒否するで';
	@override String get noCrawleDescription => '検索エンジンにあんたのユーザーページ、ノート、Pagesとかのコンテンツを登録(インデックス)せぇへんように頼むで。';
	@override String get lockedAccountInfo => 'フォローを承認制にしとっても、ノートの公開範囲を「フォロワー」にせぇへん限り、誰でもあんたのノートを見れるで。';
	@override String get alwaysMarkSensitive => 'デフォルトでメディアを閲覧注意にするで';
	@override String get loadRawImages => '添付画像のサムネイルをオリジナル画質にするで';
	@override String get disableShowingAnimatedImages => 'アニメーション画像を再生せんとくで';
	@override String get verificationEmailSent => '無事確認のメールを送れたで。メールに書いてあるリンクにアクセスして、設定を完了してなー。';
	@override String get notSet => '未設定';
	@override String get emailVerified => 'メールアドレスは確認されたで';
	@override String get noteFavoritesCount => 'お気に入りノートの数やで';
	@override String get pageLikesCount => 'Pageにええやんと思った数';
	@override String get pageLikedCount => 'Pageにええやんと思ってくれた数';
	@override String get contact => '連絡先';
	@override String get useSystemFont => 'システムのデフォルトのフォントを使うで';
	@override String get clips => 'クリップ';
	@override String get experimentalFeatures => 'おためし機能やで';
	@override String get experimental => '実験的';
	@override String get thisIsExperimentalFeature => 'これは実験的な機能やで。仕様が変更になったりちゃんと動かなかったりするかもやで。';
	@override String get developer => '開発者やで';
	@override String get makeExplorable => 'アカウントを見つけやすくするで';
	@override String get makeExplorableDescription => 'オフにすると、「みつける」にアカウントが載らんくなるで。';
	@override String get showGapBetweenNotesInTimeline => 'タイムラインのノートを離して表示するで';
	@override String get duplicate => '複製';
	@override String get left => '左';
	@override String get center => '真ん中';
	@override String get wide => '広い';
	@override String get narrow => '狭い';
	@override String get reloadToApplySetting => '設定はページリロード後に反映されるで。今リロードしとくか？';
	@override String get needReloadToApply => '反映には再起動せなあかんで';
	@override String get showTitlebar => 'タイトルバーを見せる';
	@override String get clearCache => 'キャッシュをほかす';
	@override String get onlineUsersCount => '{n}人が起きとるで';
	@override String get nUsers => '{n}ユーザー';
	@override String get nNotes => '{n}ノート';
	@override String get sendErrorReports => 'エラーリポートを送る';
	@override String get sendErrorReportsDescription => 'オンにしたら、変なことが起きたときにエラーの詳細がMisskeyに送られて、ソフトウェアの品質向上に使えるようになるで。エラー情報には、OSのバージョン、ブラウザの種類、行動履歴なんかが含まれるで。';
	@override String get myTheme => 'マイテーマ';
	@override String get backgroundColor => '背景';
	@override String get accentColor => 'アクセント';
	@override String get textColor => '文字';
	@override String get saveAs => '名前を付けて保存';
	@override String get advanced => '高度';
	@override String get advancedSettings => '高度な設定';
	@override String get value => '値';
	@override String get createdAt => '作成した日';
	@override String get updatedAt => '更新日時';
	@override String get saveConfirm => '保存するで？';
	@override String get deleteConfirm => 'ホンマに削除するで？';
	@override String get invalidValue => '有効な値じゃないみたいやで。';
	@override String get registry => 'レジストリ';
	@override String get closeAccount => 'アカウントを閉鎖する';
	@override String get currentVersion => '現在のバージョン';
	@override String get latestVersion => '最新のバージョン';
	@override String get youAreRunningUpToDateClient => '今使ってるクライアントが最新やで！';
	@override String get newVersionOfClientAvailable => '新しいバージョンのクライアントが使えるで。';
	@override String get usageAmount => '使用量';
	@override String get capacity => '容量';
	@override String get inUse => '使用中';
	@override String get editCode => 'コードを編集';
	@override String get apply => '適用';
	@override String get receiveAnnouncementFromInstance => 'サーバーからのお知らせを受け取る';
	@override String get emailNotification => 'メール通知';
	@override String get publish => '公開';
	@override String get inChannelSearch => 'チャンネル内検索';
	@override String get useReactionPickerForContextMenu => '右クリックでツッコミピッカーを開くようにする';
	@override String get typingUsers => '{users}が今書きよるで';
	@override String get jumpToSpecifiedDate => '特定の日付にジャンプ';
	@override String get showingPastTimeline => '過去のタイムラインを表示してるで';
	@override String get clear => 'クリア';
	@override String get markAllAsRead => 'もうみな読んでもうたわ';
	@override String get goBack => '戻る';
	@override String get unlikeConfirm => 'いいね解除するんか？';
	@override String get fullView => 'フルビュー';
	@override String get quitFullView => 'フルビュー解除';
	@override String get addDescription => '説明を追加するで';
	@override String get userPagePinTip => '個々のノートのメニューから「ピン留め」を選んどくと、ここにノートを表示しておけるで。';
	@override String get notSpecifiedMentionWarning => '宛先に含まれてへんメンションがあるで';
	@override String get info => '情報';
	@override String get userInfo => 'ユーザー情報やで';
	@override String get unknown => '不明';
	@override String get onlineStatus => 'オンライン状態';
	@override String get hideOnlineStatus => 'オンライン状態を隠すで';
	@override String get hideOnlineStatusDescription => 'オンライン状態を隠すと、検索とかの一部の機能で使いにくくなるかもしれんよ。';
	@override String get online => 'オンライン';
	@override String get active => 'アクティブ';
	@override String get offline => 'オフライン';
	@override String get notRecommended => 'あんま推奨しやんで';
	@override String get botProtection => 'Botプロテクション';
	@override String get instanceBlocking => 'サーバーブロック';
	@override String get selectAccount => 'アカウントを選んでなー';
	@override String get switchAccount => 'アカウントを変えるで';
	@override String get enabled => '有効';
	@override String get disabled => '無効';
	@override String get quickAction => 'クイックアクション';
	@override String get user => 'ユーザー';
	@override String get administration => '管理';
	@override String get accounts => 'アカウント';
	@override String get switch_ => '切り替え';
	@override String get noMaintainerInformationWarning => '管理者情報が設定されてへんで';
	@override String get noBotProtectionWarning => 'Botプロテクションが設定されてへんで。';
	@override String get configure => '設定する';
	@override String get postToGallery => 'ギャラリーへ投稿';
	@override String get gallery => 'ギャラリー';
	@override String get recentPosts => '最近の投稿';
	@override String get popularPosts => '人気の投稿';
	@override String get shareWithNote => 'ノートで共有';
	@override String get ads => '広告';
	@override String get expiration => '期限';
	@override String get startingperiod => '始めた期間';
	@override String get memo => 'メモ';
	@override String get priority => '優先度';
	@override String get high => '高い';
	@override String get middle => '中';
	@override String get low => '低い';
	@override String get emailNotConfiguredWarning => 'メアドの設定がされてへんで。';
	@override String get ratio => '比率';
	@override String get previewNoteText => '本文を下見するで';
	@override String get customCss => 'カスタムCSS';
	@override String get customCssWarn => 'この設定は必ず知識のある人がやらなあかんで。あんま良くない設定をしたるとクライアントがちゃんと使えへんくなってくで。';
	@override String get global => 'グローバル';
	@override String get squareAvatars => 'アイコンを四角形で表示するで';
	@override String get sent => '送信';
	@override String get received => '受信';
	@override String get searchResult => '検索結果やで';
	@override String get hashtags => 'ハッシュタグ';
	@override String get troubleshooting => 'トラブルシューティング';
	@override String get useBlurEffect => 'UIにぼかし効果を使うで';
	@override String get learnMore => '詳しく';
	@override String get misskeyUpdated => 'Misskeyが更新されたで！\nモデレーターの人らに感謝せなあかんで';
	@override String get whatIsNew => '更新情報を見るで';
	@override String get translate => '翻訳';
	@override String get translatedFrom => '{x}から翻訳するで';
	@override String get accountDeletionInProgress => 'アカウント削除しとるで待っとってなー';
	@override String get usernameInfo => 'サーバー上であんたのアカウントをあんたやと分かるようにするための名前やで。アルファベット(a~z, A~Z)、数字(0~9)、それとアンダーバー(_)が使って考えてな。この名前は後から変更することはできへんからちゃんと考えるんやで。';
	@override String get aiChanMode => '藍モードやで';
	@override String get keepCw => 'CWを維持するで';
	@override String get pubSub => 'Pub/Subのアカウント';
	@override String get lastCommunication => '直近の通信';
	@override String get resolved => '解決したで';
	@override String get unresolved => 'まだ解決してないで';
	@override String get breakFollow => 'フォロワーを解除するで';
	@override String get breakFollowConfirm => 'フォロワー解除してもええか？';
	@override String get itsOn => 'オンになっとるよ';
	@override String get itsOff => 'オフになってるで';
	@override String get emailRequiredForSignup => 'アカウント登録にメールアドレスを必須にするで';
	@override String get unread => '未読';
	@override String get filter => 'フィルタ';
	@override String get controlPanel => 'コントロールパネル';
	@override String get manageAccounts => 'アカウントを管理';
	@override String get makeReactionsPublic => 'ツッコミ一覧を公開するで';
	@override String get makeReactionsPublicDescription => 'あんたがしたツッコミ一覧を誰でも見れるようにするで。';
	@override String get classic => 'クラシック';
	@override String get muteThread => 'スレッドをミュート';
	@override String get unmuteThread => 'スレッドのミュートを解除';
	@override String get ffVisibility => 'つながりの公開範囲';
	@override String get ffVisibilityDescription => 'あんたのフォロー/フォロワー情報の公開範囲を設定できるで。';
	@override String get continueThread => 'さらにスレッドを見るで';
	@override String get deleteAccountConfirm => 'アカウントを消すで？ええんか？';
	@override String get incorrectPassword => 'パスワードがちゃうで。';
	@override String get voteConfirm => '「{choice}」に投票するんか？';
	@override String get hide => '隠す';
	@override String get useDrawerReactionPickerForMobile => 'ケータイとかのときドロワーで表示するで';
	@override String get welcomeBackWithName => 'まいど、{name}はん';
	@override String get clickToFinishEmailVerification => '[{ok}]を押してメアドの確認を終わらせてなー';
	@override String get overridedDeviceKind => 'デバイスタイプ';
	@override String get smartphone => 'スマホ';
	@override String get tablet => 'タブレット';
	@override String get auto => '自動';
	@override String get themeColor => 'テーマカラー';
	@override String get size => '大きさ';
	@override String get numberOfColumn => '列の数';
	@override String get searchByGoogle => '探す';
	@override String get instanceDefaultLightTheme => 'サーバーおすすめの明るいテーマ';
	@override String get instanceDefaultDarkTheme => 'サーバーおすすめのの暗いテーマ';
	@override String get instanceDefaultThemeDescription => 'オブジェクト形式のテーマコードを記入するで。';
	@override String get mutePeriod => 'ミュートする期間';
	@override String get period => '期限';
	@override String get indefinitely => '無期限';
	@override String get tenMinutes => '10分';
	@override String get oneHour => '1時間';
	@override String get oneDay => '1日';
	@override String get oneWeek => '1週間';
	@override String get oneMonth => '1ヶ月';
	@override String get reflectMayTakeTime => '反映されるまで時間がかかることがあるで';
	@override String get failedToFetchAccountInformation => 'アカウントの取得に失敗したみたいや…';
	@override String get rateLimitExceeded => 'レート制限が超えたみたいやで';
	@override String get cropImage => '画像のクロップ';
	@override String get cropImageAsk => '画像をクロップしてもええか？';
	@override String get cropYes => '切り抜いたる';
	@override String get cropNo => '切り抜かへん';
	@override String get file => 'ファイル';
	@override String get recentNHours => '直近{n}時間';
	@override String get recentNDays => '直近{n}日';
	@override String get noEmailServerWarning => 'メールサーバーの設定がされてへんで。';
	@override String get thereIsUnresolvedAbuseReportWarning => '未対応の通報があるみたいやで';
	@override String get recommended => '推奨';
	@override String get check => 'チェック';
	@override String get driveCapOverrideLabel => 'このユーザーのドライブ容量上限を変更するで';
	@override String get driveCapOverrideCaption => '0以下を指定すると解除されるで。';
	@override String get requireAdminForView => 'これを見るには管理者アカウントでログインしとらなあかんで。';
	@override String get isSystemAccount => 'システムが自動で作成・管理しとるアカウントやで。';
	@override String get typeToConfirm => 'この操作をやるんなら {x} と入力してなー';
	@override String get deleteAccount => 'アカウント削除するで';
	@override String get document => 'ドキュメント';
	@override String get numberOfPageCache => 'ページ、どんだけキャッシュすんの？';
	@override String get numberOfPageCacheDescription => '増やすと使いやすくなる、負荷とメモリ使用量が増えてくで。一長一短やな。';
	@override String get logoutConfirm => 'ログアウトしまっか？';
	@override String get lastActiveDate => '最後に使った日時';
	@override String get statusbar => 'ステータスバー';
	@override String get pleaseSelect => '選択したってやー';
	@override String get reverse => '反転';
	@override String get colored => '色付き';
	@override String get refreshInterval => '更新間隔';
	@override String get label => 'ラベル';
	@override String get type => 'タイプ';
	@override String get speed => '速度';
	@override String get slow => '遅い';
	@override String get fast => '速い';
	@override String get sensitiveMediaDetection => 'センシティブなメディアの検出';
	@override String get localOnly => 'ローカルのみ';
	@override String get remoteOnly => 'リモートのみ';
	@override String get failedToUpload => 'アップロードに失敗してもうたわ…';
	@override String get cannotUploadBecauseInappropriate => '不適切な内容を含むかもしれへんって判定されたからアップロードできへんわ。';
	@override String get cannotUploadBecauseNoFreeSpace => 'ドライブの空き容量が無いからアップロードできへんわ。';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'ファイルが思うたよりも大きいさかいアップロードできへんでこれ。';
	@override String get beta => 'ベータ';
	@override String get enableAutoSensitive => '自動NSFW判定';
	@override String get enableAutoSensitiveDescription => '使える時は、機械学習を使って自動でメディアにNSFWフラグを設定するで。この機能をオフにしても、サーバーによっては自動で設定されることがあるで。';
	@override String get activeEmailValidationDescription => 'ユーザーのメールアドレスのバリデーションを、捨てアドかどうかや実際に通信可能かどうかとかを判定して積極的に行うで。オフにすると単に文字列として正しいかどうかだけチェックするで。';
	@override String get navbar => 'ナビゲーションバー';
	@override String get shuffle => 'シャッフルするで';
	@override String get account => 'アカウント';
	@override String get move => '移動するで';
	@override String get pushNotification => 'プッシュ通知';
	@override String get subscribePushNotification => 'プッシュ通知をオンにするで';
	@override String get unsubscribePushNotification => 'プッシュ通知を止めるで';
	@override String get pushNotificationAlreadySubscribed => 'プッシュ通知はオンになってるで';
	@override String get pushNotificationNotSupported => 'ブラウザかサーバーがプッシュ通知に対応してないみたいやで。';
	@override String get sendPushNotificationReadMessage => '通知やメッセージが既読になったらプッシュ通知を消すで';
	@override String get sendPushNotificationReadMessageCaption => '「{emptyPushNotificationMessage}」っていう表示が一瞬表示されるようになるで。端末の電池使用量が増える可能性があるで。';
	@override String get windowMaximize => '最大化';
	@override String get windowMinimize => '最小化';
	@override String get windowRestore => '元に戻す';
	@override String get caption => 'キャプション';
	@override String get loggedInAsBot => 'Botアカウントでログイン中やで';
	@override String get tools => 'ツール';
	@override String get cannotLoad => '読み込めへんで';
	@override String get numberOfProfileView => 'プロフィール表示回数';
	@override String get like => 'ええやん！';
	@override String get unlike => 'いいねを解除';
	@override String get numberOfLikes => 'いいね数';
	@override String get show => '表示';
	@override String get neverShow => '今後表示しない';
	@override String get remindMeLater => 'また後で';
	@override String get didYouLikeMisskey => 'Misskey気に入ってくれた？';
	@override String get pleaseDonate => 'Misskeyは{host}が使用している無料のソフトウェアやで。これからも開発を続けれるように、寄付したってな～。';
	@override String get roles => 'ロール';
	@override String get role => 'ロール';
	@override String get noRole => 'ロールはありまへん';
	@override String get normalUser => '一般ユーザー';
	@override String get undefined => '未定義';
	@override String get assign => 'アサイン';
	@override String get unassign => 'アサインを解除';
	@override String get color => '色';
	@override String get manageCustomEmojis => 'カスタム絵文字の管理';
	@override String get youCannotCreateAnymore => 'これ以上作れなさそうやわ';
	@override String get cannotPerformTemporary => '一時的に利用できへんで';
	@override String get cannotPerformTemporaryDescription => '操作回数が制限を超えたから一時的に利用できへんくなったで。ちょっと時間置いてからもう一回やってやー。';
	@override String get invalidParamError => 'パラメータがエラー言うとりますわ';
	@override String get invalidParamErrorDescription => 'リクエストパラメータに問題があんねん。普通はバグやねんけど、もしかすると入力した文字数が多すぎるとかの可能性もあるから確認してや〜';
	@override String get permissionDeniedError => '操作が拒否されてもうた。';
	@override String get permissionDeniedErrorDescription => '自分のアカウントにはこの操作を行う権限があらへんねん';
	@override String get preset => 'プリセット';
	@override String get selectFromPresets => 'プリセットから選ぶ';
	@override String get achievements => '実績';
	@override String get gotInvalidResponseError => 'サーバー黙っとるわ、知らんけど';
	@override String get gotInvalidResponseErrorDescription => 'サーバーいま日曜日。またきて月曜日。';
	@override String get thisPostMayBeAnnoying => 'この投稿は迷惑かもしらんで。';
	@override String get thisPostMayBeAnnoyingHome => 'ホームに投稿';
	@override String get thisPostMayBeAnnoyingCancel => 'やめとく';
	@override String get thisPostMayBeAnnoyingIgnore => 'このまま投稿';
	@override String get collapseRenotes => '見たことあるRenoteは飛ばして表示するで';
	@override String get internalServerError => 'サーバー内部エラー';
	@override String get internalServerErrorDescription => 'サーバー内部でよう分からんエラーやわ';
	@override String get copyErrorInfo => 'エラー情報をコピー';
	@override String get joinThisServer => 'このサーバーに登録するわ';
	@override String get exploreOtherServers => '他のサーバー見てみる';
	@override String get letsLookAtTimeline => 'タイムライン見てみーや';
	@override String get disableFederationConfirm => '連合なしにしとくか？';
	@override String get disableFederationConfirmWarn => '連合なしにしても投稿は非公開にはならへんで。大体の場合は連合なしにする必要はないで。';
	@override String get disableFederationOk => '連合なしにしとく';
	@override String get invitationRequiredToRegister => '今このサーバー招待制になってもうてんねん。招待コードを持っとるんやったら登録できるで。';
	@override String get emailNotSupported => 'このサーバーはメール配信がサポートされてへんみたいやわ';
	@override String get postToTheChannel => 'チャンネルに投稿';
	@override String get cannotBeChangedLater => '後からは変えられへんで。';
	@override String get reactionAcceptance => 'ツッコミの受け入れ';
	@override String get likeOnly => 'いいねだけ';
	@override String get likeOnlyForRemote => 'リモートからはいいねだけな';
	@override String get rolesAssignedToMe => '自分に割り当てられたロール';
	@override String get resetPasswordConfirm => 'パスワード作り直すんでええな？';
	@override String get sensitiveWords => 'けったいな単語';
	@override String get sensitiveWordsDescription => '設定した単語が入っとるノートの公開範囲をホームにしたるわ。改行で区切ったら複数設定できるで。';
	@override String get sensitiveWordsDescription2 => 'スペースで区切るとAND指定、キーワードをスラッシュで囲んだら正規表現や。';
	@override String get notesSearchNotAvailable => 'ノート検索は使われへんで。';
	@override String get license => 'ライセンス';
	@override String get unfavoriteConfirm => 'ほんまに気に入らんの？';
	@override String get myClips => '自分のクリップ';
	@override String get drivecleaner => 'ドライブキレイキレイ';
	@override String get retryAllQueuesNow => 'キューを全部もっかいやり直す';
	@override String get retryAllQueuesConfirmTitle => 'もっかいやってみるか？';
	@override String get retryAllQueuesConfirmText => '一時的にサーバー重なるかもしれへんで。';
	@override String get enableChartsForRemoteUser => 'リモートユーザーのチャートを作る';
	@override String get enableChartsForFederatedInstances => 'リモートサーバーのチャートを作る';
	@override String get showClipButtonInNoteFooter => 'ノートのアクションにクリップを追加';
	@override String get largeNoteReactions => 'ノートのツッコミを大きする';
	@override String get noteIdOrUrl => 'ノートIDかURL';
	@override String get video => '動画';
	@override String get videos => '動画';
	@override String get dataSaver => 'データケチケチ';
	@override String get accountMigration => 'アカウントのお引っ越し';
	@override String get accountMoved => 'このユーザーはさらのアカウントに引っ越したで：';
	@override String get accountMovedShort => 'このアカウントは移行されとるで';
	@override String get operationForbidden => 'この操作はできまへん';
	@override String get forceShowAds => '常に広告を表示しとく';
	@override String get addMemo => 'メモを足す';
	@override String get editMemo => 'メモをいらう';
	@override String get reactionsList => 'ツッコミ一覧';
	@override String get renotesList => 'Renote一覧';
	@override String get notificationDisplay => '通知見せる';
	@override String get leftTop => '左上';
	@override String get rightTop => '右上';
	@override String get leftBottom => '左下';
	@override String get rightBottom => '右下';
	@override String get stackAxis => '重ねる方向';
	@override String get vertical => '縦';
	@override String get horizontal => '横';
	@override String get position => '位置';
	@override String get serverRules => 'サーバールール';
	@override String get pleaseConfirmBelowBeforeSignup => 'このサーバーに登録する前に、下に書いてること確認してな。';
	@override String get pleaseAgreeAllToContinue => '続けるんやったら、全ての「せやな」にチェック入れてる必要があるで。';
	@override String get continue_ => '続けるで';
	@override String get preservedUsernames => '予約ユーザー名';
	@override String get preservedUsernamesDescription => '予約しとくユーザー名を行ごとに挙げるで。ここで指定されたユーザー名はアカウント作るときに使えへんくなるけど、管理者は例外や。あと、もうあるアカウントも例外やな。';
	@override String get createNoteFromTheFile => 'このファイル使うてノート作るで';
	@override String get archive => 'アーカイブ';
	@override String get channelArchiveConfirmTitle => '{name}をアーカイブしてええか？';
	@override String get channelArchiveConfirmDescription => 'アーカイブしたら、チャンネル一覧とか検索結果からなくなるし、新しく書き込みもできへんなるで。';
	@override String get thisChannelArchived => 'このチャンネル、アーカイブされとるで。';
	@override String get displayOfNote => 'ノートの表示';
	@override String get initialAccountSetting => '初期設定';
	@override String get youFollowing => 'フォロー中やで';
	@override String get preventAiLearning => '生成AIの学習に使わんといて';
	@override String get preventAiLearningDescription => '他の文章生成AIとか画像生成AIに、投稿したノートとか画像なんかを勝手に使わんように頼むで。具体的にはnoaiフラグをHTMLレスポンスに含めるんやけど、これ聞いてくれるんはAIの気分次第やから、使われる可能性もちょっとはあるな。';
	@override String get options => 'オプション';
	@override String get specifyUser => 'ユーザー指定';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'ツッコミとして使えるロール';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'ロールが一個も指定されてへんかったら、誰でもツッコミとして使えるで。';
	@override String get cancelReactionConfirm => 'ツッコむんをやっぱやめるか？';
	@override String get changeReactionConfirm => 'ツッコミを別のに変えるか？';
	@override late final _StringsInitialAccountSettingJaKs _initialAccountSetting = _StringsInitialAccountSettingJaKs._(_root);
	@override late final _StringsServerRulesJaKs _serverRules = _StringsServerRulesJaKs._(_root);
	@override late final _StringsAccountMigrationJaKs _accountMigration = _StringsAccountMigrationJaKs._(_root);
	@override late final _StringsAchievementsJaKs _achievements = _StringsAchievementsJaKs._(_root);
	@override late final _StringsRoleJaKs _role = _StringsRoleJaKs._(_root);
	@override late final _StringsSensitiveMediaDetectionJaKs _sensitiveMediaDetection = _StringsSensitiveMediaDetectionJaKs._(_root);
	@override late final _StringsEmailUnavailableJaKs _emailUnavailable = _StringsEmailUnavailableJaKs._(_root);
	@override late final _StringsFfVisibilityJaKs _ffVisibility = _StringsFfVisibilityJaKs._(_root);
	@override late final _StringsSignupJaKs _signup = _StringsSignupJaKs._(_root);
	@override late final _StringsAccountDeleteJaKs _accountDelete = _StringsAccountDeleteJaKs._(_root);
	@override late final _StringsAdJaKs _ad = _StringsAdJaKs._(_root);
	@override late final _StringsForgotPasswordJaKs _forgotPassword = _StringsForgotPasswordJaKs._(_root);
	@override late final _StringsGalleryJaKs _gallery = _StringsGalleryJaKs._(_root);
	@override late final _StringsEmailJaKs _email = _StringsEmailJaKs._(_root);
	@override late final _StringsPluginJaKs _plugin = _StringsPluginJaKs._(_root);
	@override late final _StringsPreferencesBackupsJaKs _preferencesBackups = _StringsPreferencesBackupsJaKs._(_root);
	@override late final _StringsRegistryJaKs _registry = _StringsRegistryJaKs._(_root);
	@override late final _StringsAboutMisskeyJaKs _aboutMisskey = _StringsAboutMisskeyJaKs._(_root);
	@override late final _StringsNsfwJaKs _nsfw = _StringsNsfwJaKs._(_root);
	@override late final _StringsInstanceTickerJaKs _instanceTicker = _StringsInstanceTickerJaKs._(_root);
	@override late final _StringsServerDisconnectedBehaviorJaKs _serverDisconnectedBehavior = _StringsServerDisconnectedBehaviorJaKs._(_root);
	@override late final _StringsChannelJaKs _channel = _StringsChannelJaKs._(_root);
	@override late final _StringsMenuDisplayJaKs _menuDisplay = _StringsMenuDisplayJaKs._(_root);
	@override late final _StringsWordMuteJaKs _wordMute = _StringsWordMuteJaKs._(_root);
	@override late final _StringsInstanceMuteJaKs _instanceMute = _StringsInstanceMuteJaKs._(_root);
	@override late final _StringsThemeJaKs _theme = _StringsThemeJaKs._(_root);
	@override late final _StringsSfxJaKs _sfx = _StringsSfxJaKs._(_root);
	@override late final _StringsAgoJaKs _ago = _StringsAgoJaKs._(_root);
	@override late final _StringsTimeJaKs _time = _StringsTimeJaKs._(_root);
	@override late final _StringsTimelineTutorialJaKs _timelineTutorial = _StringsTimelineTutorialJaKs._(_root);
	@override late final _Strings2faJaKs _2fa = _Strings2faJaKs._(_root);
	@override late final _StringsAuthJaKs _auth = _StringsAuthJaKs._(_root);
	@override late final _StringsAntennaSourcesJaKs _antennaSources = _StringsAntennaSourcesJaKs._(_root);
	@override late final _StringsWeekdayJaKs _weekday = _StringsWeekdayJaKs._(_root);
	@override late final _StringsWidgetsJaKs _widgets = _StringsWidgetsJaKs._(_root);
	@override late final _StringsCwJaKs _cw = _StringsCwJaKs._(_root);
	@override late final _StringsPollJaKs _poll = _StringsPollJaKs._(_root);
	@override late final _StringsVisibilityJaKs _visibility = _StringsVisibilityJaKs._(_root);
	@override late final _StringsPostFormJaKs _postForm = _StringsPostFormJaKs._(_root);
	@override late final _StringsProfileJaKs _profile = _StringsProfileJaKs._(_root);
	@override late final _StringsExportOrImportJaKs _exportOrImport = _StringsExportOrImportJaKs._(_root);
	@override late final _StringsChartsJaKs _charts = _StringsChartsJaKs._(_root);
	@override late final _StringsInstanceChartsJaKs _instanceCharts = _StringsInstanceChartsJaKs._(_root);
	@override late final _StringsTimelinesJaKs _timelines = _StringsTimelinesJaKs._(_root);
	@override late final _StringsPlayJaKs _play = _StringsPlayJaKs._(_root);
	@override late final _StringsPagesJaKs _pages = _StringsPagesJaKs._(_root);
	@override late final _StringsRelayStatusJaKs _relayStatus = _StringsRelayStatusJaKs._(_root);
	@override late final _StringsNotificationJaKs _notification = _StringsNotificationJaKs._(_root);
	@override late final _StringsDeckJaKs _deck = _StringsDeckJaKs._(_root);
	@override late final _StringsDialogJaKs _dialog = _StringsDialogJaKs._(_root);
	@override late final _StringsDisabledTimelineJaKs _disabledTimeline = _StringsDisabledTimelineJaKs._(_root);
	@override late final _StringsDrivecleanerJaKs _drivecleaner = _StringsDrivecleanerJaKs._(_root);
	@override late final _StringsWebhookSettingsJaKs _webhookSettings = _StringsWebhookSettingsJaKs._(_root);
}

// Path: _initialAccountSetting
class _StringsInitialAccountSettingJaKs extends _StringsInitialAccountSettingEnUs {
	_StringsInitialAccountSettingJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'アカウント作り終わったで。';
	@override String get letsStartAccountSetup => 'アカウントの初期設定をしよか。';
	@override String get letsFillYourProfile => '最初はあんたのプロフィールを設定しよか。';
	@override String get profileSetting => 'プロフィール設定';
	@override String get privacySetting => 'プライバシー設定';
	@override String get theseSettingsCanEditLater => 'この設定はあとから変えれるで。';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'これ以外にもいろんな設定を「設定」ページからできるで。後で確認してみてな。';
	@override String get followUsers => 'タイムラインを構築するために、気になるユーザーをフォローしてみ。';
	@override String get pushNotificationDescription => 'プッシュ通知を有効にすると{name}の通知をあんたのデバイスで受け取れるで。';
	@override String get initialAccountSettingCompleted => '初期設定が終わったで。';
	@override String get haveFun => '{name}、楽しんでな～';
	@override String get ifYouNeedLearnMore => '{name}(Misskey)の使い方とかをよー知りたいんやったら{link}をみてな。';
	@override String get skipAreYouSure => '初期設定飛ばすか？';
}

// Path: _serverRules
class _StringsServerRulesJaKs extends _StringsServerRulesEnUs {
	_StringsServerRulesJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get description => '新規登録前に見せる、サーバーの簡潔なルールを設定すんで。内容は使うための決め事の要約とすることを推奨するわ。';
}

// Path: _accountMigration
class _StringsAccountMigrationJaKs extends _StringsAccountMigrationEnUs {
	_StringsAccountMigrationJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '別のアカウントからこのアカウントに引っ越す';
	@override String get moveFromSub => '別のアカウントへエイリアスを作る';
	@override String get moveFromLabel => '引っ越し元のアカウント：#{n}';
	@override String get moveFromDescription => '別のアカウントからこのアカウントにフォロワーを引き継いで引っ越したかったら、ここでエイリアスを作っとく必要があるで。必ずお引っ越しを実行する前に作っとかなあかんで！引っ越し元のアカウントをこんな風に入力してくれへんか？：@person@instance.com';
	@override String get moveTo => 'このアカウントをさらのアカウントに引っ越すで';
	@override String get moveToLabel => '引っ越し先のアカウント：';
	@override String get moveCannotBeUndone => 'アカウントを移行すると、取り消すことはできへんくなります。';
	@override String get moveAccountDescription => 'おニューのアカウントに移行すんで。\n　・フォロワーがおニューの方を勝手にフォローすんで。\n　・このアカウントからのフォローはまるまる全部解除されんで。\n　・このアカウントでノート作れへんようになるで。\n\nフォロワーの移行は勝手にこっちでやっとくけど、フォローの移行は自分でしてや。移行前にこのアカウントでフォローエクスポートして、移行したあとすぐにおニューのところでインポートしてくれな。\nリストとかミュート、あとブロックもおんなじや。自分で移行してな。\n\n（この説明はこのサーバー、つまりMisskey v13.12.0から後の仕様や。Mastodonとか他のActivityPubソフトやとちょっと挙動が違うこともあんで。）';
	@override String get moveAccountHowTo => 'アカウントの引っ越しには、まず引っ越し先のアカウントで自分のアカウントに対しエイリアスを作成しなはれや。\nエイリアス作成した後、引っ越し先のアカウントを次のように入力してくれへんか？:@username@server.example.com';
	@override String get startMigration => '引っ越しする';
	@override String get migrationConfirm => 'ほんまにこのアカウントを {account} に引っ越すんか？一回引っ越してもうたら取り消されへんし、二度とこのアカウントを元に戻されへんくなるで。\nそれと、引っ越し先のアカウントでエイリアスが作れたかちゃ～んと確認しーや？';
	@override String get movedAndCannotBeUndone => '\nアカウントはもう引っ越されてます。\n引っ越しを取り消すことはできまへん。';
	@override String get postMigrationNote => 'このアカウントからのフォロー解除は移行操作から丸一日経ったら実行されんで。\nこのアカウントのフォロー・フォロワー数はどっちも0や。フォローの解除はされへんから、あんたのフォロワーはこのアカウントのフォロワー向けの投稿をこの後も見れるで。';
	@override String get movedTo => '引っ越し先のアカウント：';
}

// Path: _achievements
class _StringsAchievementsJaKs extends _StringsAchievementsEnUs {
	_StringsAchievementsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '貰った日ぃ';
	@override late final _StringsAchievementsTypesJaKs _types = _StringsAchievementsTypesJaKs._(_root);
}

// Path: _role
class _StringsRoleJaKs extends _StringsRoleEnUs {
	_StringsRoleJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'ロールの作成';
	@override String get edit => 'ロールの編集';
	@override String get name => 'ロール名';
	@override String get description => 'ロールの説明';
	@override String get permission => 'ロールの権限';
	@override String get descriptionOfPermission => '<b>モデレーター</b>は基本的なモデレーションに関わる操作を行えるで。\n<b>管理者</b>はサーバーの全ての設定を変更できるで。';
	@override String get assignTarget => 'アサイン';
	@override String get descriptionOfAssignTarget => '<b>マニュアル</b>は誰がこのロールに含まれてるかを手動で管理するで。\n<b>コンディショナル</b>は条件を設定して、それに合うユーザーが自動で含まれるようになるで。';
	@override String get manual => 'マニュアル';
	@override String get conditional => 'コンディショナル';
	@override String get condition => '条件';
	@override String get isConditionalRole => 'これはコンディショナルロールやで';
	@override String get isPublic => 'ロールを公開';
	@override String get descriptionOfIsPublic => 'ロールにアサインされたユーザーを誰でも見ることができるで。そんで、ユーザーのプロフィールでこのロールが表示されるで。';
	@override String get options => 'オプション';
	@override String get policies => 'ポリシー';
	@override String get baseRole => 'ベースロール';
	@override String get useBaseValue => 'ベースロールの値を使用';
	@override String get chooseRoleToAssign => 'アサインするロールを選択';
	@override String get iconUrl => 'アイコン画像のURL';
	@override String get asBadge => 'バッジとして見せる';
	@override String get descriptionOfAsBadge => 'オンにすると、ユーザー名の横んとこにロールのアイコンが表示されるで。';
	@override String get isExplorable => 'ロールタイムラインを公開するで〜';
	@override String get descriptionOfIsExplorable => 'オンにしたらロールのタイムラインを公開するで〜。でもロールの公開をオフにしたら公開されへんよ。';
	@override String get displayOrder => '表示順';
	@override String get descriptionOfDisplayOrder => '数がでかいほど、UI上で先に表示されるで。';
	@override String get canEditMembersByModerator => 'モデレーターのメンバー編集を許可';
	@override String get descriptionOfCanEditMembersByModerator => 'オンにすると、管理者に加えてモデレーターもこのロールへユーザーをアサイン/アサイン解除できるようになるで。オフにすると管理者のみが行えるで。';
	@override String get priority => '優先度';
	@override late final _StringsRolePriorityJaKs _priority = _StringsRolePriorityJaKs._(_root);
	@override late final _StringsRoleOptionsJaKs _options = _StringsRoleOptionsJaKs._(_root);
	@override late final _StringsRoleConditionJaKs _condition = _StringsRoleConditionJaKs._(_root);
}

// Path: _sensitiveMediaDetection
class _StringsSensitiveMediaDetectionJaKs extends _StringsSensitiveMediaDetectionEnUs {
	_StringsSensitiveMediaDetectionJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get description => '機械学習を使って自動でセンシティブなメディアを検出して、モデレーションに役立てることができるで。サーバーの負荷が少し増えてまうなあ。';
	@override String get sensitivity => '検出感度やで';
	@override String get sensitivityDescription => '感度を低くすると、誤検知(偽陽性)が減るで。感度を高くすると、検知漏れ(偽陰性)が減るで。';
	@override String get setSensitiveFlagAutomatically => 'NSFWフラグを設定するで';
	@override String get setSensitiveFlagAutomaticallyDescription => 'この設定をオフにしても内部的に判定結果は保持されるで。';
	@override String get analyzeVideos => '動画の解析をオンにするで';
	@override String get analyzeVideosDescription => '画像に加えて動画も解析するようにするで。鯖の負荷が少し増えるで。';
}

// Path: _emailUnavailable
class _StringsEmailUnavailableJaKs extends _StringsEmailUnavailableEnUs {
	_StringsEmailUnavailableJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get used => 'もう使われとるで';
	@override String get format => '形式がおかしいで';
	@override String get disposable => '永久に使えるアドレスじゃないみたいやで';
	@override String get mx => '正しいメールサーバーじゃない見たいやで';
	@override String get smtp => 'メールサーバーが応答してないみたいや';
}

// Path: _ffVisibility
class _StringsFfVisibilityJaKs extends _StringsFfVisibilityEnUs {
	_StringsFfVisibilityJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get followers => 'フォロワーだけに公開';
	@override String get private => '非公開';
}

// Path: _signup
class _StringsSignupJaKs extends _StringsSignupEnUs {
	_StringsSignupJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'ほぼ完了やで';
	@override String get emailAddressInfo => 'あんたが使っとるメアドを入力してなー。入れたメアドが公開されることはないで。';
	@override String get emailSent => 'さっき入れたメールアドレス({email})宛に確認のメールが送られたで。メールに書かれたリンクにアクセスすれば、アカウントの作成が完了や！';
}

// Path: _accountDelete
class _StringsAccountDeleteJaKs extends _StringsAccountDeleteEnUs {
	_StringsAccountDeleteJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'アカウントの削除';
	@override String get mayTakeTime => 'アカウントの削除は負荷がかかる処理やねんて。やから作ったコンテンツの数や上げたファイルの数が多いと削除が終わるまでに時間がかかることがあるんやって。';
	@override String get sendEmail => 'アカウントの削除が終わるときは、登録してたメールアドレス宛に通知を送るで。';
	@override String get requestAccountDelete => 'アカウント削除をリクエスト';
	@override String get started => '削除処理が始まったで。';
	@override String get inProgress => '削除が進んでるで';
}

// Path: _ad
class _StringsAdJaKs extends _StringsAdEnUs {
	_StringsAdJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get back => '戻る';
	@override String get reduceFrequencyOfThisAd => 'この広告の表示頻度を下げるで';
	@override String get hide => '表示せん';
}

// Path: _forgotPassword
class _StringsForgotPasswordJaKs extends _StringsForgotPasswordEnUs {
	_StringsForgotPasswordJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'アカウントに登録したメールアドレスをここに入力してや。そのアドレス宛に、パスワードリセット用のリンクが送られるから待っててな～。';
	@override String get ifNoEmail => 'メールアドレスを登録してへんのやったら、管理者まで教えてな～。';
	@override String get contactAdmin => 'このサーバーはメールに対応してへんから、パスワードリセットをしたいときは管理者まで教えてな～。';
}

// Path: _gallery
class _StringsGalleryJaKs extends _StringsGalleryEnUs {
	_StringsGalleryJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get my => 'あんたの投稿';
	@override String get liked => 'いいねした投稿';
	@override String get like => 'ええやん！';
	@override String get unlike => '良くないわ';
}

// Path: _email
class _StringsEmailJaKs extends _StringsEmailEnUs {
	_StringsEmailJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _StringsEmailFollowJaKs _follow = _StringsEmailFollowJaKs._(_root);
	@override late final _StringsEmailReceiveFollowRequestJaKs _receiveFollowRequest = _StringsEmailReceiveFollowRequestJaKs._(_root);
}

// Path: _plugin
class _StringsPluginJaKs extends _StringsPluginEnUs {
	_StringsPluginJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get install => 'プラグインのインストール';
	@override String get installWarn => '信頼できへんプラグインはインストールせんとってな';
	@override String get manage => 'プラグインの管理';
}

// Path: _preferencesBackups
class _StringsPreferencesBackupsJaKs extends _StringsPreferencesBackupsEnUs {
	_StringsPreferencesBackupsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get list => '作ったバックアップ';
	@override String get saveNew => '新しく保存';
	@override String get loadFile => 'ファイルを読み込む';
	@override String get apply => 'このデバイスに使う';
	@override String get save => '上書き保存';
	@override String get inputName => 'バックアップ名を入力してや';
	@override String get cannotSave => '保存できへん';
	@override String get nameAlreadyExists => '「{name}」って名前のバックアップはもうあんねん。やから違う名前を入れてや。';
	@override String get applyConfirm => 'バックアップ「{name}」をこのデバイスに使うん？今のデバイス設定は消えるで？ええの？';
	@override String get saveConfirm => '{name}に上書き保存するん？';
	@override String get deleteConfirm => '{name}を消すん？';
	@override String get renameConfirm => '「{old}」を「{new_}」に変えるん？';
	@override String get noBackups => 'バックアップはないで。「新しく保存」ってとこでこのクライアント設定を鯖に保存できるで。';
	@override String get createdAt => '作った日時:{date}{time}';
	@override String get updatedAt => '更新日時:{date}{time}';
	@override String get cannotLoad => '読み込みできへん...';
	@override String get invalidFile => 'ファイル形式が違うで？';
}

// Path: _registry
class _StringsRegistryJaKs extends _StringsRegistryEnUs {
	_StringsRegistryJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'スコープ';
	@override String get key => 'キー';
	@override String get keys => 'キー';
	@override String get domain => 'ドメイン';
	@override String get createKey => 'キーを作る';
}

// Path: _aboutMisskey
class _StringsAboutMisskeyJaKs extends _StringsAboutMisskeyEnUs {
	_StringsAboutMisskeyJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskeyはsyuiloが2014年からずっと作ってはる、オープンソースなソフトウェアや。';
	@override String get contributors => '主な貢献者';
	@override String get allContributors => '全ての貢献者';
	@override String get source => 'ソースコード';
	@override String get translation => 'Misskeyを翻訳';
	@override String get donate => 'Misskeyに寄付';
	@override String get morePatrons => '他にもぎょうさんの人からサポートしてもろてんねん。ほんまおおきに🥰';
	@override String get patrons => '支援者';
}

// Path: _nsfw
class _StringsNsfwJaKs extends _StringsNsfwEnUs {
	_StringsNsfwJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get respect => '閲覧注意のメディアは隠すで';
	@override String get ignore => '閲覧注意のメディアは隠さへんで';
	@override String get force => '常にメディアを隠すで';
}

// Path: _instanceTicker
class _StringsInstanceTickerJaKs extends _StringsInstanceTickerEnUs {
	_StringsInstanceTickerJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get none => '表示せん';
	@override String get remote => 'リモートユーザーに表示';
	@override String get always => '常に表示';
}

// Path: _serverDisconnectedBehavior
class _StringsServerDisconnectedBehaviorJaKs extends _StringsServerDisconnectedBehaviorEnUs {
	_StringsServerDisconnectedBehaviorJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get reload => '自動でリロード';
	@override String get dialog => 'ダイアログで警告';
	@override String get quiet => '控えめに警告';
}

// Path: _channel
class _StringsChannelJaKs extends _StringsChannelEnUs {
	_StringsChannelJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get create => 'チャンネルを作る';
	@override String get edit => 'チャンネルを編集';
	@override String get setBanner => 'バナーを設定';
	@override String get removeBanner => 'バナーを削除';
	@override String get featured => 'トレンド';
	@override String get owned => '管理中';
	@override String get following => 'フォロー中やで';
	@override String get usersCount => '{n}人が参加中やで';
	@override String get notesCount => '{n}こ投稿があるで';
	@override String get nameAndDescription => '名前と説明';
	@override String get nameOnly => '名前だけ';
}

// Path: _menuDisplay
class _StringsMenuDisplayJaKs extends _StringsMenuDisplayEnUs {
	_StringsMenuDisplayJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '横';
	@override String get sideIcon => '横(アイコン)';
	@override String get top => '上';
	@override String get hide => '隠す';
}

// Path: _wordMute
class _StringsWordMuteJaKs extends _StringsWordMuteEnUs {
	_StringsWordMuteJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'ミュートするワード';
	@override String get muteWordsDescription => 'スペースで区切るとAND指定になって、改行で区切るとOR指定になるで。';
	@override String get muteWordsDescription2 => 'キーワードをスラッシュで囲むと正規表現になるで。';
	@override String get softDescription => '指定した条件のノートをタイムラインから隠すで。';
	@override String get hardDescription => '指定した条件のノートをタイムラインに追加しないようにするで。追加せーへんかったかったノートは、条件を変えても除外されたままになるで。';
	@override String get soft => 'ソフト';
	@override String get hard => 'ハード';
	@override String get mutedNotes => 'ミュートされたノート';
}

// Path: _instanceMute
class _StringsInstanceMuteJaKs extends _StringsInstanceMuteEnUs {
	_StringsInstanceMuteJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'ミュートしたサーバーのユーザーへの返信を含めて、設定したインスタンスの全てのノートとRenoteをミュートにするで。';
	@override String get instanceMuteDescription2 => '改行で区切って設定するんやで';
	@override String get title => '設定したサーバーのノートを隠すで。';
	@override String get heading => 'ミュートするサーバー';
}

// Path: _theme
class _StringsThemeJaKs extends _StringsThemeEnUs {
	_StringsThemeJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get explore => 'テーマを探す';
	@override String get install => 'テーマのインストール';
	@override String get manage => 'テーマの管理';
	@override String get code => 'テーマコード';
	@override String get description => '説明';
	@override String get installed => '{name}をインストールしたで。';
	@override String get installedThemes => 'インストールされとるテーマ';
	@override String get builtinThemes => '標準のテーマ';
	@override String get alreadyInstalled => 'そのテーマはもうインストールされとるで？';
	@override String get invalid => 'テーマの形式が間違ってるみたいや';
	@override String get make => 'テーマを作る';
	@override String get base => 'ベース';
	@override String get addConstant => '定数を追加';
	@override String get constant => '定数';
	@override String get defaultValue => 'デフォルト値';
	@override String get color => '色';
	@override String get refProp => 'プロパティを参照';
	@override String get refConst => '定数を参照';
	@override String get key => 'キー';
	@override String get func => '関数';
	@override String get funcKind => '関数の種類';
	@override String get argument => '引数';
	@override String get basedProp => '元にするプロパティの名前';
	@override String get alpha => '不透明度';
	@override String get darken => '暗さ';
	@override String get lighten => '明るさ';
	@override String get inputConstantName => '定数名を入力してな';
	@override String get importInfo => 'ここにテーマコードを張り付けて、エディターにインポートすることができるで';
	@override String get deleteConstantConfirm => '定数 {const_} を削除してもええか？';
	@override late final _StringsThemeKeysJaKs keys = _StringsThemeKeysJaKs._(_root);
}

// Path: _sfx
class _StringsSfxJaKs extends _StringsSfxEnUs {
	_StringsSfxJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get note => 'ノート';
	@override String get noteMy => 'ノート(自分)';
	@override String get notification => '通知';
	@override String get chat => 'チャット';
	@override String get chatBg => 'チャット(バックグラウンド)';
	@override String get antenna => 'アンテナ受信';
	@override String get channel => 'チャンネル通知';
}

// Path: _ago
class _StringsAgoJaKs extends _StringsAgoEnUs {
	_StringsAgoJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get future => '未来';
	@override String get justNow => 'ついさっき';
	@override String get secondsAgo => '{n}秒前';
	@override String get minutesAgo => '{n}分前';
	@override String get hoursAgo => '{n}時間前';
	@override String get daysAgo => '{n}日前';
	@override String get weeksAgo => '{n}週間前';
	@override String get monthsAgo => '{n}ヶ月前';
	@override String get yearsAgo => '{n}年前';
	@override String get invalid => 'あらへん';
}

// Path: _time
class _StringsTimeJaKs extends _StringsTimeEnUs {
	_StringsTimeJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分';
	@override String get hour => '時間';
	@override String get day => '日';
}

// Path: _timelineTutorial
class _StringsTimelineTutorialJaKs extends _StringsTimelineTutorialEnUs {
	_StringsTimelineTutorialJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyってなんや？';
	@override String get step1_1 => 'これは「タイムライン」や。{name}に投稿された「ノート」が順番に表示されるで。';
	@override String get step1_2 => 'タイムラインには何個か種類があってな、例えば「ホームタイムライン」だったらあんたのフォローしてる人のノート、「ローカルタイムライン」には{name}全部のノートが流れてくるで。';
	@override String get step2_1 => '試しに、何かノートを投稿してみ。画面の鉛筆マークのボタンでフォームが開くで。';
	@override String get step2_2 => '最初のノートは、自己紹介とか「{name}始めてみたんや」とかがええと思うで。';
	@override String get step3_1 => '投稿できた？';
	@override String get step3_2 => 'あんたのノートがタイムラインに出てきたら成功や。';
	@override String get step4_1 => 'ノートには、「ツッコミ」を付けれるで。';
	@override String get step4_2 => 'ツッコむんやったら、ノートの「+」マークを押して、好きな絵文字を選ぶで。';
}

// Path: _2fa
class _Strings2faJaKs extends _Strings2faEnUs {
	_Strings2faJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'もう設定終わっとるわ。';
	@override String get registerTOTP => '認証アプリの設定はじめる';
	@override String get passwordToTOTP => 'パスワードを入れてーや';
	@override String get step1 => 'ほんなら、{a}や{b}とかの認証アプリを使っとるデバイスにインストールしてな。';
	@override String get step2 => '次に、ここにあるQRコードをアプリでスキャンしてな～。';
	@override String get step2Click => 'QRコードをクリックすると、今使とる端末に入っとる認証アプリとかキーリングに登録できるで。';
	@override String get step2Url => 'デスクトップアプリやったら次のURLを入力してや:';
	@override String get step3Title => '確認コードを入れてーや';
	@override String get step3 => 'アプリに表示されているトークンを入力して終わりや。';
	@override String get step4 => 'これからログインするときも、同じようにトークンを入力するんやで';
	@override String get securityKeyNotSupported => '今使とるブラウザはセキュリティキーに対応してへんのやってさ。';
	@override String get registerTOTPBeforeKey => 'セキュリティキー・パスキーを登録するんやったら、まず認証アプリを設定してーな。';
	@override String get securityKeyInfo => 'FIDO2をサポートするハードウェアセキュリティキーか端末の指紋認証やPINを使ってログインするように設定できるで。';
	@override String get chromePasskeyNotSupported => 'Chromeのパスキーは今んとこ対応してないねん。';
	@override String get registerSecurityKey => 'セキュリティキー・パスキーを登録するわ';
	@override String get securityKeyName => 'キーの名前を入れてーや';
	@override String get tapSecurityKey => 'ブラウザが言うこと聞いて、セキュリティキーとかパスキー登録しといでや';
	@override String get removeKey => 'セキュリティキーをほかす';
	@override String get removeKeyConfirm => '{name}を消すん？';
	@override String get whyTOTPOnlyRenew => 'セキュリティキーが登録されとったら、認証アプリの設定は解除できへんで。';
	@override String get renewTOTP => '認証アプリをもっかい設定';
	@override String get renewTOTPConfirm => '今までの人称アプリの確認コードは使えんくなるけどええか？';
	@override String get renewTOTPOk => 'もっかい設定する';
	@override String get renewTOTPCancel => 'やめとく';
}

// Path: _auth
class _StringsAuthJaKs extends _StringsAuthEnUs {
	_StringsAuthJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'アプリへのアクセス許してやったらどうや';
	@override String get shareAccess => '「{name}」がアカウントにアクセスすることを許可してええか？';
	@override String get shareAccessAsk => 'アカウントのアクセスを許可してもええか？';
	@override String get permission => '{name}に次の権限つけたってやって';
	@override String get permissionAsk => 'このアプリは次の権限を要求しとるで';
	@override String get pleaseGoBack => 'アプリケーションに戻ってええよ';
	@override String get callback => 'アプリケーションに戻っとるで';
	@override String get denied => 'アクセスを拒否ったで';
	@override String get pleaseLogin => 'アプリにアクセスさせるんやったら、ログインしてや。';
}

// Path: _antennaSources
class _StringsAntennaSourcesJaKs extends _StringsAntennaSourcesEnUs {
	_StringsAntennaSourcesJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get all => 'みんなのノート';
	@override String get homeTimeline => 'フォローしとるユーザーのノート';
	@override String get users => '選らんだ一人か複数のユーザーのノート';
	@override String get userList => '選んだリストのユーザーのノート';
}

// Path: _weekday
class _StringsWeekdayJaKs extends _StringsWeekdayEnUs {
	_StringsWeekdayJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get sunday => '日曜日';
	@override String get monday => '月曜日';
	@override String get tuesday => '火曜日';
	@override String get wednesday => '水曜日';
	@override String get thursday => '木曜日';
	@override String get friday => '金曜日';
	@override String get saturday => '土曜日';
}

// Path: _widgets
class _StringsWidgetsJaKs extends _StringsWidgetsEnUs {
	_StringsWidgetsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get instanceInfo => 'サーバー情報';
	@override String get memo => '付箋';
	@override String get notifications => '通知';
	@override String get timeline => 'タイムライン';
	@override String get calendar => 'カレンダー';
	@override String get trends => 'トレンド';
	@override String get clock => '時計';
	@override String get rss => 'RSSリーダー';
	@override String get rssTicker => 'RSSティッカー';
	@override String get activity => 'アクティビティ';
	@override String get photos => 'フォト';
	@override String get digitalClock => 'デジタル時計';
	@override String get unixClock => 'UNIX時計';
	@override String get federation => '連合';
	@override String get instanceCloud => 'サーバークラウド';
	@override String get postForm => '投稿フォーム';
	@override String get slideshow => 'スライドショー';
	@override String get button => 'ボタン';
	@override String get onlineUsers => 'オンラインユーザー';
	@override String get jobQueue => 'ジョブキュー';
	@override String get serverMetric => 'サーバーメトリクス';
	@override String get aiscript => 'AiScriptコンソール';
	@override String get aiscriptApp => 'AiScript App';
	@override String get aichan => '藍';
	@override String get userList => 'ユーザーリスト';
	@override late final _StringsWidgetsUserListJaKs _userList = _StringsWidgetsUserListJaKs._(_root);
	@override String get clicker => 'クリッカー';
}

// Path: _cw
class _StringsCwJaKs extends _StringsCwEnUs {
	_StringsCwJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get hide => '隠す';
	@override String get show => '続き見して！';
	@override String get chars => '{count}文字';
	@override String get files => '{count}ファイル';
}

// Path: _poll
class _StringsPollJaKs extends _StringsPollEnUs {
	_StringsPollJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '選択肢は最低2つ必要やで';
	@override String get choiceN => '選択肢{n}';
	@override String get noMore => 'これ以上追加でけへん';
	@override String get canMultipleVote => '複数回答可';
	@override String get expiration => '期限';
	@override String get infinite => '無期限';
	@override String get at => '日時指定';
	@override String get after => '経過指定';
	@override String get deadlineDate => '期日';
	@override String get deadlineTime => '時間';
	@override String get duration => '期間';
	@override String get votesCount => '{n}票';
	@override String get totalVotes => '計{n}票';
	@override String get vote => '投票する';
	@override String get showResult => '結果を見るで';
	@override String get voted => '投票済みやで';
	@override String get closed => '終了済みやで';
	@override String get remainingDays => '終了まであと{d}日{h}時間や';
	@override String get remainingHours => '終了まであと{h}時間{m}分や';
	@override String get remainingMinutes => '終了まであと{m}分{s}秒や';
	@override String get remainingSeconds => '終了まであと{s}秒や';
}

// Path: _visibility
class _StringsVisibilityJaKs extends _StringsVisibilityEnUs {
	_StringsVisibilityJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get public => 'パブリック';
	@override String get publicDescription => 'みんなに公開';
	@override String get home => 'ホーム';
	@override String get homeDescription => 'ホームタイムラインのみに公開するで';
	@override String get followers => 'フォロワー';
	@override String get followersDescription => '自分のフォロワーのみに公開するで';
	@override String get specified => 'ダイレクト';
	@override String get specifiedDescription => '選んだユーザーのみに公開するで';
	@override String get disableFederation => '連合なし';
	@override String get disableFederationDescription => '他サーバーへは送らんとくわ';
}

// Path: _postForm
class _StringsPostFormJaKs extends _StringsPostFormEnUs {
	_StringsPostFormJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'このノートに返信...';
	@override String get quotePlaceholder => 'このノートを引用...';
	@override String get channelPlaceholder => 'チャンネルに投稿...';
	@override late final _StringsPostFormPlaceholdersJaKs _placeholders = _StringsPostFormPlaceholdersJaKs._(_root);
}

// Path: _profile
class _StringsProfileJaKs extends _StringsProfileEnUs {
	_StringsProfileJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get name => '名前';
	@override String get username => 'ユーザー名';
	@override String get description => '自己紹介';
	@override String get youCanIncludeHashtags => 'ハッシュタグを含めることができるで。';
	@override String get metadata => '追加情報';
	@override String get metadataEdit => '追加情報を編集するで';
	@override String get metadataDescription => 'プロフィールに表として追加情報を表示することができるで';
	@override String get metadataLabel => 'ラベル';
	@override String get metadataContent => '内容';
	@override String get changeAvatar => 'アバター画像を変更するで';
	@override String get changeBanner => 'バナー画像を変更するで';
}

// Path: _exportOrImport
class _StringsExportOrImportJaKs extends _StringsExportOrImportEnUs {
	_StringsExportOrImportJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '全てのノート';
	@override String get favoritedNotes => 'お気に入りにしたノート';
	@override String get followingList => 'フォロー';
	@override String get muteList => 'ミュート';
	@override String get blockingList => 'ブロック';
	@override String get userLists => 'リスト';
	@override String get excludeMutingUsers => 'ミュートしてるユーザーは入れんとくわ';
	@override String get excludeInactiveUsers => '使われてなさそうなアカウントは入れんとくわ';
}

// Path: _charts
class _StringsChartsJaKs extends _StringsChartsEnUs {
	_StringsChartsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get federation => '連合';
	@override String get apRequest => 'リクエスト';
	@override String get usersIncDec => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの合計';
	@override String get activeUsers => 'いまおるユーザー数';
	@override String get notesIncDec => 'ノートの増減';
	@override String get localNotesIncDec => 'ローカルのノートの増減';
	@override String get remoteNotesIncDec => 'リモートのノートの増減';
	@override String get notesTotal => 'ノートの合計';
	@override String get filesIncDec => 'ファイルの増減';
	@override String get filesTotal => 'ファイルの合計';
	@override String get storageUsageIncDec => 'ストレージ使用量の増減';
	@override String get storageUsageTotal => 'ストレージ使用量の合計';
}

// Path: _instanceCharts
class _StringsInstanceChartsJaKs extends _StringsInstanceChartsEnUs {
	_StringsInstanceChartsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get requests => 'リクエスト';
	@override String get users => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの累積';
	@override String get notes => 'ノートの増減';
	@override String get notesTotal => 'ノートの累積';
	@override String get ff => 'フォロー/フォロワーの増減';
	@override String get ffTotal => 'フォロー/フォロワーの累積';
	@override String get cacheSize => 'キャッシュサイズの増減';
	@override String get cacheSizeTotal => 'キャッシュサイズの累積';
	@override String get files => 'ファイル数の増減';
	@override String get filesTotal => 'ファイル数の累積';
}

// Path: _timelines
class _StringsTimelinesJaKs extends _StringsTimelinesEnUs {
	_StringsTimelinesJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get local => 'ローカル';
	@override String get social => 'ソーシャル';
	@override String get global => 'グローバル';
}

// Path: _play
class _StringsPlayJaKs extends _StringsPlayEnUs {
	_StringsPlayJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Playの作成';
	@override String get edit => 'Playの編集';
	@override String get created => 'Playを作ったで';
	@override String get updated => 'Playを更新したで';
	@override String get deleted => 'Playを消したで';
	@override String get pageSetting => 'Play設定';
	@override String get editThisPage => 'このPlayを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get my => '自分のPlay';
	@override String get liked => 'いいねしたPlay';
	@override String get featured => '人気';
	@override String get title => 'タイトル';
	@override String get script => 'スクリプト';
	@override String get summary => '説明';
}

// Path: _pages
class _StringsPagesJaKs extends _StringsPagesEnUs {
	_StringsPagesJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'ページを作る';
	@override String get editPage => 'ページの編集';
	@override String get readPage => 'ソースを表示中';
	@override String get created => 'ページを作成したで';
	@override String get updated => 'ページを更新したで';
	@override String get deleted => 'ページを削除したで';
	@override String get pageSetting => 'ページ設定';
	@override String get nameAlreadyExists => '指定されたページURLはもうあるみたいや';
	@override String get invalidNameTitle => '正しくないページURLみたいやで';
	@override String get invalidNameText => '空白になってないか確認してや～';
	@override String get editThisPage => 'このページを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get viewPage => 'ページを見る';
	@override String get like => 'ええやん';
	@override String get unlike => '良くないわ';
	@override String get my => '自分のページ';
	@override String get liked => 'ええと思ったページ';
	@override String get featured => '人気';
	@override String get inspector => 'インスペクター';
	@override String get contents => 'コンテンツ';
	@override String get content => 'ページブロック';
	@override String get variables => '変数';
	@override String get title => 'タイトル';
	@override String get url => 'ページURL';
	@override String get summary => 'ページの要約';
	@override String get alignCenter => '中央寄せ';
	@override String get hideTitleWhenPinned => 'ピン止めされてるときにタイトルを表示';
	@override String get font => 'フォント';
	@override String get fontSerif => 'セリフ';
	@override String get fontSansSerif => 'サンセリフ';
	@override String get eyeCatchingImageSet => 'アイキャッチ画像を設定';
	@override String get eyeCatchingImageRemove => 'アイキャッチ画像を削除';
	@override String get chooseBlock => 'ブロックを追加';
	@override String get selectType => '種類を選択';
	@override String get contentBlocks => 'コンテンツ';
	@override String get inputBlocks => '入力';
	@override String get specialBlocks => '特殊';
	@override late final _StringsPagesBlocksJaKs blocks = _StringsPagesBlocksJaKs._(_root);
}

// Path: _relayStatus
class _StringsRelayStatusJaKs extends _StringsRelayStatusEnUs {
	_StringsRelayStatusJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get requesting => '承認待ち';
	@override String get accepted => '承認済み';
	@override String get rejected => '拒否済み';
}

// Path: _notification
class _StringsNotificationJaKs extends _StringsNotificationEnUs {
	_StringsNotificationJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ファイルが無事アップロードされたで。';
	@override String get youGotMention => '{name}からのメンション';
	@override String get youGotReply => '{name}からのリプライ';
	@override String get youGotQuote => '{name}による引用';
	@override String get youRenoted => '{name}がRenoteしたみたいやで';
	@override String get youWereFollowed => 'フォローされたで';
	@override String get youReceivedFollowRequest => 'フォロー許可してほしいみたいやな';
	@override String get yourFollowRequestAccepted => 'フォローさせてもろたで';
	@override String get pollEnded => 'アンケートの結果が出たみたいや';
	@override String get unreadAntennaNote => 'アンテナ {name}';
	@override String get emptyPushNotificationMessage => 'プッシュ通知の更新をしといたで';
	@override String get achievementEarned => '実績を獲得しとるで';
	@override late final _StringsNotificationTypesJaKs _types = _StringsNotificationTypesJaKs._(_root);
	@override late final _StringsNotificationActionsJaKs _actions = _StringsNotificationActionsJaKs._(_root);
}

// Path: _deck
class _StringsDeckJaKs extends _StringsDeckEnUs {
	_StringsDeckJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'いつもメインカラムを表示';
	@override String get columnAlign => 'カラムの寄せ';
	@override String get addColumn => 'カラムを追加';
	@override String get configureColumn => 'カラムの設定';
	@override String get swapLeft => '左に移動';
	@override String get swapRight => '右に移動';
	@override String get swapUp => '上に移動';
	@override String get swapDown => '下に移動';
	@override String get stackLeft => '左に重ねる';
	@override String get popRight => '右に出す';
	@override String get profile => 'プロファイル';
	@override String get newProfile => '新規プロファイル';
	@override String get deleteProfile => 'プロファイルを削除';
	@override String get introduction => 'カラムを組み合わせて自分だけのインターフェイスを作りましょ！';
	@override String get introduction2 => '画面の右にある + を押して、いつでもカラムを追加できるで。';
	@override String get widgetsIntroduction => 'カラムのメニューから、「ウィジェットの編集」を選んでウィジェットを追加してなー';
	@override late final _StringsDeckColumnsJaKs _columns = _StringsDeckColumnsJaKs._(_root);
}

// Path: _dialog
class _StringsDialogJaKs extends _StringsDialogEnUs {
	_StringsDialogJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get charactersExceeded => '最大の文字数を上回っとるで！今は {current} / 最大でも {max}';
	@override String get charactersBelow => '最小の文字数を下回っとるで！今は {current} / 最低でも {min}';
}

// Path: _disabledTimeline
class _StringsDisabledTimelineJaKs extends _StringsDisabledTimelineEnUs {
	_StringsDisabledTimelineJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '使われへんタイムライン';
	@override String get description => 'あんたの今のロールやったら、このタイムラインは使われへんで。';
}

// Path: _drivecleaner
class _StringsDrivecleanerJaKs extends _StringsDrivecleanerEnUs {
	_StringsDrivecleanerJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'サイズのでかい順';
	@override String get orderByCreatedAtAsc => '追加日の古い順';
}

// Path: _webhookSettings
class _StringsWebhookSettingsJaKs extends _StringsWebhookSettingsEnUs {
	_StringsWebhookSettingsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhookをつくる';
	@override String get name => '名前';
	@override String get secret => 'シークレット';
	@override String get events => 'Webhookを投げるタイミング';
	@override String get active => '有効';
	@override late final _StringsWebhookSettingsEventsJaKs _events = _StringsWebhookSettingsEventsJaKs._(_root);
}

// Path: _achievements._types
class _StringsAchievementsTypesJaKs extends _StringsAchievementsTypesEnUs {
	_StringsAchievementsTypesJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _StringsAchievementsTypesNotes1JaKs _notes1 = _StringsAchievementsTypesNotes1JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes10JaKs _notes10 = _StringsAchievementsTypesNotes10JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes100JaKs _notes100 = _StringsAchievementsTypesNotes100JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes500JaKs _notes500 = _StringsAchievementsTypesNotes500JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes1000JaKs _notes1000 = _StringsAchievementsTypesNotes1000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes5000JaKs _notes5000 = _StringsAchievementsTypesNotes5000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes10000JaKs _notes10000 = _StringsAchievementsTypesNotes10000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes20000JaKs _notes20000 = _StringsAchievementsTypesNotes20000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes30000JaKs _notes30000 = _StringsAchievementsTypesNotes30000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes40000JaKs _notes40000 = _StringsAchievementsTypesNotes40000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes50000JaKs _notes50000 = _StringsAchievementsTypesNotes50000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes60000JaKs _notes60000 = _StringsAchievementsTypesNotes60000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes70000JaKs _notes70000 = _StringsAchievementsTypesNotes70000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes80000JaKs _notes80000 = _StringsAchievementsTypesNotes80000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes90000JaKs _notes90000 = _StringsAchievementsTypesNotes90000JaKs._(_root);
	@override late final _StringsAchievementsTypesNotes100000JaKs _notes100000 = _StringsAchievementsTypesNotes100000JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin3JaKs _login3 = _StringsAchievementsTypesLogin3JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin7JaKs _login7 = _StringsAchievementsTypesLogin7JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin15JaKs _login15 = _StringsAchievementsTypesLogin15JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin30JaKs _login30 = _StringsAchievementsTypesLogin30JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin60JaKs _login60 = _StringsAchievementsTypesLogin60JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin100JaKs _login100 = _StringsAchievementsTypesLogin100JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin200JaKs _login200 = _StringsAchievementsTypesLogin200JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin300JaKs _login300 = _StringsAchievementsTypesLogin300JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin400JaKs _login400 = _StringsAchievementsTypesLogin400JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin500JaKs _login500 = _StringsAchievementsTypesLogin500JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin600JaKs _login600 = _StringsAchievementsTypesLogin600JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin700JaKs _login700 = _StringsAchievementsTypesLogin700JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin800JaKs _login800 = _StringsAchievementsTypesLogin800JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin900JaKs _login900 = _StringsAchievementsTypesLogin900JaKs._(_root);
	@override late final _StringsAchievementsTypesLogin1000JaKs _login1000 = _StringsAchievementsTypesLogin1000JaKs._(_root);
	@override late final _StringsAchievementsTypesNoteClipped1JaKs _noteClipped1 = _StringsAchievementsTypesNoteClipped1JaKs._(_root);
	@override late final _StringsAchievementsTypesNoteFavorited1JaKs _noteFavorited1 = _StringsAchievementsTypesNoteFavorited1JaKs._(_root);
	@override late final _StringsAchievementsTypesMyNoteFavorited1JaKs _myNoteFavorited1 = _StringsAchievementsTypesMyNoteFavorited1JaKs._(_root);
	@override late final _StringsAchievementsTypesProfileFilledJaKs _profileFilled = _StringsAchievementsTypesProfileFilledJaKs._(_root);
	@override late final _StringsAchievementsTypesMarkedAsCatJaKs _markedAsCat = _StringsAchievementsTypesMarkedAsCatJaKs._(_root);
	@override late final _StringsAchievementsTypesFollowing1JaKs _following1 = _StringsAchievementsTypesFollowing1JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowing10JaKs _following10 = _StringsAchievementsTypesFollowing10JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowing50JaKs _following50 = _StringsAchievementsTypesFollowing50JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowing100JaKs _following100 = _StringsAchievementsTypesFollowing100JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowing300JaKs _following300 = _StringsAchievementsTypesFollowing300JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers1JaKs _followers1 = _StringsAchievementsTypesFollowers1JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers10JaKs _followers10 = _StringsAchievementsTypesFollowers10JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers50JaKs _followers50 = _StringsAchievementsTypesFollowers50JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers100JaKs _followers100 = _StringsAchievementsTypesFollowers100JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers300JaKs _followers300 = _StringsAchievementsTypesFollowers300JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers500JaKs _followers500 = _StringsAchievementsTypesFollowers500JaKs._(_root);
	@override late final _StringsAchievementsTypesFollowers1000JaKs _followers1000 = _StringsAchievementsTypesFollowers1000JaKs._(_root);
	@override late final _StringsAchievementsTypesCollectAchievements30JaKs _collectAchievements30 = _StringsAchievementsTypesCollectAchievements30JaKs._(_root);
	@override late final _StringsAchievementsTypesViewAchievements3minJaKs _viewAchievements3min = _StringsAchievementsTypesViewAchievements3minJaKs._(_root);
	@override late final _StringsAchievementsTypesILoveMisskeyJaKs _iLoveMisskey = _StringsAchievementsTypesILoveMisskeyJaKs._(_root);
	@override late final _StringsAchievementsTypesFoundTreasureJaKs _foundTreasure = _StringsAchievementsTypesFoundTreasureJaKs._(_root);
	@override late final _StringsAchievementsTypesClient30minJaKs _client30min = _StringsAchievementsTypesClient30minJaKs._(_root);
	@override late final _StringsAchievementsTypesClient60minJaKs _client60min = _StringsAchievementsTypesClient60minJaKs._(_root);
	@override late final _StringsAchievementsTypesNoteDeletedWithin1minJaKs _noteDeletedWithin1min = _StringsAchievementsTypesNoteDeletedWithin1minJaKs._(_root);
	@override late final _StringsAchievementsTypesPostedAtLateNightJaKs _postedAtLateNight = _StringsAchievementsTypesPostedAtLateNightJaKs._(_root);
	@override late final _StringsAchievementsTypesPostedAt0min0secJaKs _postedAt0min0sec = _StringsAchievementsTypesPostedAt0min0secJaKs._(_root);
	@override late final _StringsAchievementsTypesSelfQuoteJaKs _selfQuote = _StringsAchievementsTypesSelfQuoteJaKs._(_root);
	@override late final _StringsAchievementsTypesHtl20npmJaKs _htl20npm = _StringsAchievementsTypesHtl20npmJaKs._(_root);
	@override late final _StringsAchievementsTypesViewInstanceChartJaKs _viewInstanceChart = _StringsAchievementsTypesViewInstanceChartJaKs._(_root);
	@override late final _StringsAchievementsTypesOutputHelloWorldOnScratchpadJaKs _outputHelloWorldOnScratchpad = _StringsAchievementsTypesOutputHelloWorldOnScratchpadJaKs._(_root);
	@override late final _StringsAchievementsTypesOpen3windowsJaKs _open3windows = _StringsAchievementsTypesOpen3windowsJaKs._(_root);
	@override late final _StringsAchievementsTypesDriveFolderCircularReferenceJaKs _driveFolderCircularReference = _StringsAchievementsTypesDriveFolderCircularReferenceJaKs._(_root);
	@override late final _StringsAchievementsTypesReactWithoutReadJaKs _reactWithoutRead = _StringsAchievementsTypesReactWithoutReadJaKs._(_root);
	@override late final _StringsAchievementsTypesClickedClickHereJaKs _clickedClickHere = _StringsAchievementsTypesClickedClickHereJaKs._(_root);
	@override late final _StringsAchievementsTypesJustPlainLuckyJaKs _justPlainLucky = _StringsAchievementsTypesJustPlainLuckyJaKs._(_root);
	@override late final _StringsAchievementsTypesSetNameToSyuiloJaKs _setNameToSyuilo = _StringsAchievementsTypesSetNameToSyuiloJaKs._(_root);
	@override late final _StringsAchievementsTypesPassedSinceAccountCreated1JaKs _passedSinceAccountCreated1 = _StringsAchievementsTypesPassedSinceAccountCreated1JaKs._(_root);
	@override late final _StringsAchievementsTypesPassedSinceAccountCreated2JaKs _passedSinceAccountCreated2 = _StringsAchievementsTypesPassedSinceAccountCreated2JaKs._(_root);
	@override late final _StringsAchievementsTypesPassedSinceAccountCreated3JaKs _passedSinceAccountCreated3 = _StringsAchievementsTypesPassedSinceAccountCreated3JaKs._(_root);
	@override late final _StringsAchievementsTypesLoggedInOnBirthdayJaKs _loggedInOnBirthday = _StringsAchievementsTypesLoggedInOnBirthdayJaKs._(_root);
	@override late final _StringsAchievementsTypesLoggedInOnNewYearsDayJaKs _loggedInOnNewYearsDay = _StringsAchievementsTypesLoggedInOnNewYearsDayJaKs._(_root);
	@override late final _StringsAchievementsTypesCookieClickedJaKs _cookieClicked = _StringsAchievementsTypesCookieClickedJaKs._(_root);
	@override late final _StringsAchievementsTypesBrainDiverJaKs _brainDiver = _StringsAchievementsTypesBrainDiverJaKs._(_root);
}

// Path: _role._priority
class _StringsRolePriorityJaKs extends _StringsRolePriorityEnUs {
	_StringsRolePriorityJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get low => '低い';
	@override String get middle => '中';
	@override String get high => '高い';
}

// Path: _role._options
class _StringsRoleOptionsJaKs extends _StringsRoleOptionsEnUs {
	_StringsRoleOptionsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'グローバルタイムラインの閲覧';
	@override String get ltlAvailable => 'ローカルタイムラインの閲覧';
	@override String get canPublicNote => 'パブリック投稿の許可';
	@override String get canInvite => 'サーバー招待コードの発行';
	@override String get canManageCustomEmojis => 'カスタム絵文字の管理';
	@override String get driveCapacity => 'ドライブ容量';
	@override String get alwaysMarkNsfw => '勝手にファイルにNSFWをくっつける';
	@override String get pinMax => 'ノートのピン留めの最大数';
	@override String get antennaMax => 'アンテナの作成可能数';
	@override String get wordMuteMax => 'ワードミュートの最大文字数';
	@override String get webhookMax => 'Webhockの作成可能数';
	@override String get clipMax => 'クリップの作成可能数';
	@override String get noteEachClipsMax => 'クリップ内のノートの最大数';
	@override String get userListMax => 'ユーザーリストの作成可能数';
	@override String get userEachUserListsMax => 'ユーザーリスト内のユーザーの最大数';
	@override String get rateLimitFactor => 'レートリミット';
	@override String get descriptionOfRateLimitFactor => 'ちっちゃいほど制限が緩なって、大きいほど制限されるで。';
	@override String get canHideAds => '広告を表示させへん';
	@override String get canSearchNotes => 'ノート検索を使わすかどうか';
}

// Path: _role._condition
class _StringsRoleConditionJaKs extends _StringsRoleConditionEnUs {
	_StringsRoleConditionJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'ローカルユーザー';
	@override String get isRemote => 'リモートユーザー';
	@override String get createdLessThan => 'アカウント作成から～以内';
	@override String get createdMoreThan => 'アカウント作成から～経過';
	@override String get followersLessThanOrEq => 'フォロワー数が～以下';
	@override String get followersMoreThanOrEq => 'フォロワー数が～以上';
	@override String get followingLessThanOrEq => 'フォロー数が～以下';
	@override String get followingMoreThanOrEq => 'フォロー数が～以上';
	@override String get notesLessThanOrEq => '投稿数が～以下しかない';
	@override String get notesMoreThanOrEq => '投稿を～以上しとる';
	@override String get and => '～かつ～';
	@override String get or => '～または～';
	@override String get not => '～ではない';
}

// Path: _email._follow
class _StringsEmailFollowJaKs extends _StringsEmailFollowEnUs {
	_StringsEmailFollowJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローされたで';
}

// Path: _email._receiveFollowRequest
class _StringsEmailReceiveFollowRequestJaKs extends _StringsEmailReceiveFollowRequestEnUs {
	_StringsEmailReceiveFollowRequestJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローリクエストを受け取ったで';
}

// Path: _theme.keys
class _StringsThemeKeysJaKs extends _StringsThemeKeysEnUs {
	_StringsThemeKeysJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get accent => 'アクセント';
	@override String get bg => '背景';
	@override String get fg => '文字';
	@override String get focus => 'フォーカス';
	@override String get indicator => 'インジケーター';
	@override String get panel => 'パネル';
	@override String get shadow => '影';
	@override String get header => 'ヘッダー';
	@override String get navBg => 'サイドバーの背景';
	@override String get navFg => 'サイドバーの文字';
	@override String get navHoverFg => 'サイドバー文字(ホバー)';
	@override String get navActive => 'サイドバー文字(アクティブ)';
	@override String get navIndicator => 'サイドバーのインジケーター';
	@override String get link => 'リンク';
	@override String get hashtag => 'ハッシュタグ';
	@override String get mention => 'メンション';
	@override String get mentionMe => 'うち宛てのメンション';
	@override String get renote => 'Renote';
	@override String get modalBg => 'モーダルの背景';
	@override String get divider => '分割線';
	@override String get scrollbarHandle => 'スクロールバーの取っ手';
	@override String get scrollbarHandleHover => 'スクロールバーの取っ手（ホバー)';
	@override String get dateLabelFg => '日付ラベルの文字';
	@override String get infoBg => '情報の背景';
	@override String get infoFg => '情報の文字';
	@override String get infoWarnBg => '警告の背景';
	@override String get infoWarnFg => '警告の文字';
	@override String get cwBg => 'CW ボタンの背景';
	@override String get cwFg => 'CW ボタンの文字';
	@override String get cwHoverBg => 'CW ボタンの背景 (ホバー)';
	@override String get toastBg => '通知トーストの背景';
	@override String get toastFg => '通知トーストの文字';
	@override String get buttonBg => 'ボタンの背景';
	@override String get buttonHoverBg => 'ボタンの背景 (ホバー)';
	@override String get inputBorder => '入力ボックスの縁取り';
	@override String get listItemHoverBg => 'リスト項目の背景 (ホバー)';
	@override String get driveFolderBg => 'ドライブフォルダーの背景';
	@override String get wallpaperOverlay => '壁紙のオーバーレイ';
	@override String get badge => 'バッジ';
	@override String get messageBg => 'チャットの背景';
	@override String get accentDarken => 'アクセント (暗め)';
	@override String get accentLighten => 'アクセント (明るめ)';
	@override String get fgHighlighted => '強調されとる文字';
}

// Path: _widgets._userList
class _StringsWidgetsUserListJaKs extends _StringsWidgetsUserListEnUs {
	_StringsWidgetsUserListJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'リストを選ぶ';
}

// Path: _postForm._placeholders
class _StringsPostFormPlaceholdersJaKs extends _StringsPostFormPlaceholdersEnUs {
	_StringsPostFormPlaceholdersJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get a => 'いまどないしとるん？';
	@override String get b => '何かあったん？';
	@override String get c => '何か考えとるん？';
	@override String get d => '何か言いたいことあるん？';
	@override String get e => 'ここに書いてーなー';
	@override String get f => 'あんたが書くの待っとるで';
}

// Path: _pages.blocks
class _StringsPagesBlocksJaKs extends _StringsPagesBlocksEnUs {
	_StringsPagesBlocksJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get text => 'テキスト';
	@override String get textarea => 'テキストエリア';
	@override String get section => 'セクション';
	@override String get image => '画像';
	@override String get button => 'ボタン';
	@override String get note => 'ノート埋め込み';
	@override late final _StringsPagesBlocksNoteJaKs _note = _StringsPagesBlocksNoteJaKs._(_root);
}

// Path: _notification._types
class _StringsNotificationTypesJaKs extends _StringsNotificationTypesEnUs {
	_StringsNotificationTypesJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get all => 'すべて';
	@override String get follow => 'フォロー';
	@override String get mention => 'メンション';
	@override String get reply => 'リプライ';
	@override String get renote => 'Renote';
	@override String get quote => '引用';
	@override String get reaction => 'ツッコミ';
	@override String get pollEnded => 'アンケートが終了したで';
	@override String get receiveFollowRequest => 'フォロー許可してほしいみたいやで';
	@override String get followRequestAccepted => 'フォローが受理されたで';
	@override String get achievementEarned => '実績の獲得';
	@override String get app => '連携アプリからの通知や';
}

// Path: _notification._actions
class _StringsNotificationActionsJaKs extends _StringsNotificationActionsEnUs {
	_StringsNotificationActionsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'フォローバック';
	@override String get reply => '返事';
	@override String get renote => 'Renote';
}

// Path: _deck._columns
class _StringsDeckColumnsJaKs extends _StringsDeckColumnsEnUs {
	_StringsDeckColumnsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get main => 'メイン';
	@override String get widgets => 'ウィジェット';
	@override String get notifications => '通知';
	@override String get tl => 'タイムライン';
	@override String get antenna => 'アンテナ';
	@override String get list => 'リスト';
	@override String get channel => 'チャンネル';
	@override String get mentions => 'あんた宛て';
	@override String get direct => 'ダイレクト';
	@override String get roleTimeline => 'ロールタイムライン';
}

// Path: _webhookSettings._events
class _StringsWebhookSettingsEventsJaKs extends _StringsWebhookSettingsEventsEnUs {
	_StringsWebhookSettingsEventsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get follow => 'フォローしたとき～！';
	@override String get followed => 'フォローもらったとき～！';
	@override String get note => 'ノートを投稿したとき～！';
	@override String get reply => '返信があるとき～！';
	@override String get renote => 'Renoteされるとき～！';
	@override String get reaction => 'ツッコミがあるとき～！';
	@override String get mention => 'メンションがあるとき～！';
}

// Path: _achievements._types._notes1
class _StringsAchievementsTypesNotes1JaKs extends _StringsAchievementsTypesNotes1EnUs {
	_StringsAchievementsTypesNotes1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'まいど！';
	@override String get description => '初めてノート投稿したった';
	@override String get flavor => 'Misskeyを楽しんでな～';
}

// Path: _achievements._types._notes10
class _StringsAchievementsTypesNotes10JaKs extends _StringsAchievementsTypesNotes10EnUs {
	_StringsAchievementsTypesNotes10JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの天保山';
	@override String get description => 'ノートを10回投稿した';
}

// Path: _achievements._types._notes100
class _StringsAchievementsTypesNotes100JaKs extends _StringsAchievementsTypesNotes100EnUs {
	_StringsAchievementsTypesNotes100JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの真田山';
	@override String get description => 'ノートを100回投稿した';
}

// Path: _achievements._types._notes500
class _StringsAchievementsTypesNotes500JaKs extends _StringsAchievementsTypesNotes500EnUs {
	_StringsAchievementsTypesNotes500JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの生駒山';
	@override String get description => 'ノートを500回投稿した';
}

// Path: _achievements._types._notes1000
class _StringsAchievementsTypesNotes1000JaKs extends _StringsAchievementsTypesNotes1000EnUs {
	_StringsAchievementsTypesNotes1000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの六甲山';
	@override String get description => 'ノートを1,000回投稿した';
}

// Path: _achievements._types._notes5000
class _StringsAchievementsTypesNotes5000JaKs extends _StringsAchievementsTypesNotes5000EnUs {
	_StringsAchievementsTypesNotes5000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '箕面の滝からノート';
	@override String get description => 'ノートを5,000回投稿した';
}

// Path: _achievements._types._notes10000
class _StringsAchievementsTypesNotes10000JaKs extends _StringsAchievementsTypesNotes10000EnUs {
	_StringsAchievementsTypesNotes10000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'スーパーノート';
	@override String get description => 'ノートを10,000回投稿した';
}

// Path: _achievements._types._notes20000
class _StringsAchievementsTypesNotes20000JaKs extends _StringsAchievementsTypesNotes20000EnUs {
	_StringsAchievementsTypesNotes20000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ニードモアノート';
	@override String get description => 'ノートを20,000回投稿した';
}

// Path: _achievements._types._notes30000
class _StringsAchievementsTypesNotes30000JaKs extends _StringsAchievementsTypesNotes30000EnUs {
	_StringsAchievementsTypesNotes30000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートノートノート';
	@override String get description => 'ノートを30,000回投稿した';
}

// Path: _achievements._types._notes40000
class _StringsAchievementsTypesNotes40000JaKs extends _StringsAchievementsTypesNotes40000EnUs {
	_StringsAchievementsTypesNotes40000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノート工場';
	@override String get description => 'ノートを40,000回投稿した';
}

// Path: _achievements._types._notes50000
class _StringsAchievementsTypesNotes50000JaKs extends _StringsAchievementsTypesNotes50000EnUs {
	_StringsAchievementsTypesNotes50000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの惑星';
	@override String get description => 'ノートを50,000回投稿した';
}

// Path: _achievements._types._notes60000
class _StringsAchievementsTypesNotes60000JaKs extends _StringsAchievementsTypesNotes60000EnUs {
	_StringsAchievementsTypesNotes60000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートクエーサー';
	@override String get description => 'ノートを60,000回投稿した';
}

// Path: _achievements._types._notes70000
class _StringsAchievementsTypesNotes70000JaKs extends _StringsAchievementsTypesNotes70000EnUs {
	_StringsAchievementsTypesNotes70000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ブラックノートホール';
	@override String get description => 'ノートを70,000回投稿した';
}

// Path: _achievements._types._notes80000
class _StringsAchievementsTypesNotes80000JaKs extends _StringsAchievementsTypesNotes80000EnUs {
	_StringsAchievementsTypesNotes80000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートギャラクシー';
	@override String get description => 'ノートを80,000回投稿した';
}

// Path: _achievements._types._notes90000
class _StringsAchievementsTypesNotes90000JaKs extends _StringsAchievementsTypesNotes90000EnUs {
	_StringsAchievementsTypesNotes90000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートバース';
	@override String get description => 'ノートを90,000回投稿した';
}

// Path: _achievements._types._notes100000
class _StringsAchievementsTypesNotes100000JaKs extends _StringsAchievementsTypesNotes100000EnUs {
	_StringsAchievementsTypesNotes100000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'ノートを100,000回投稿した';
	@override String get flavor => 'そんなに書くことあるんか？';
}

// Path: _achievements._types._login3
class _StringsAchievementsTypesLogin3JaKs extends _StringsAchievementsTypesLogin3EnUs {
	_StringsAchievementsTypesLogin3JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅠ';
	@override String get description => '通算3日ログインした';
	@override String get flavor => '今日からワシはミスキストやで';
}

// Path: _achievements._types._login7
class _StringsAchievementsTypesLogin7JaKs extends _StringsAchievementsTypesLogin7EnUs {
	_StringsAchievementsTypesLogin7JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅡ';
	@override String get description => '通算7日ログインした';
	@override String get flavor => '慣れてきたんとちゃう？';
}

// Path: _achievements._types._login15
class _StringsAchievementsTypesLogin15JaKs extends _StringsAchievementsTypesLogin15EnUs {
	_StringsAchievementsTypesLogin15JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅢ';
	@override String get description => '通算15日ログインした';
}

// Path: _achievements._types._login30
class _StringsAchievementsTypesLogin30JaKs extends _StringsAchievementsTypesLogin30EnUs {
	_StringsAchievementsTypesLogin30JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅠ';
	@override String get description => '通算30日ログインした';
}

// Path: _achievements._types._login60
class _StringsAchievementsTypesLogin60JaKs extends _StringsAchievementsTypesLogin60EnUs {
	_StringsAchievementsTypesLogin60JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅡ';
	@override String get description => '通算60日ログインした';
}

// Path: _achievements._types._login100
class _StringsAchievementsTypesLogin100JaKs extends _StringsAchievementsTypesLogin100EnUs {
	_StringsAchievementsTypesLogin100JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅢ';
	@override String get description => '通算100日ログインした';
	@override String get flavor => 'そのユーザー、ミスキストにつき';
}

// Path: _achievements._types._login200
class _StringsAchievementsTypesLogin200JaKs extends _StringsAchievementsTypesLogin200EnUs {
	_StringsAchievementsTypesLogin200JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '常連さんⅠ';
	@override String get description => '通算200日ログインした';
}

// Path: _achievements._types._login300
class _StringsAchievementsTypesLogin300JaKs extends _StringsAchievementsTypesLogin300EnUs {
	_StringsAchievementsTypesLogin300JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '常連さんⅡ';
	@override String get description => '通算300日ログインした';
}

// Path: _achievements._types._login400
class _StringsAchievementsTypesLogin400JaKs extends _StringsAchievementsTypesLogin400EnUs {
	_StringsAchievementsTypesLogin400JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '常連さんⅢ';
	@override String get description => '通算400日ログインした';
}

// Path: _achievements._types._login500
class _StringsAchievementsTypesLogin500JaKs extends _StringsAchievementsTypesLogin500EnUs {
	_StringsAchievementsTypesLogin500JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランさんⅠ';
	@override String get description => '通算500日ログインした';
	@override String get flavor => 'あんたら、うちはノートが好きや';
}

// Path: _achievements._types._login600
class _StringsAchievementsTypesLogin600JaKs extends _StringsAchievementsTypesLogin600EnUs {
	_StringsAchievementsTypesLogin600JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランさんⅡ';
	@override String get description => '通算600日ログインした';
}

// Path: _achievements._types._login700
class _StringsAchievementsTypesLogin700JaKs extends _StringsAchievementsTypesLogin700EnUs {
	_StringsAchievementsTypesLogin700JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランさんⅢ';
	@override String get description => '通算700日ログインした';
}

// Path: _achievements._types._login800
class _StringsAchievementsTypesLogin800JaKs extends _StringsAchievementsTypesLogin800EnUs {
	_StringsAchievementsTypesLogin800JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマイスターⅠ';
	@override String get description => '通算800日ログインした';
}

// Path: _achievements._types._login900
class _StringsAchievementsTypesLogin900JaKs extends _StringsAchievementsTypesLogin900EnUs {
	_StringsAchievementsTypesLogin900JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマイスターⅡ';
	@override String get description => '通算900日ログインした';
}

// Path: _achievements._types._login1000
class _StringsAchievementsTypesLogin1000JaKs extends _StringsAchievementsTypesLogin1000EnUs {
	_StringsAchievementsTypesLogin1000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマイスターⅢ';
	@override String get description => '通算1,000日ログインした';
	@override String get flavor => 'Misskeyようさん使てもろておおきにな！';
}

// Path: _achievements._types._noteClipped1
class _StringsAchievementsTypesNoteClipped1JaKs extends _StringsAchievementsTypesNoteClipped1EnUs {
	_StringsAchievementsTypesNoteClipped1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカンどれもクリップしたいわ';
	@override String get description => '初めてノートをクリップした';
}

// Path: _achievements._types._noteFavorited1
class _StringsAchievementsTypesNoteFavorited1JaKs extends _StringsAchievementsTypesNoteFavorited1EnUs {
	_StringsAchievementsTypesNoteFavorited1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '星ぃみるひと';
	@override String get description => '初めてノートをお気に入りに登録した';
}

// Path: _achievements._types._myNoteFavorited1
class _StringsAchievementsTypesMyNoteFavorited1JaKs extends _StringsAchievementsTypesMyNoteFavorited1EnUs {
	_StringsAchievementsTypesMyNoteFavorited1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '星ぃ欲しい';
	@override String get description => 'ワレのノートが他のひとにお気に入り登録されたで';
}

// Path: _achievements._types._profileFilled
class _StringsAchievementsTypesProfileFilledJaKs extends _StringsAchievementsTypesProfileFilledEnUs {
	_StringsAchievementsTypesProfileFilledJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '準備万端や';
	@override String get description => 'プロフィールを設定した';
}

// Path: _achievements._types._markedAsCat
class _StringsAchievementsTypesMarkedAsCatJaKs extends _StringsAchievementsTypesMarkedAsCatEnUs {
	_StringsAchievementsTypesMarkedAsCatJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '吾輩は猫やねん';
	@override String get description => 'アカウントをCatにしたった';
	@override String get flavor => '名前はまだないねん。';
}

// Path: _achievements._types._following1
class _StringsAchievementsTypesFollowing1JaKs extends _StringsAchievementsTypesFollowing1EnUs {
	_StringsAchievementsTypesFollowing1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロー';
	@override String get description => '初めてフォローした';
}

// Path: _achievements._types._following10
class _StringsAchievementsTypesFollowing10JaKs extends _StringsAchievementsTypesFollowing10EnUs {
	_StringsAchievementsTypesFollowing10JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ついてく、ついてく';
	@override String get description => 'フォローが10人超えた';
}

// Path: _achievements._types._following50
class _StringsAchievementsTypesFollowing50JaKs extends _StringsAchievementsTypesFollowing50EnUs {
	_StringsAchievementsTypesFollowing50JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '友達ぎょうさん';
	@override String get description => 'フォローが50人超えた';
}

// Path: _achievements._types._following100
class _StringsAchievementsTypesFollowing100JaKs extends _StringsAchievementsTypesFollowing100EnUs {
	_StringsAchievementsTypesFollowing100JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '友達100人';
	@override String get description => 'フォローが100人超えた';
}

// Path: _achievements._types._following300
class _StringsAchievementsTypesFollowing300JaKs extends _StringsAchievementsTypesFollowing300EnUs {
	_StringsAchievementsTypesFollowing300JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'いや友達多すぎやろ';
	@override String get description => 'フォローが300人超えた';
}

// Path: _achievements._types._followers1
class _StringsAchievementsTypesFollowers1JaKs extends _StringsAchievementsTypesFollowers1EnUs {
	_StringsAchievementsTypesFollowers1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロワー';
	@override String get description => '初めてフォローされた';
}

// Path: _achievements._types._followers10
class _StringsAchievementsTypesFollowers10JaKs extends _StringsAchievementsTypesFollowers10EnUs {
	_StringsAchievementsTypesFollowers10JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローみぃ！';
	@override String get description => 'フォロワーが10人超えた';
}

// Path: _achievements._types._followers50
class _StringsAchievementsTypesFollowers50JaKs extends _StringsAchievementsTypesFollowers50EnUs {
	_StringsAchievementsTypesFollowers50JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ぞろぞろ';
	@override String get description => 'フォロワーが50人超えた';
}

// Path: _achievements._types._followers100
class _StringsAchievementsTypesFollowers100JaKs extends _StringsAchievementsTypesFollowers100EnUs {
	_StringsAchievementsTypesFollowers100JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '人気もん';
	@override String get description => 'フォロワーが100人超えた';
}

// Path: _achievements._types._followers300
class _StringsAchievementsTypesFollowers300JaKs extends _StringsAchievementsTypesFollowers300EnUs {
	_StringsAchievementsTypesFollowers300JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ほらそこ一列に並んで！';
	@override String get description => 'フォロワーが300人超えた';
}

// Path: _achievements._types._followers500
class _StringsAchievementsTypesFollowers500JaKs extends _StringsAchievementsTypesFollowers500EnUs {
	_StringsAchievementsTypesFollowers500JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '基地局';
	@override String get description => 'フォロワーが500人超えた';
}

// Path: _achievements._types._followers1000
class _StringsAchievementsTypesFollowers1000JaKs extends _StringsAchievementsTypesFollowers1000EnUs {
	_StringsAchievementsTypesFollowers1000JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'インフルエンサー';
	@override String get description => 'フォロワーが1,000人超えた';
}

// Path: _achievements._types._collectAchievements30
class _StringsAchievementsTypesCollectAchievements30JaKs extends _StringsAchievementsTypesCollectAchievements30EnUs {
	_StringsAchievementsTypesCollectAchievements30JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '実績コレクター';
	@override String get description => '実績を30個以上獲得した';
}

// Path: _achievements._types._viewAchievements3min
class _StringsAchievementsTypesViewAchievements3minJaKs extends _StringsAchievementsTypesViewAchievements3minEnUs {
	_StringsAchievementsTypesViewAchievements3minJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '実績好き';
	@override String get description => '実績一覧を3分以上眺め続けた';
}

// Path: _achievements._types._iLoveMisskey
class _StringsAchievementsTypesILoveMisskeyJaKs extends _StringsAchievementsTypesILoveMisskeyEnUs {
	_StringsAchievementsTypesILoveMisskeyJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey好きやねん';
	@override String get description => '"I ❤ #Misskey"を投稿した';
	@override String get flavor => 'Misskeyを使ってくれておおきにな～　by 開発チーム';
}

// Path: _achievements._types._foundTreasure
class _StringsAchievementsTypesFoundTreasureJaKs extends _StringsAchievementsTypesFoundTreasureEnUs {
	_StringsAchievementsTypesFoundTreasureJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'なんでも鑑定団';
	@override String get description => '隠されたお宝を発見した';
}

// Path: _achievements._types._client30min
class _StringsAchievementsTypesClient30minJaKs extends _StringsAchievementsTypesClient30minEnUs {
	_StringsAchievementsTypesClient30minJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ねんね';
	@override String get description => 'クライアントを起動してから30分以上経過した';
}

// Path: _achievements._types._client60min
class _StringsAchievementsTypesClient60minJaKs extends _StringsAchievementsTypesClient60minEnUs {
	_StringsAchievementsTypesClient60minJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyの見過ぎや！';
	@override String get description => 'クライアント付けてから１時間経ってもうたで。';
}

// Path: _achievements._types._noteDeletedWithin1min
class _StringsAchievementsTypesNoteDeletedWithin1minJaKs extends _StringsAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsAchievementsTypesNoteDeletedWithin1minJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '＊おおっと＊';
	@override String get description => '投稿してから1分以内にその投稿を消した';
}

// Path: _achievements._types._postedAtLateNight
class _StringsAchievementsTypesPostedAtLateNightJaKs extends _StringsAchievementsTypesPostedAtLateNightEnUs {
	_StringsAchievementsTypesPostedAtLateNightJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '夜行性';
	@override String get description => '深夜にノートを投稿した';
	@override String get flavor => 'そろそろ寝よか';
}

// Path: _achievements._types._postedAt0min0sec
class _StringsAchievementsTypesPostedAt0min0secJaKs extends _StringsAchievementsTypesPostedAt0min0secEnUs {
	_StringsAchievementsTypesPostedAt0min0secJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '時報';
	@override String get description => '0分0秒にノートを投稿した';
	@override String get flavor => 'ポッ ポッ ポッ ピーン';
}

// Path: _achievements._types._selfQuote
class _StringsAchievementsTypesSelfQuoteJaKs extends _StringsAchievementsTypesSelfQuoteEnUs {
	_StringsAchievementsTypesSelfQuoteJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '自己言及';
	@override String get description => '自分のノートを引用した';
}

// Path: _achievements._types._htl20npm
class _StringsAchievementsTypesHtl20npmJaKs extends _StringsAchievementsTypesHtl20npmEnUs {
	_StringsAchievementsTypesHtl20npmJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '流れるTL';
	@override String get description => 'ホームタイムラインの流速が20npmを超す';
}

// Path: _achievements._types._viewInstanceChart
class _StringsAchievementsTypesViewInstanceChartJaKs extends _StringsAchievementsTypesViewInstanceChartEnUs {
	_StringsAchievementsTypesViewInstanceChartJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'アナリスト';
	@override String get description => 'サーバーのチャートを表示した';
}

// Path: _achievements._types._outputHelloWorldOnScratchpad
class _StringsAchievementsTypesOutputHelloWorldOnScratchpadJaKs extends _StringsAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsAchievementsTypesOutputHelloWorldOnScratchpadJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'スクラッチパッドで hello worldを出力した';
}

// Path: _achievements._types._open3windows
class _StringsAchievementsTypesOpen3windowsJaKs extends _StringsAchievementsTypesOpen3windowsEnUs {
	_StringsAchievementsTypesOpen3windowsJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'マド開けすぎ';
	@override String get description => 'ウィンドウを3つ以上開いた状態にした';
}

// Path: _achievements._types._driveFolderCircularReference
class _StringsAchievementsTypesDriveFolderCircularReferenceJaKs extends _StringsAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsAchievementsTypesDriveFolderCircularReferenceJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '環状線';
	@override String get description => 'ドライブのフォルダを再帰的な入れ子にしようとした';
}

// Path: _achievements._types._reactWithoutRead
class _StringsAchievementsTypesReactWithoutReadJaKs extends _StringsAchievementsTypesReactWithoutReadEnUs {
	_StringsAchievementsTypesReactWithoutReadJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ちゃんと読んだんか？';
	@override String get description => '100文字以上のテキストを含むノートに投稿されてから3秒以内にツッコんだ';
}

// Path: _achievements._types._clickedClickHere
class _StringsAchievementsTypesClickedClickHereJaKs extends _StringsAchievementsTypesClickedClickHereEnUs {
	_StringsAchievementsTypesClickedClickHereJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ここをクリック';
	@override String get description => 'ここをクリックした';
}

// Path: _achievements._types._justPlainLucky
class _StringsAchievementsTypesJustPlainLuckyJaKs extends _StringsAchievementsTypesJustPlainLuckyEnUs {
	_StringsAchievementsTypesJustPlainLuckyJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '単なるラッキー';
	@override String get description => '10秒ごとに0.005％の確率で獲得';
}

// Path: _achievements._types._setNameToSyuilo
class _StringsAchievementsTypesSetNameToSyuiloJaKs extends _StringsAchievementsTypesSetNameToSyuiloEnUs {
	_StringsAchievementsTypesSetNameToSyuiloJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '神様コンプレックス';
	@override String get description => '名前を syuilo に設定した';
}

// Path: _achievements._types._passedSinceAccountCreated1
class _StringsAchievementsTypesPassedSinceAccountCreated1JaKs extends _StringsAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated1JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '一周年';
	@override String get description => 'アカウント作成から1年経過した';
}

// Path: _achievements._types._passedSinceAccountCreated2
class _StringsAchievementsTypesPassedSinceAccountCreated2JaKs extends _StringsAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated2JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '二周年';
	@override String get description => 'アカウント作成から2年経過した';
}

// Path: _achievements._types._passedSinceAccountCreated3
class _StringsAchievementsTypesPassedSinceAccountCreated3JaKs extends _StringsAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsAchievementsTypesPassedSinceAccountCreated3JaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '三周年';
	@override String get description => 'アカウント作成から3年経過した';
}

// Path: _achievements._types._loggedInOnBirthday
class _StringsAchievementsTypesLoggedInOnBirthdayJaKs extends _StringsAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsAchievementsTypesLoggedInOnBirthdayJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ハッピーバースデー！';
	@override String get description => '誕生日にログインした';
}

// Path: _achievements._types._loggedInOnNewYearsDay
class _StringsAchievementsTypesLoggedInOnNewYearsDayJaKs extends _StringsAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsAchievementsTypesLoggedInOnNewYearsDayJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'あけましておめでとうございます！';
	@override String get description => '元旦にログインした';
	@override String get flavor => '今年も弊サーバーをよろしゅう頼みますわ';
}

// Path: _achievements._types._cookieClicked
class _StringsAchievementsTypesCookieClickedJaKs extends _StringsAchievementsTypesCookieClickedEnUs {
	_StringsAchievementsTypesCookieClickedJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'クッキー叩くやつ';
	@override String get description => 'クッキー叩いてもうた';
	@override String get flavor => '兄ちゃんソフト間違っとんで';
}

// Path: _achievements._types._brainDiver
class _StringsAchievementsTypesBrainDiverJaKs extends _StringsAchievementsTypesBrainDiverEnUs {
	_StringsAchievementsTypesBrainDiverJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diverへのリンクを投稿したった';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: _pages.blocks._note
class _StringsPagesBlocksNoteJaKs extends _StringsPagesBlocksNoteEnUs {
	_StringsPagesBlocksNoteJaKs._(_StringsJaKs root) : this._root = root, super._(root);

	@override final _StringsJaKs _root; // ignore: unused_field

	// Translations
	@override String get id => 'ノートID';
	@override String get idDescription => 'ノートURLをペーストして設定することもできるで。';
	@override String get detailed => '詳細な表示';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEnUs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case '_lang_': return 'English';
			case 'headlineMisskey': return 'A network connected by notes';
			case 'introMisskey': return 'Welcome! Misskey is an open source, decentralized microblogging service.\nCreate "notes" to share your thoughts with everyone around you. 📡\nWith "reactions", you can also quickly express your feelings about everyone\'s notes. 👍\nLet\'s explore a new world! 🚀';
			case 'poweredByMisskeyDescription': return '{name} is one of the services powered by the open source platform <b>Misskey</b> (referred to as a "Misskey instance").';
			case 'monthAndDay': return '{month}/{day}';
			case 'search': return 'Search';
			case 'notifications': return 'Notifications';
			case 'username': return 'Username';
			case 'password': return 'Password';
			case 'forgotPassword': return 'Forgot password';
			case 'fetchingAsApObject': return 'Fetching from the Fediverse...';
			case 'ok': return 'OK';
			case 'gotIt': return 'Got it!';
			case 'cancel': return 'Cancel';
			case 'noThankYou': return 'Not now';
			case 'enterUsername': return 'Enter username';
			case 'renotedBy': return 'Renoted by {user}';
			case 'noNotes': return 'No notes';
			case 'noNotifications': return 'No notifications';
			case 'instance': return 'Instance';
			case 'settings': return 'Settings';
			case 'notificationSettings': return 'Notification Settings';
			case 'basicSettings': return 'Basic Settings';
			case 'otherSettings': return 'Other Settings';
			case 'openInWindow': return 'Open in window';
			case 'profile': return 'Profile';
			case 'timeline': return 'Timeline';
			case 'noAccountDescription': return 'This user has not written their bio yet.';
			case 'login': return 'Sign In';
			case 'loggingIn': return 'Signing In';
			case 'logout': return 'Sign Out';
			case 'signup': return 'Sign Up';
			case 'uploading': return 'Uploading...';
			case 'save': return 'Save';
			case 'users': return 'Users';
			case 'addUser': return 'Add a user';
			case 'favorite': return 'Add to favorites';
			case 'favorites': return 'Favorites';
			case 'unfavorite': return 'Remove from favorites';
			case 'favorited': return 'Added to favorites.';
			case 'alreadyFavorited': return 'Already added to favorites.';
			case 'cantFavorite': return 'Couldn\'t add to favorites.';
			case 'pin': return 'Pin to profile';
			case 'unpin': return 'Unpin from profile';
			case 'copyContent': return 'Copy contents';
			case 'copyLink': return 'Copy link';
			case 'delete': return 'Delete';
			case 'deleteAndEdit': return 'Delete and edit';
			case 'deleteAndEditConfirm': return 'Are you sure you want to delete this note and edit it? You will lose all reactions, renotes and replies to it.';
			case 'addToList': return 'Add to list';
			case 'sendMessage': return 'Send a message';
			case 'copyRSS': return 'Copy RSS';
			case 'copyUsername': return 'Copy username';
			case 'copyUserId': return 'Copy user ID';
			case 'copyNoteId': return 'Copy note ID';
			case 'searchUser': return 'Search for a user';
			case 'reply': return 'Reply';
			case 'loadMore': return 'Load more';
			case 'showMore': return 'Show more';
			case 'showLess': return 'Close';
			case 'youGotNewFollower': return 'followed you';
			case 'receiveFollowRequest': return 'Follow request received';
			case 'followRequestAccepted': return 'Follow request accepted';
			case 'mention': return 'Mention';
			case 'mentions': return 'Mentions';
			case 'directNotes': return 'Direct notes';
			case 'importAndExport': return 'Import / Export';
			case 'import': return 'Import';
			case 'export': return 'Export';
			case 'files': return 'Files';
			case 'download': return 'Download';
			case 'driveFileDeleteConfirm': return 'Are you sure you want to delete "{name}"? It will also vanish from all contents that use it.';
			case 'unfollowConfirm': return 'Are you sure you want to unfollow {name}?';
			case 'exportRequested': return 'You\'ve requested an export. This may take a while. It will be added to your Drive once completed.';
			case 'importRequested': return 'You\'ve requested an import. This may take a while.';
			case 'lists': return 'Lists';
			case 'noLists': return 'You don\'t have any lists';
			case 'note': return 'Note';
			case 'notes': return 'Notes';
			case 'following': return 'Following';
			case 'followers': return 'Followers';
			case 'followsYou': return 'Follows you';
			case 'createList': return 'Create list';
			case 'manageLists': return 'Manage lists';
			case 'error': return 'Error';
			case 'somethingHappened': return 'An error has occurred';
			case 'retry': return 'Retry';
			case 'pageLoadError': return 'An error occurred while loading the page.';
			case 'pageLoadErrorDescription': return 'This is normally caused by network errors or the browser\'s cache. Try clearing the cache and then try again after waiting a little while.';
			case 'serverIsDead': return 'This server is not responding. Please wait for a while and try again.';
			case 'youShouldUpgradeClient': return 'To view this page, please refresh to update your client.';
			case 'enterListName': return 'Enter a name for the list';
			case 'privacy': return 'Privacy';
			case 'makeFollowManuallyApprove': return 'Follow requests require approval';
			case 'defaultNoteVisibility': return 'Default visibility';
			case 'follow': return 'Follow';
			case 'followRequest': return 'Send follow request';
			case 'followRequests': return 'Follow requests';
			case 'unfollow': return 'Unfollow';
			case 'followRequestPending': return 'Follow request pending';
			case 'enterEmoji': return 'Enter an emoji';
			case 'renote': return 'Renote';
			case 'unrenote': return 'Take back renote';
			case 'renoted': return 'Renoted.';
			case 'cantRenote': return 'This post can\'t be renoted.';
			case 'cantReRenote': return 'A renote can\'t be renoted.';
			case 'quote': return 'Quote';
			case 'inChannelRenote': return 'Channel-only Renote';
			case 'inChannelQuote': return 'Channel-only Quote';
			case 'pinnedNote': return 'Pinned note';
			case 'pinned': return 'Pin to profile';
			case 'you': return 'You';
			case 'clickToShow': return 'Click to show';
			case 'sensitive': return 'NSFW';
			case 'add': return 'Add';
			case 'reaction': return 'Reactions';
			case 'reactions': return 'Reactions';
			case 'reactionSetting': return 'Reactions to show in the reaction picker';
			case 'reactionSettingDescription2': return 'Drag to reorder, click to delete, press "+" to add.';
			case 'rememberNoteVisibility': return 'Remember note visibility settings';
			case 'attachCancel': return 'Remove attachment';
			case 'markAsSensitive': return 'Mark as NSFW';
			case 'unmarkAsSensitive': return 'Unmark as NSFW';
			case 'enterFileName': return 'Enter filename';
			case 'mute': return 'Mute';
			case 'unmute': return 'Unmute';
			case 'renoteMute': return 'Mute Renotes';
			case 'renoteUnmute': return 'Unmute Renotes';
			case 'block': return 'Block';
			case 'unblock': return 'Unblock';
			case 'suspend': return 'Suspend';
			case 'unsuspend': return 'Unsuspend';
			case 'blockConfirm': return 'Are you sure that you want to block this account?';
			case 'unblockConfirm': return 'Are you sure that you want to unblock this account?';
			case 'suspendConfirm': return 'Are you sure that you want to suspend this account?';
			case 'unsuspendConfirm': return 'Are you sure that you want to unsuspend this account?';
			case 'selectList': return 'Select a list';
			case 'selectChannel': return 'Select a channel';
			case 'selectAntenna': return 'Select an antenna';
			case 'selectWidget': return 'Select a widget';
			case 'editWidgets': return 'Edit widgets';
			case 'editWidgetsExit': return 'Done';
			case 'customEmojis': return 'Custom Emoji';
			case 'emoji': return 'Emoji';
			case 'emojis': return 'Emoji';
			case 'emojiName': return 'Emoji name';
			case 'emojiUrl': return 'Emoji URL';
			case 'addEmoji': return 'Add an emoji';
			case 'settingGuide': return 'Recommended settings';
			case 'cacheRemoteFiles': return 'Cache remote files';
			case 'cacheRemoteFilesDescription': return 'When this setting is disabled, remote files are loaded directly from the remote instance. Disabling this will decrease storage usage, but increase traffic, as thumbnails will not be generated.';
			case 'flagAsBot': return 'Mark this account as a bot';
			case 'flagAsBotDescription': return 'Enable this option if this account is controlled by a program. If enabled, it will act as a flag for other developers to prevent endless interaction chains with other bots and adjust Misskey\'s internal systems to treat this account as a bot.';
			case 'flagAsCat': return 'Mark this account as a cat';
			case 'flagAsCatDescription': return 'Enable this option to mark this account as a cat.';
			case 'flagShowTimelineReplies': return 'Show replies in timeline';
			case 'flagShowTimelineRepliesDescription': return 'Shows replies of users to notes of other users in the timeline if turned on.';
			case 'autoAcceptFollowed': return 'Automatically approve follow requests from users you\'re following';
			case 'addAccount': return 'Add account';
			case 'reloadAccountsList': return 'Reload account list';
			case 'loginFailed': return 'Failed to sign in';
			case 'showOnRemote': return 'View on remote instance';
			case 'general': return 'General';
			case 'wallpaper': return 'Wallpaper';
			case 'setWallpaper': return 'Set wallpaper';
			case 'removeWallpaper': return 'Remove wallpaper';
			case 'searchWith': return 'Search: {q}';
			case 'youHaveNoLists': return 'You don\'t have any lists';
			case 'followConfirm': return 'Are you sure that you want to follow {name}?';
			case 'proxyAccount': return 'Proxy account';
			case 'proxyAccountDescription': return 'A proxy account is an account that acts as a remote follower for users under certain conditions. For example, when a user adds a remote user to the list, the remote user\'s activity will not be delivered to the instance if no local user is following that user, so the proxy account will follow instead.';
			case 'host': return 'Host';
			case 'selectUser': return 'Select a user';
			case 'recipient': return 'Recipient';
			case 'annotation': return 'Comments';
			case 'federation': return 'Federation';
			case 'instances': return 'Instances';
			case 'registeredAt': return 'Registered at';
			case 'latestRequestReceivedAt': return 'Last request received';
			case 'latestStatus': return 'Latest status';
			case 'storageUsage': return 'Storage usage';
			case 'charts': return 'Charts';
			case 'perHour': return 'Per Hour';
			case 'perDay': return 'Per Day';
			case 'stopActivityDelivery': return 'Stop sending activities';
			case 'blockThisInstance': return 'Block this instance';
			case 'operations': return 'Operations';
			case 'software': return 'Software';
			case 'version': return 'Version';
			case 'metadata': return 'Metadata';
			case 'withNFiles': return '{n} file(s)';
			case 'monitor': return 'Monitor';
			case 'jobQueue': return 'Job Queue';
			case 'cpuAndMemory': return 'CPU and Memory';
			case 'network': return 'Network';
			case 'disk': return 'Disk';
			case 'instanceInfo': return 'Instance Information';
			case 'statistics': return 'Statistics';
			case 'clearQueue': return 'Clear queue';
			case 'clearQueueConfirmTitle': return 'Are you sure that you want to clear the queue?';
			case 'clearQueueConfirmText': return 'Any undelivered notes remaining in the queue will not be federated. Usually this operation is not needed.';
			case 'clearCachedFiles': return 'Clear cache';
			case 'clearCachedFilesConfirm': return 'Are you sure that you want to delete all cached remote files?';
			case 'blockedInstances': return 'Blocked Instances';
			case 'blockedInstancesDescription': return 'List the hostnames of the instances that you want to block separated by linebreaks. Listed instances will no longer be able to communicate with this instance.';
			case 'muteAndBlock': return 'Mutes and Blocks';
			case 'mutedUsers': return 'Muted users';
			case 'blockedUsers': return 'Blocked users';
			case 'noUsers': return 'There are no users';
			case 'editProfile': return 'Edit profile';
			case 'noteDeleteConfirm': return 'Are you sure you want to delete this note?';
			case 'pinLimitExceeded': return 'You cannot pin any more notes';
			case 'intro': return 'Installation of Misskey has been finished! Please create an admin user.';
			case 'done': return 'Done';
			case 'processing': return 'Processing...';
			case 'preview': return 'Preview';
			case 'default_': return 'Default';
			case 'defaultValueIs': return 'Default: {value}';
			case 'noCustomEmojis': return 'There are no emoji';
			case 'noJobs': return 'There are no jobs';
			case 'federating': return 'Federating';
			case 'blocked': return 'Blocked';
			case 'suspended': return 'Suspended';
			case 'all': return 'All';
			case 'subscribing': return 'Subscribing';
			case 'publishing': return 'Publishing';
			case 'notResponding': return 'Not responding';
			case 'instanceFollowing': return 'Following on instance';
			case 'instanceFollowers': return 'Instance followers';
			case 'instanceUsers': return 'Users of this instance';
			case 'changePassword': return 'Change password';
			case 'security': return 'Security';
			case 'retypedNotMatch': return 'The inputs do not match.';
			case 'currentPassword': return 'Current password';
			case 'newPassword': return 'New password';
			case 'newPasswordRetype': return 'Retype new password';
			case 'attachFile': return 'Attach files';
			case 'more': return 'More!';
			case 'featured': return 'Featured';
			case 'usernameOrUserId': return 'Username or user id';
			case 'noSuchUser': return 'User not found';
			case 'lookup': return 'Lookup';
			case 'announcements': return 'Announcements';
			case 'imageUrl': return 'Image URL';
			case 'remove': return 'Delete';
			case 'removed': return 'Successfully deleted';
			case 'removeAreYouSure': return 'Are you sure that you want to remove "{x}"?';
			case 'deleteAreYouSure': return 'Are you sure that you want to delete "{x}"?';
			case 'resetAreYouSure': return 'Really reset?';
			case 'saved': return 'Saved';
			case 'messaging': return 'Chat';
			case 'upload': return 'Upload';
			case 'keepOriginalUploading': return 'Keep original image';
			case 'keepOriginalUploadingDescription': return 'Saves the originally uploaded image as-is. If turned off, a version to display on the web will be generated on upload.';
			case 'fromDrive': return 'From Drive';
			case 'fromUrl': return 'From URL';
			case 'uploadFromUrl': return 'Upload from a URL';
			case 'uploadFromUrlDescription': return 'URL of the file you want to upload';
			case 'uploadFromUrlRequested': return 'Upload requested';
			case 'uploadFromUrlMayTakeTime': return 'It may take some time until the upload is complete.';
			case 'explore': return 'Explore';
			case 'messageRead': return 'Read';
			case 'noMoreHistory': return 'There is no further history';
			case 'startMessaging': return 'Start a new chat';
			case 'nUsersRead': return 'read by {n}';
			case 'agreeTo': return 'I agree to {x}';
			case 'agree': return 'Agree';
			case 'agreeBelow': return 'I agree to the below';
			case 'basicNotesBeforeCreateAccount': return 'Important notes';
			case 'termsOfService': return 'Terms of Service';
			case 'start': return 'Begin';
			case 'home': return 'Home';
			case 'remoteUserCaution': return 'As this user is from a remote instance, the shown information may be incomplete.';
			case 'activity': return 'Activity';
			case 'images': return 'Images';
			case 'image': return 'Image';
			case 'birthday': return 'Birthday';
			case 'yearsOld': return '{age} years old';
			case 'registeredDate': return 'Joined on';
			case 'location': return 'Location';
			case 'theme': return 'Themes';
			case 'themeForLightMode': return 'Theme to use in Light Mode';
			case 'themeForDarkMode': return 'Theme to use in Dark Mode';
			case 'light': return 'Light';
			case 'dark': return 'Dark';
			case 'lightThemes': return 'Light themes';
			case 'darkThemes': return 'Dark themes';
			case 'syncDeviceDarkMode': return 'Sync Dark Mode with your device settings';
			case 'drive': return 'Drive';
			case 'fileName': return 'Filename';
			case 'selectFile': return 'Select a file';
			case 'selectFiles': return 'Select files';
			case 'selectFolder': return 'Select a folder';
			case 'selectFolders': return 'Select folders';
			case 'renameFile': return 'Rename file';
			case 'folderName': return 'Folder name';
			case 'createFolder': return 'Create a folder';
			case 'renameFolder': return 'Rename this folder';
			case 'deleteFolder': return 'Delete this folder';
			case 'addFile': return 'Add a file';
			case 'emptyDrive': return 'Your Drive is empty';
			case 'emptyFolder': return 'This folder is empty';
			case 'unableToDelete': return 'Unable to delete';
			case 'inputNewFileName': return 'Enter a new filename';
			case 'inputNewDescription': return 'Enter new caption';
			case 'inputNewFolderName': return 'Enter a new folder name';
			case 'circularReferenceFolder': return 'The destination folder is a subfolder of the folder you wish to move.';
			case 'hasChildFilesOrFolders': return 'Since this folder is not empty, it can not be deleted.';
			case 'copyUrl': return 'Copy URL';
			case 'rename': return 'Rename';
			case 'avatar': return 'Avatar';
			case 'banner': return 'Banner';
			case 'nsfw': return 'NSFW';
			case 'whenServerDisconnected': return 'When losing connection to the server';
			case 'disconnectedFromServer': return 'Connection to server has been lost';
			case 'reload': return 'Refresh';
			case 'doNothing': return 'Ignore';
			case 'reloadConfirm': return 'Would you like to refresh the timeline?';
			case 'watch': return 'Watch';
			case 'unwatch': return 'Stop watching';
			case 'accept': return 'Accept';
			case 'reject': return 'Reject';
			case 'normal': return 'Normal';
			case 'instanceName': return 'Instance name';
			case 'instanceDescription': return 'Instance description';
			case 'maintainerName': return 'Maintainer';
			case 'maintainerEmail': return 'Maintainer email';
			case 'tosUrl': return 'Terms of Service URL';
			case 'thisYear': return 'Year';
			case 'thisMonth': return 'Month';
			case 'today': return 'Today';
			case 'dayX': return '{day}';
			case 'monthX': return '{month}';
			case 'yearX': return '{year}';
			case 'pages': return 'Pages';
			case 'integration': return 'Integration';
			case 'connectService': return 'Connect';
			case 'disconnectService': return 'Disconnect';
			case 'enableLocalTimeline': return 'Enable local timeline';
			case 'enableGlobalTimeline': return 'Enable global timeline';
			case 'disablingTimelinesInfo': return 'Adminstrators and Moderators will always have access to all timelines, even if they are not enabled.';
			case 'registration': return 'Register';
			case 'enableRegistration': return 'Enable new user registration';
			case 'invite': return 'Invite';
			case 'driveCapacityPerLocalAccount': return 'Drive capacity per local user';
			case 'driveCapacityPerRemoteAccount': return 'Drive capacity per remote user';
			case 'inMb': return 'In megabytes';
			case 'iconUrl': return 'Icon URL';
			case 'bannerUrl': return 'Banner image URL';
			case 'backgroundImageUrl': return 'Background image URL';
			case 'basicInfo': return 'Basic info';
			case 'pinnedUsers': return 'Pinned users';
			case 'pinnedUsersDescription': return 'List usernames separated by line breaks to be pinned in the "Explore" tab.';
			case 'pinnedPages': return 'Pinned Pages';
			case 'pinnedPagesDescription': return 'Enter the paths of the Pages you want to pin to the top page of this instance, separated by line breaks.';
			case 'pinnedClipId': return 'ID of the clip to pin';
			case 'pinnedNotes': return 'Pinned notes';
			case 'hcaptcha': return 'hCaptcha';
			case 'enableHcaptcha': return 'Enable hCaptcha';
			case 'hcaptchaSiteKey': return 'Site key';
			case 'hcaptchaSecretKey': return 'Secret key';
			case 'recaptcha': return 'reCAPTCHA';
			case 'enableRecaptcha': return 'Enable reCAPTCHA';
			case 'recaptchaSiteKey': return 'Site key';
			case 'recaptchaSecretKey': return 'Secret key';
			case 'turnstile': return 'Turnstile';
			case 'enableTurnstile': return 'Enable Turnstile';
			case 'turnstileSiteKey': return 'Site key';
			case 'turnstileSecretKey': return 'Secret key';
			case 'avoidMultiCaptchaConfirm': return 'Using multiple Captcha systems may cause interference between them. Would you like to disable the other Captcha systems currently active? If you would like them to stay enabled, press cancel.';
			case 'antennas': return 'Antennas';
			case 'manageAntennas': return 'Manage Antennas';
			case 'name': return 'Name';
			case 'antennaSource': return 'Antenna source';
			case 'antennaKeywords': return 'Keywords to listen to';
			case 'antennaExcludeKeywords': return 'Keywords to exclude';
			case 'antennaKeywordsDescription': return 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
			case 'notifyAntenna': return 'Notify about new notes';
			case 'withFileAntenna': return 'Only notes with files';
			case 'enableServiceworker': return 'Enable Push-Notifications for your Browser';
			case 'antennaUsersDescription': return 'List one username per line';
			case 'caseSensitive': return 'Case sensitive';
			case 'withReplies': return 'Include replies';
			case 'connectedTo': return 'Following account(s) are connected';
			case 'notesAndReplies': return 'Notes and replies';
			case 'withFiles': return 'Including files';
			case 'silence': return 'Silence';
			case 'silenceConfirm': return 'Are you sure that you want to silence this user?';
			case 'unsilence': return 'Undo silencing';
			case 'unsilenceConfirm': return 'Are you sure that you want to undo the silencing of this user?';
			case 'popularUsers': return 'Popular users';
			case 'recentlyUpdatedUsers': return 'Recently active users';
			case 'recentlyRegisteredUsers': return 'Newly joined users';
			case 'recentlyDiscoveredUsers': return 'Newly discovered users';
			case 'exploreUsersCount': return 'There are {count} users';
			case 'exploreFediverse': return 'Explore the Fediverse';
			case 'popularTags': return 'Popular tags';
			case 'userList': return 'Lists';
			case 'about': return 'About';
			case 'aboutMisskey': return 'About Misskey';
			case 'administrator': return 'Administrator';
			case 'token': return 'Token';
			case 'twofa': return 'Two-factor authentication';
			case 'totp': return 'Authenticator App';
			case 'totpDescription': return 'Use an authenticator app to enter one-time passwords';
			case 'moderator': return 'Moderator';
			case 'moderation': return 'Moderation';
			case 'nUsersMentioned': return 'Mentioned by {n} users';
			case 'securityKeyAndPasskey': return 'Security- and passkeys';
			case 'securityKey': return 'Security key';
			case 'lastUsed': return 'Last used';
			case 'lastUsedAt': return 'Last used: {t}';
			case 'unregister': return 'Unregister';
			case 'passwordLessLogin': return 'Password-less login';
			case 'passwordLessLoginDescription': return 'Allows password-less login using a security- or passkey only';
			case 'resetPassword': return 'Reset password';
			case 'newPasswordIs': return 'The new password is "{password}"';
			case 'reduceUiAnimation': return 'Reduce UI animations';
			case 'share': return 'Share';
			case 'notFound': return 'Not found';
			case 'notFoundDescription': return 'No page corresponding to this URL could be found.';
			case 'uploadFolder': return 'Default folder for uploads';
			case 'cacheClear': return 'Clear cache';
			case 'markAsReadAllNotifications': return 'Mark all notifications as read';
			case 'markAsReadAllUnreadNotes': return 'Mark all notes as read';
			case 'markAsReadAllTalkMessages': return 'Mark all messages as read';
			case 'help': return 'Help';
			case 'inputMessageHere': return 'Enter message here';
			case 'close': return 'Close';
			case 'invites': return 'Invites';
			case 'members': return 'Members';
			case 'transfer': return 'Transfer';
			case 'title': return 'Title';
			case 'text': return 'Text';
			case 'enable': return 'Enable';
			case 'next': return 'Next';
			case 'retype': return 'Enter again';
			case 'noteOf': return 'Note by {user}';
			case 'quoteAttached': return 'Quote';
			case 'quoteQuestion': return 'Append as quote?';
			case 'noMessagesYet': return 'No messages yet';
			case 'newMessageExists': return 'There are new messages';
			case 'onlyOneFileCanBeAttached': return 'You can only attach one file to a message';
			case 'signinRequired': return 'Please register or sign in before continuing';
			case 'invitations': return 'Invites';
			case 'invitationCode': return 'Invitation code';
			case 'checking': return 'Checking...';
			case 'available': return 'Available';
			case 'unavailable': return 'Not available';
			case 'usernameInvalidFormat': return 'You can use upper- and lowercase letters, numbers, and underscores.';
			case 'tooShort': return 'Too short';
			case 'tooLong': return 'Too long';
			case 'weakPassword': return 'Weak password';
			case 'normalPassword': return 'Average password';
			case 'strongPassword': return 'Strong password';
			case 'passwordMatched': return 'Matches';
			case 'passwordNotMatched': return 'Does not match';
			case 'signinWith': return 'Sign in with {x}';
			case 'signinFailed': return 'Unable to sign in. The entered username or password is incorrect.';
			case 'or': return 'Or';
			case 'language': return 'Language';
			case 'uiLanguage': return 'User interface language';
			case 'aboutX': return 'About {x}';
			case 'emojiStyle': return 'Emoji style';
			case 'native': return 'Native';
			case 'disableDrawer': return 'Don\'t use drawer-style menus';
			case 'showNoteActionsOnlyHover': return 'Only show note actions on hover';
			case 'noHistory': return 'No history available';
			case 'signinHistory': return 'Login history';
			case 'enableAdvancedMfm': return 'Enable advanced MFM';
			case 'enableAnimatedMfm': return 'Enable animated MFM';
			case 'doing': return 'Processing...';
			case 'category': return 'Category';
			case 'tags': return 'Aliases';
			case 'docSource': return 'Source of this document';
			case 'createAccount': return 'Create account';
			case 'existingAccount': return 'Existing account';
			case 'regenerate': return 'Regenerate';
			case 'fontSize': return 'Font size';
			case 'mediaListWithOneImageAppearance': return 'Height of media lists with one image only';
			case 'limitTo': return 'Limit to {x}';
			case 'noFollowRequests': return 'You don\'t have any pending follow requests';
			case 'openImageInNewTab': return 'Open images in new tab';
			case 'dashboard': return 'Dashboard';
			case 'local': return 'Local';
			case 'remote': return 'Remote';
			case 'total': return 'Total';
			case 'weekOverWeekChanges': return 'Changes to last week';
			case 'dayOverDayChanges': return 'Changes to yesterday';
			case 'appearance': return 'Appearance';
			case 'clientSettings': return 'Client Settings';
			case 'accountSettings': return 'Account Settings';
			case 'promotion': return 'Promoted';
			case 'promote': return 'Promote';
			case 'numberOfDays': return 'Number of days';
			case 'hideThisNote': return 'Hide this note';
			case 'showFeaturedNotesInTimeline': return 'Show featured notes in timelines';
			case 'objectStorage': return 'Object Storage';
			case 'useObjectStorage': return 'Use object storage';
			case 'objectStorageBaseUrl': return 'Base URL';
			case 'objectStorageBaseUrlDesc': return 'The URL used as reference. Specify the URL of your CDN or Proxy if you are using either.\nFor S3 use \'https://<bucket>.s3.amazonaws.com\' and for GCS or equivalent services use \'https://storage.googleapis.com/<bucket>\', etc.';
			case 'objectStorageBucket': return 'Bucket';
			case 'objectStorageBucketDesc': return 'Please specify the bucket name used at your provider.';
			case 'objectStoragePrefix': return 'Prefix';
			case 'objectStoragePrefixDesc': return 'Files will be stored under directories with this prefix.';
			case 'objectStorageEndpoint': return 'Endpoint';
			case 'objectStorageEndpointDesc': return 'Leave this empty if you are using AWS S3, otherwise specify the endpoint as \'<host>\' or \'<host>:<port>\', depending on the service you are using.';
			case 'objectStorageRegion': return 'Region';
			case 'objectStorageRegionDesc': return 'Specify a region like \'xx-east-1\'. If your service does not distinguish between regions, enter \'us-east-1\'. Leave empty if using AWS configuration files or environment variables.';
			case 'objectStorageUseSSL': return 'Use SSL';
			case 'objectStorageUseSSLDesc': return 'Turn this off if you are not going to use HTTPS for API connections';
			case 'objectStorageUseProxy': return 'Connect over Proxy';
			case 'objectStorageUseProxyDesc': return 'Turn this off if you are not going to use a Proxy for API connections';
			case 'objectStorageSetPublicRead': return 'Set "public-read" on upload';
			case 's3ForcePathStyleDesc': return 'If s3ForcePathStyle is enabled, the bucket name has to included in the path of the URL as opposed to the hostname of the URL. You may need to enable this setting when using services such as a self-hosted Minio instance.';
			case 'serverLogs': return 'Server logs';
			case 'deleteAll': return 'Delete all';
			case 'showFixedPostForm': return 'Display the posting form at the top of the timeline';
			case 'showFixedPostFormInChannel': return 'Display the posting form at the top of the timeline (Channels)';
			case 'newNoteRecived': return 'There are new notes';
			case 'sounds': return 'Sounds';
			case 'sound': return 'Sounds';
			case 'listen': return 'Listen';
			case 'none': return 'None';
			case 'showInPage': return 'Show in page';
			case 'popout': return 'Pop-out';
			case 'volume': return 'Volume';
			case 'masterVolume': return 'Master volume';
			case 'details': return 'Details';
			case 'chooseEmoji': return 'Select an emoji';
			case 'unableToProcess': return 'The operation could not be completed';
			case 'recentUsed': return 'Recently used';
			case 'install': return 'Install';
			case 'uninstall': return 'Uninstall';
			case 'installedApps': return 'Authorized Applications';
			case 'nothing': return 'There\'s nothing to see here';
			case 'installedDate': return 'Authorized at';
			case 'lastUsedDate': return 'Last used at';
			case 'state': return 'State';
			case 'sort': return 'Sorting order';
			case 'ascendingOrder': return 'Ascending';
			case 'descendingOrder': return 'Descending';
			case 'scratchpad': return 'Scratchpad';
			case 'scratchpadDescription': return 'The Scratchpad provides an environment for AiScript experiments. You can write, execute, and check the results of it interacting with Misskey in it.';
			case 'output': return 'Output';
			case 'script': return 'Script';
			case 'disablePagesScript': return 'Disable AiScript on Pages';
			case 'updateRemoteUser': return 'Update remote user information';
			case 'deleteAllFiles': return 'Delete all files';
			case 'deleteAllFilesConfirm': return 'Are you sure that you want to delete all files?';
			case 'removeAllFollowing': return 'Unfollow all followed users';
			case 'removeAllFollowingDescription': return 'Executing this unfollows all accounts from {host}. Please run this if the instance e.g. no longer exists.';
			case 'userSuspended': return 'This user has been suspended.';
			case 'userSilenced': return 'This user is being silenced.';
			case 'yourAccountSuspendedTitle': return 'This account is suspended';
			case 'yourAccountSuspendedDescription': return 'This account has been suspended due to breaking the server\'s terms of services or similar. Contact the administrator if you would like to know a more detailed reason. Please do not create a new account.';
			case 'tokenRevoked': return 'Invalid token';
			case 'tokenRevokedDescription': return 'This token has expired. Please log in again.';
			case 'accountDeleted': return 'Account deleted';
			case 'accountDeletedDescription': return 'This account has been deleted.';
			case 'menu': return 'Menu';
			case 'divider': return 'Divider';
			case 'addItem': return 'Add Item';
			case 'rearrange': return 'Rearrange';
			case 'relays': return 'Relays';
			case 'addRelay': return 'Add Relay';
			case 'inboxUrl': return 'Inbox URL';
			case 'addedRelays': return 'Added Relays';
			case 'serviceworkerInfo': return 'Must be enabled for push notifications.';
			case 'deletedNote': return 'Deleted note';
			case 'invisibleNote': return 'Invisible note';
			case 'enableInfiniteScroll': return 'Automatically load more';
			case 'visibility': return 'Visiblility';
			case 'poll': return 'Poll';
			case 'useCw': return 'Hide content';
			case 'enablePlayer': return 'Open video player';
			case 'disablePlayer': return 'Close video player';
			case 'expandTweet': return 'Expand tweet';
			case 'themeEditor': return 'Theme editor';
			case 'description': return 'Description';
			case 'describeFile': return 'Add caption';
			case 'enterFileDescription': return 'Enter caption';
			case 'author': return 'Author';
			case 'leaveConfirm': return 'There are unsaved changes. Do you want to discard them?';
			case 'manage': return 'Management';
			case 'plugins': return 'Plugins';
			case 'preferencesBackups': return 'Preference backups';
			case 'deck': return 'Deck';
			case 'undeck': return 'Leave Deck';
			case 'useBlurEffectForModal': return 'Use blur effect for modals';
			case 'useFullReactionPicker': return 'Use full-size reaction picker';
			case 'width': return 'Width';
			case 'height': return 'Height';
			case 'large': return 'Big';
			case 'medium': return 'Medium';
			case 'small': return 'Small';
			case 'generateAccessToken': return 'Generate access token';
			case 'permission': return 'Permissions';
			case 'enableAll': return 'Enable all';
			case 'disableAll': return 'Disable all';
			case 'tokenRequested': return 'Grant access to account';
			case 'pluginTokenRequestedDescription': return 'This plugin will be able to use the permissions set here.';
			case 'notificationType': return 'Notification type';
			case 'edit': return 'Edit';
			case 'emailServer': return 'Email server';
			case 'enableEmail': return 'Enable email distribution';
			case 'emailConfigInfo': return 'Used to confirm your email during sign-up or if you forget your password';
			case 'email': return 'Email';
			case 'emailAddress': return 'Email address';
			case 'smtpConfig': return 'SMTP Server Configuration';
			case 'smtpHost': return 'Host';
			case 'smtpPort': return 'Port';
			case 'smtpUser': return 'Username';
			case 'smtpPass': return 'Password';
			case 'emptyToDisableSmtpAuth': return 'Leave username and password empty to disable SMTP verification';
			case 'smtpSecure': return 'Use implicit SSL/TLS for SMTP connections';
			case 'smtpSecureInfo': return 'Turn this off when using STARTTLS';
			case 'testEmail': return 'Test email delivery';
			case 'wordMute': return 'Word mute';
			case 'regexpError': return 'Regular Expression error';
			case 'regexpErrorDescription': return 'An error occurred in the regular expression on line {line} of your {tab} word mutes:';
			case 'instanceMute': return 'Instance Mutes';
			case 'userSaysSomething': return '{name} said something';
			case 'makeActive': return 'Activate';
			case 'display': return 'Display';
			case 'copy': return 'Copy';
			case 'metrics': return 'Metrics';
			case 'overview': return 'Overview';
			case 'logs': return 'Logs';
			case 'delayed': return 'Delayed';
			case 'database': return 'Database';
			case 'channel': return 'Channels';
			case 'create': return 'Create';
			case 'notificationSetting': return 'Notification settings';
			case 'notificationSettingDesc': return 'Select the types of notification to display.';
			case 'useGlobalSetting': return 'Use global settings';
			case 'useGlobalSettingDesc': return 'If turned on, your account\'s notification settings will be used. If turned off, individual configurations can be made.';
			case 'other': return 'Other';
			case 'regenerateLoginToken': return 'Regenerate login token';
			case 'regenerateLoginTokenDescription': return 'Regenerates the token used internally during login. Normally this action is not necessary. If regenerated, all devices will be logged out.';
			case 'setMultipleBySeparatingWithSpace': return 'Separate multiple entries with spaces.';
			case 'fileIdOrUrl': return 'File ID or URL';
			case 'behavior': return 'Behavior';
			case 'sample': return 'Sample';
			case 'abuseReports': return 'Reports';
			case 'reportAbuse': return 'Report';
			case 'reportAbuseOf': return 'Report {name}';
			case 'fillAbuseReportDescription': return 'Please fill in details regarding this report. If it is about a specific note, please include its URL.';
			case 'abuseReported': return 'Your report has been sent. Thank you very much.';
			case 'reporter': return 'Reporter';
			case 'reporteeOrigin': return 'Reportee Origin';
			case 'reporterOrigin': return 'Reporter Origin';
			case 'forwardReport': return 'Forward report to remote instance';
			case 'forwardReportIsAnonymous': return 'Instead of your account, an anonymous system account will be displayed as reporter at the remote instance.';
			case 'send': return 'Send';
			case 'abuseMarkAsResolved': return 'Mark report as resolved';
			case 'openInNewTab': return 'Open in new tab';
			case 'openInSideView': return 'Open in side view';
			case 'defaultNavigationBehaviour': return 'Default navigation behavior';
			case 'editTheseSettingsMayBreakAccount': return 'Editing these settings may damage your account.';
			case 'instanceTicker': return 'Instance information of notes';
			case 'waitingFor': return 'Waiting for {x}';
			case 'random': return 'Random';
			case 'system': return 'System';
			case 'switchUi': return 'Switch UI';
			case 'desktop': return 'Desktop';
			case 'clip': return 'Clip';
			case 'createNew': return 'Create new';
			case 'optional': return 'Optional';
			case 'createNewClip': return 'Create new clip';
			case 'unclip': return 'Unclip';
			case 'confirmToUnclipAlreadyClippedNote': return 'This note is already part of the "{name}" clip. Do you want to remove it from this clip instead?';
			case 'public': return 'Public';
			case 'i18nInfo': return 'Misskey is being translated into various languages by volunteers. You can help at {link}.';
			case 'manageAccessTokens': return 'Manage access tokens';
			case 'accountInfo': return 'Account Info';
			case 'notesCount': return 'Number of notes';
			case 'repliesCount': return 'Number of replies sent';
			case 'renotesCount': return 'Number of renotes sent';
			case 'repliedCount': return 'Number of replies received';
			case 'renotedCount': return 'Number of renotes received';
			case 'followingCount': return 'Number of followed accounts';
			case 'followersCount': return 'Number of followers';
			case 'sentReactionsCount': return 'Number of sent reactions';
			case 'receivedReactionsCount': return 'Number of received reactions';
			case 'pollVotesCount': return 'Number of sent poll votes';
			case 'pollVotedCount': return 'Number of received poll votes';
			case 'yes': return 'Yes';
			case 'no': return 'No';
			case 'driveFilesCount': return 'Number of Drive files';
			case 'driveUsage': return 'Drive space usage';
			case 'noCrawle': return 'Reject crawler indexing';
			case 'noCrawleDescription': return 'Ask search engines to not index your profile page, notes, Pages, etc.';
			case 'lockedAccountInfo': return 'Unless you set your note visiblity to "Followers only", your notes will be visible to anyone, even if you require followers to be manually approved.';
			case 'alwaysMarkSensitive': return 'Mark as NSFW by default';
			case 'loadRawImages': return 'Load original images instead of showing thumbnails';
			case 'disableShowingAnimatedImages': return 'Don\'t play animated images';
			case 'verificationEmailSent': return 'A verification email has been sent. Please follow the included link to complete verification.';
			case 'notSet': return 'Not set';
			case 'emailVerified': return 'Email has been verified';
			case 'noteFavoritesCount': return 'Number of favorite notes';
			case 'pageLikesCount': return 'Number of liked Pages';
			case 'pageLikedCount': return 'Number of received Page likes';
			case 'contact': return 'Contact';
			case 'useSystemFont': return 'Use the system\'s default font';
			case 'clips': return 'Clips';
			case 'experimentalFeatures': return 'Experimental features';
			case 'experimental': return 'Experimental';
			case 'thisIsExperimentalFeature': return 'This is an experimental feature. Its functionality is subject to change, and it may not operate as intended.';
			case 'developer': return 'Developer';
			case 'makeExplorable': return 'Make account visible in "Explore"';
			case 'makeExplorableDescription': return 'If you turn this off, your account will not show up in the "Explore" section.';
			case 'showGapBetweenNotesInTimeline': return 'Show a gap between posts on the timeline';
			case 'duplicate': return 'Duplicate';
			case 'left': return 'Left';
			case 'center': return 'Center';
			case 'wide': return 'Wide';
			case 'narrow': return 'Narrow';
			case 'reloadToApplySetting': return 'This setting will only apply after a page reload. Reload now?';
			case 'needReloadToApply': return 'A reload is required for this to be reflected.';
			case 'showTitlebar': return 'Show title bar';
			case 'clearCache': return 'Clear cache';
			case 'onlineUsersCount': return '{n} users are online';
			case 'nUsers': return '{n} Users';
			case 'nNotes': return '{n} Notes';
			case 'sendErrorReports': return 'Send error reports';
			case 'sendErrorReportsDescription': return 'When turned on, detailed error information will be shared with Misskey when a problem occurs, helping to improve the quality of Misskey.\nThis will include information such the version of your OS, what browser you\'re using, your activity in Misskey, etc.';
			case 'myTheme': return 'My theme';
			case 'backgroundColor': return 'Background color';
			case 'accentColor': return 'Accent color';
			case 'textColor': return 'Text color';
			case 'saveAs': return 'Save as...';
			case 'advanced': return 'Advanced';
			case 'advancedSettings': return 'Advanced settings';
			case 'value': return 'Value';
			case 'createdAt': return 'Created at';
			case 'updatedAt': return 'Updated at';
			case 'saveConfirm': return 'Save changes?';
			case 'deleteConfirm': return 'Really delete?';
			case 'invalidValue': return 'Invalid value.';
			case 'registry': return 'Registry';
			case 'closeAccount': return 'Close account';
			case 'currentVersion': return 'Current version';
			case 'latestVersion': return 'Newest version';
			case 'youAreRunningUpToDateClient': return 'You are using the newest version of your client.';
			case 'newVersionOfClientAvailable': return 'There is a newer version of your client available.';
			case 'usageAmount': return 'Usage';
			case 'capacity': return 'Capacity';
			case 'inUse': return 'Used';
			case 'editCode': return 'Edit code';
			case 'apply': return 'Apply';
			case 'receiveAnnouncementFromInstance': return 'Receive notifications from this instance';
			case 'emailNotification': return 'Email notifications';
			case 'publish': return 'Publish';
			case 'inChannelSearch': return 'Search in channel';
			case 'useReactionPickerForContextMenu': return 'Open reaction picker on right-click';
			case 'typingUsers': return '{users} is/are typing...';
			case 'jumpToSpecifiedDate': return 'Jump to specific date';
			case 'showingPastTimeline': return 'Currently displaying an old timeline';
			case 'clear': return 'Return';
			case 'markAllAsRead': return 'Mark all as read';
			case 'goBack': return 'Back';
			case 'unlikeConfirm': return 'Really remove your like?';
			case 'fullView': return 'Full view';
			case 'quitFullView': return 'Exit full view';
			case 'addDescription': return 'Add description';
			case 'userPagePinTip': return 'You can display notes here by selecting "Pin to profile" from the menu of individual notes.';
			case 'notSpecifiedMentionWarning': return 'This note contains mentions of users not included as recipients';
			case 'info': return 'About';
			case 'userInfo': return 'User information';
			case 'unknown': return 'Unknown';
			case 'onlineStatus': return 'Online status';
			case 'hideOnlineStatus': return 'Hide online status';
			case 'hideOnlineStatusDescription': return 'Hiding your online status reduces the convenience of some features such as the search.';
			case 'online': return 'Online';
			case 'active': return 'Active';
			case 'offline': return 'Offline';
			case 'notRecommended': return 'Not recommended';
			case 'botProtection': return 'Bot Protection';
			case 'instanceBlocking': return 'Blocked Instances';
			case 'selectAccount': return 'Select account';
			case 'switchAccount': return 'Switch account';
			case 'enabled': return 'Enabled';
			case 'disabled': return 'Disabled';
			case 'quickAction': return 'Quick actions';
			case 'user': return 'User';
			case 'administration': return 'Management';
			case 'accounts': return 'Accounts';
			case 'switch_': return 'Switch';
			case 'noMaintainerInformationWarning': return 'Maintainer information is not configured.';
			case 'noBotProtectionWarning': return 'Bot protection is not configured.';
			case 'configure': return 'Configure';
			case 'postToGallery': return 'Create new gallery post';
			case 'postToHashtag': return 'Post to this hashtag';
			case 'gallery': return 'Gallery';
			case 'recentPosts': return 'Recent posts';
			case 'popularPosts': return 'Popular posts';
			case 'shareWithNote': return 'Share with note';
			case 'ads': return 'Advertisements';
			case 'expiration': return 'Deadline';
			case 'startingperiod': return 'Start';
			case 'memo': return 'Memo';
			case 'priority': return 'Priority';
			case 'high': return 'High';
			case 'middle': return 'Medium';
			case 'low': return 'Low';
			case 'emailNotConfiguredWarning': return 'Email address not set.';
			case 'ratio': return 'Ratio';
			case 'previewNoteText': return 'Show preview';
			case 'customCss': return 'Custom CSS';
			case 'customCssWarn': return 'This setting should only be used if you know what it does. Entering improper values may cause the client to stop functioning normally.';
			case 'global': return 'Global';
			case 'squareAvatars': return 'Display squared avatars';
			case 'sent': return 'Sent';
			case 'received': return 'Received';
			case 'searchResult': return 'Search results';
			case 'hashtags': return 'Hashtags';
			case 'troubleshooting': return 'Troubleshooting';
			case 'useBlurEffect': return 'Use blur effects in the UI';
			case 'learnMore': return 'Learn more';
			case 'misskeyUpdated': return 'Misskey has been updated!';
			case 'whatIsNew': return 'Show changes';
			case 'translate': return 'Translate';
			case 'translatedFrom': return 'Translated from {x}';
			case 'accountDeletionInProgress': return 'Account deletion is currently in progress';
			case 'usernameInfo': return 'A name that identifies your account from others on this server.  You can use the alphabet (a~z, A~Z), digits (0~9) or underscores (_). Usernames cannot be changed later.';
			case 'aiChanMode': return 'Ai Mode';
			case 'devMode': return 'Developer mode';
			case 'keepCw': return 'Keep content warnings';
			case 'pubSub': return 'Pub/Sub Accounts';
			case 'lastCommunication': return 'Last communication';
			case 'resolved': return 'Resolved';
			case 'unresolved': return 'Unresolved';
			case 'breakFollow': return 'Remove follower';
			case 'breakFollowConfirm': return 'Really remove this follower?';
			case 'itsOn': return 'Enabled';
			case 'itsOff': return 'Disabled';
			case 'on': return 'On';
			case 'off': return 'Off';
			case 'emailRequiredForSignup': return 'Require email address for sign-up';
			case 'unread': return 'Unread';
			case 'filter': return 'Filter';
			case 'controlPanel': return 'Control Panel';
			case 'manageAccounts': return 'Manage Accounts';
			case 'makeReactionsPublic': return 'Set reaction history to public';
			case 'makeReactionsPublicDescription': return 'This will make the list of all your past reactions publicly visible.';
			case 'classic': return 'Classic';
			case 'muteThread': return 'Mute thread';
			case 'unmuteThread': return 'Unmute thread';
			case 'ffVisibility': return 'Follows/Followers Visibility';
			case 'ffVisibilityDescription': return 'Allows you to configure who can see who you follow and who follows you.';
			case 'continueThread': return 'View thread continuation';
			case 'deleteAccountConfirm': return 'This will irreversibly delete your account. Proceed?';
			case 'incorrectPassword': return 'Incorrect password.';
			case 'voteConfirm': return 'Confirm your vote for "{choice}"?';
			case 'hide': return 'Hide';
			case 'useDrawerReactionPickerForMobile': return 'Display reaction picker as drawer on mobile';
			case 'welcomeBackWithName': return 'Welcome back, {name}';
			case 'clickToFinishEmailVerification': return 'Please click [{ok}] to complete email verification.';
			case 'overridedDeviceKind': return 'Device type';
			case 'smartphone': return 'Smartphone';
			case 'tablet': return 'Tablet';
			case 'auto': return 'Auto';
			case 'themeColor': return 'Instance Ticker Color';
			case 'size': return 'Size';
			case 'numberOfColumn': return 'Number of columns';
			case 'searchByGoogle': return 'Search';
			case 'instanceDefaultLightTheme': return 'Instance-wide default light theme';
			case 'instanceDefaultDarkTheme': return 'Instance-wide default dark theme';
			case 'instanceDefaultThemeDescription': return 'Enter the theme code in object format.';
			case 'mutePeriod': return 'Mute duration';
			case 'period': return 'Time limit';
			case 'indefinitely': return 'Permanently';
			case 'tenMinutes': return '10 minutes';
			case 'oneHour': return 'One hour';
			case 'oneDay': return 'One day';
			case 'oneWeek': return 'One week';
			case 'oneMonth': return 'One month';
			case 'reflectMayTakeTime': return 'It may take some time for this to be reflected.';
			case 'failedToFetchAccountInformation': return 'Could not fetch account information';
			case 'rateLimitExceeded': return 'Rate limit exceeded';
			case 'cropImage': return 'Crop image';
			case 'cropImageAsk': return 'Do you want to crop this image?';
			case 'cropYes': return 'Crop';
			case 'cropNo': return 'Use as-is';
			case 'file': return 'File';
			case 'recentNHours': return 'Last {n} hours';
			case 'recentNDays': return 'Last {n} days';
			case 'noEmailServerWarning': return 'Email server not configured.';
			case 'thereIsUnresolvedAbuseReportWarning': return 'There are unsolved reports.';
			case 'recommended': return 'Recommended';
			case 'check': return 'Check';
			case 'driveCapOverrideLabel': return 'Change the drive capacity for this user';
			case 'driveCapOverrideCaption': return 'Reset the capacity to default by inputting a value of 0 or lower.';
			case 'requireAdminForView': return 'You must log in with an administrator account to view this.';
			case 'isSystemAccount': return 'An account created and automatically operated by the system.';
			case 'typeToConfirm': return 'Please enter {x} to confirm';
			case 'deleteAccount': return 'Delete account';
			case 'document': return 'Documentation';
			case 'numberOfPageCache': return 'Number of cached pages';
			case 'numberOfPageCacheDescription': return 'Increasing this number will improve convenience for users but cause more server load as well as more memory to be used.';
			case 'logoutConfirm': return 'Really log out?';
			case 'lastActiveDate': return 'Last used at';
			case 'statusbar': return 'Status bar';
			case 'pleaseSelect': return 'Select an option';
			case 'reverse': return 'Reverse';
			case 'colored': return 'Colored';
			case 'refreshInterval': return 'Update interval ';
			case 'label': return 'Label';
			case 'type': return 'Type';
			case 'speed': return 'Speed';
			case 'slow': return 'Slow';
			case 'fast': return 'Fast';
			case 'sensitiveMediaDetection': return 'Detection of NSFW media';
			case 'localOnly': return 'Local only';
			case 'remoteOnly': return 'Remote only';
			case 'failedToUpload': return 'Upload failed';
			case 'cannotUploadBecauseInappropriate': return 'This file could not be uploaded because parts of it have been detected as potentially NSFW.';
			case 'cannotUploadBecauseNoFreeSpace': return 'Upload failed due to lack of Drive capacity.';
			case 'cannotUploadBecauseExceedsFileSizeLimit': return 'This file cannot be uploaded as it exceeds the file size limit.';
			case 'beta': return 'Beta';
			case 'enableAutoSensitive': return 'Automatic NSFW-Marking';
			case 'enableAutoSensitiveDescription': return 'Allows automatic detection and marking of NSFW media through Machine Learning where possible. Even if this option is disabled, it may be enabled instance-wide.';
			case 'activeEmailValidationDescription': return 'Enables stricter validation of email addresses, which includes checking for disposable addresses and by whether it can actually be communicated with. When unchecked, only the format of the email is validated.';
			case 'navbar': return 'Navigation bar';
			case 'shuffle': return 'Shuffle';
			case 'account': return 'Account';
			case 'move': return 'Move';
			case 'pushNotification': return 'Push notifications';
			case 'subscribePushNotification': return 'Enable push notifications';
			case 'unsubscribePushNotification': return 'Disable push notifications';
			case 'pushNotificationAlreadySubscribed': return 'Push notifications are already enabled';
			case 'pushNotificationNotSupported': return 'Your browser or instance does not support push notifications';
			case 'sendPushNotificationReadMessage': return 'Delete push notifications once they have been read';
			case 'sendPushNotificationReadMessageCaption': return 'This may increase the power consumption of your device.';
			case 'windowMaximize': return 'Maximize';
			case 'windowMinimize': return 'Minimize';
			case 'windowRestore': return 'Restore';
			case 'caption': return 'Caption';
			case 'loggedInAsBot': return 'Currently logged in as bot';
			case 'tools': return 'Tools';
			case 'cannotLoad': return 'Unable to load';
			case 'numberOfProfileView': return 'Profile views';
			case 'like': return 'Like';
			case 'unlike': return 'Unlike';
			case 'numberOfLikes': return 'Likes';
			case 'show': return 'Show';
			case 'neverShow': return 'Don\'t show again';
			case 'remindMeLater': return 'Maybe later';
			case 'didYouLikeMisskey': return 'Have you taken a liking to Misskey?';
			case 'pleaseDonate': return '{host} uses the free software, Misskey. We would highly appreciate your donations so development of Misskey can continue!';
			case 'roles': return 'Roles';
			case 'role': return 'Role';
			case 'noRole': return 'Role not found';
			case 'normalUser': return 'Normal user';
			case 'undefined': return 'Undefined';
			case 'assign': return 'Assign';
			case 'unassign': return 'Unassign';
			case 'color': return 'Color';
			case 'manageCustomEmojis': return 'Manage Custom Emojis';
			case 'youCannotCreateAnymore': return 'You\'ve hit the creation limit.';
			case 'cannotPerformTemporary': return 'Temporarily unavailable';
			case 'cannotPerformTemporaryDescription': return 'This action cannot be performed temporarily due to exceeding the execution limit. Please wait for a while and then try again.';
			case 'invalidParamError': return 'Invalid parameters';
			case 'invalidParamErrorDescription': return 'The request parameters are invalid. This is normally caused by a bug, but may also be due to inputs exceeding size limits or similar.';
			case 'permissionDeniedError': return 'Operation denied';
			case 'permissionDeniedErrorDescription': return 'This account does not have the permission to perform this action.';
			case 'preset': return 'Preset';
			case 'selectFromPresets': return 'Choose from presets';
			case 'achievements': return 'Achievements';
			case 'gotInvalidResponseError': return 'Invalid server response';
			case 'gotInvalidResponseErrorDescription': return 'The server may be unreachable or undergoing maintenance. Please try again later.';
			case 'thisPostMayBeAnnoying': return 'This note may annoy others.';
			case 'thisPostMayBeAnnoyingHome': return 'Post to home timeline';
			case 'thisPostMayBeAnnoyingCancel': return 'Cancel';
			case 'thisPostMayBeAnnoyingIgnore': return 'Post anyway';
			case 'collapseRenotes': return 'Collapse renotes you\'ve already seen';
			case 'internalServerError': return 'Internal Server Error';
			case 'internalServerErrorDescription': return 'The server has run into an unexpected error.';
			case 'copyErrorInfo': return 'Copy error details';
			case 'joinThisServer': return 'Sign up at this instance';
			case 'exploreOtherServers': return 'Look for another instance';
			case 'letsLookAtTimeline': return 'Have a look at the timeline';
			case 'disableFederationConfirm': return 'Really disable federation?';
			case 'disableFederationConfirmWarn': return 'Even if defederated, posts will continue to be public unless set otherwise. You usually do not need to do this.';
			case 'disableFederationOk': return 'Disable';
			case 'invitationRequiredToRegister': return 'This instance is invite-only. You must enter a valid invite code sign up.';
			case 'emailNotSupported': return 'This instance does not support sending emails';
			case 'postToTheChannel': return 'Post to channel';
			case 'cannotBeChangedLater': return 'This cannot be changed later.';
			case 'reactionAcceptance': return 'Reaction Acceptance';
			case 'likeOnly': return 'Only likes';
			case 'likeOnlyForRemote': return 'Only likes for remote instances';
			case 'nonSensitiveOnly': return 'Non-sensitive only';
			case 'nonSensitiveOnlyForLocalLikeOnlyForRemote': return 'Non-sensitive only (Only likes from remote)';
			case 'rolesAssignedToMe': return 'Roles assigned to me';
			case 'resetPasswordConfirm': return 'Really reset your password?';
			case 'sensitiveWords': return 'Sensitive words';
			case 'sensitiveWordsDescription': return 'The visibility of all notes containing any of the configured words will be set to "Home" automatically. You can list multiple by separating them via line breaks.';
			case 'sensitiveWordsDescription2': return 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.';
			case 'notesSearchNotAvailable': return 'Note search is unavailable.';
			case 'license': return 'License';
			case 'unfavoriteConfirm': return 'Really remove from favorites?';
			case 'myClips': return 'My clips';
			case 'drivecleaner': return 'Drive Cleaner';
			case 'retryAllQueuesNow': return 'Retry running all queues';
			case 'retryAllQueuesConfirmTitle': return 'Really retry all?';
			case 'retryAllQueuesConfirmText': return 'This will temporarily increase the server load.';
			case 'enableChartsForRemoteUser': return 'Generate remote user data charts';
			case 'enableChartsForFederatedInstances': return 'Generate remote instance data charts';
			case 'showClipButtonInNoteFooter': return 'Add "Clip" to note action menu';
			case 'largeNoteReactions': return 'Enlargen displayed reactions';
			case 'noteIdOrUrl': return 'Note ID or URL';
			case 'video': return 'Video';
			case 'videos': return 'Videos';
			case 'dataSaver': return 'Data Saver';
			case 'accountMigration': return 'Account Migration';
			case 'accountMoved': return 'This user has moved to a new account:';
			case 'accountMovedShort': return 'This account has been migrated.';
			case 'operationForbidden': return 'Operation forbidden';
			case 'forceShowAds': return 'Always show ads';
			case 'addMemo': return 'Add memo';
			case 'editMemo': return 'Edit memo';
			case 'reactionsList': return 'Reactions';
			case 'renotesList': return 'Renotes';
			case 'notificationDisplay': return 'Notifications';
			case 'leftTop': return 'Top left';
			case 'rightTop': return 'Top right';
			case 'leftBottom': return 'Bottom left';
			case 'rightBottom': return 'Bottom right';
			case 'stackAxis': return 'Stacking direction';
			case 'vertical': return 'Vertical';
			case 'horizontal': return 'Horizontal';
			case 'position': return 'Position';
			case 'serverRules': return 'Server rules';
			case 'pleaseConfirmBelowBeforeSignup': return 'Please confirm the below before signing up.';
			case 'pleaseAgreeAllToContinue': return 'You must agree to all above fields to continue.';
			case 'continue_': return 'Continue';
			case 'preservedUsernames': return 'Reserved usernames';
			case 'preservedUsernamesDescription': return 'List usernames to reserve separated by linebreaks. These will become unable during normal account creation, but can be used by administrators to manually create accounts. Already existing accounts using these usernames will not be affected.';
			case 'createNoteFromTheFile': return 'Compose note from this file';
			case 'archive': return 'Archive';
			case 'channelArchiveConfirmTitle': return 'Really archive {name}?';
			case 'channelArchiveConfirmDescription': return 'An archived channel won\'t appear in the channel list or search results anymore. New posts can also not be added to it anymore.';
			case 'thisChannelArchived': return 'This channel has been archived.';
			case 'displayOfNote': return 'Note display';
			case 'initialAccountSetting': return 'Profile setup';
			case 'youFollowing': return 'Followed';
			case 'preventAiLearning': return 'Reject usage in Machine Learning (Generative AI)';
			case 'preventAiLearningDescription': return 'Requests crawlers to not use posted text or image material etc. in machine learning (Predictive / Generative AI) data sets. This is achieved by adding a "noai" HTML-Response flag to the respective content. A complete prevention can however not be achieved through this flag, as it may simply be ignored.';
			case 'options': return 'Options';
			case 'specifyUser': return 'Specific user';
			case 'failedToPreviewUrl': return 'Could not preview';
			case 'update': return 'Update';
			case 'rolesThatCanBeUsedThisEmojiAsReaction': return 'Roles that can use this emoji as reaction';
			case 'rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription': return 'If no roles are specified, anyone can use this emoji as reaction.';
			case 'rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn': return 'These roles must be public.';
			case 'cancelReactionConfirm': return 'Really delete your reaction?';
			case 'changeReactionConfirm': return 'Really change your reaction?';
			case 'later': return 'Later';
			case 'goToMisskey': return 'To Misskey';
			case 'additionalEmojiDictionary': return 'Additional emoji dictionaries';
			case 'installed': return 'Installed';
			case '_initialAccountSetting.accountCreated': return 'Your account was successfully created!';
			case '_initialAccountSetting.letsStartAccountSetup': return 'For starters, let\'s set up your profile.';
			case '_initialAccountSetting.letsFillYourProfile': return 'First, let\'s set up your profile.';
			case '_initialAccountSetting.profileSetting': return 'Profile settings';
			case '_initialAccountSetting.privacySetting': return 'Privacy settings';
			case '_initialAccountSetting.theseSettingsCanEditLater': return 'You can always change these settings later.';
			case '_initialAccountSetting.youCanEditMoreSettingsInSettingsPageLater': return 'There are many more settings you can configure from the "Settings" page. Be sure to visit it later.';
			case '_initialAccountSetting.followUsers': return 'Try following some users that interest you to build up your timeline.';
			case '_initialAccountSetting.pushNotificationDescription': return 'Enabling push notifications will allow you to receive notifications from {name} directly on your device.';
			case '_initialAccountSetting.initialAccountSettingCompleted': return 'Profile setup complete!';
			case '_initialAccountSetting.haveFun': return 'Enjoy {name}!';
			case '_initialAccountSetting.ifYouNeedLearnMore': return 'If you\'d like to learn more about how to use {name} (Misskey), please visit {link}.';
			case '_initialAccountSetting.skipAreYouSure': return 'Really skip profile setup?';
			case '_initialAccountSetting.laterAreYouSure': return 'Really do profile setup later?';
			case '_serverRules.description': return 'A set of rules to be displayed before registration. Setting a summary of the Terms of Service is recommended.';
			case '_accountMigration.moveFrom': return 'Migrate another account to this one';
			case '_accountMigration.moveFromSub': return 'Create alias to another account';
			case '_accountMigration.moveFromLabel': return 'Original Account #{n}';
			case '_accountMigration.moveFromDescription': return 'You must create an alias for the account to move from on this account.\nEnter the account to migrate from in the following format: @username@server.example.com\nTo delete the alias, leave the field empty (not recommended).';
			case '_accountMigration.moveTo': return 'Migrate this account to a different one';
			case '_accountMigration.moveToLabel': return 'Account to move to:';
			case '_accountMigration.moveCannotBeUndone': return 'Account migration cannot be undone.';
			case '_accountMigration.moveAccountDescription': return 'This will migrate your account to a different one.\n　・Followers from this account will automatically be migrated to the new account\n　・This account will unfollow all users it is currently following\n　・You will be unable to create new notes etc. on this account\n\nWhile migration of followers is automatic, you must manually prepare some steps to migrate the list of users you are following. To do so, carry out a follows export that you will later import on the new account in the settings menu. The same procedure applies to your lists as well as your muted and blocked users.\n\n(This explanation applies to Misskey v13.12.0 and later. Other ActivityPub software, such as Mastodon, might function differently.)';
			case '_accountMigration.moveAccountHowTo': return 'To migrate, first create an alias for this account on the account to move to.\nAfter you have created the alias, enter the account to move to in the following format: @username@server.example.com';
			case '_accountMigration.startMigration': return 'Migrate';
			case '_accountMigration.migrationConfirm': return 'Really migrate this account to {account}? Once started, this process cannot be stopped or taken back, and you will not be able to use this account in its original state anymore.';
			case '_accountMigration.movedAndCannotBeUndone': return '\nThis account has been migrated.\nMigration cannot be reversed.';
			case '_accountMigration.postMigrationNote': return 'This account will unfollow all accounts it is currently following 24 hours after migration finishes.\nBoth the number of follows and followers will then become zero. To avoid your followers from being unable to see followers only posts of this account, they will however continue following this account.';
			case '_accountMigration.movedTo': return 'Account to move to:';
			case '_achievements.earnedAt': return 'Unlocked at';
			case '_achievements._types._notes1.title': return 'just setting up my msky';
			case '_achievements._types._notes1.description': return 'Post your first note';
			case '_achievements._types._notes1.flavor': return 'Have a good time with Misskey!';
			case '_achievements._types._notes10.title': return 'Some notes';
			case '_achievements._types._notes10.description': return 'Post 10 notes';
			case '_achievements._types._notes100.title': return 'A lot of notes';
			case '_achievements._types._notes100.description': return 'Post 100 notes';
			case '_achievements._types._notes500.title': return 'Covered in notes';
			case '_achievements._types._notes500.description': return 'Post 500 notes';
			case '_achievements._types._notes1000.title': return 'A mountain of notes';
			case '_achievements._types._notes1000.description': return 'Post 1,000 notes';
			case '_achievements._types._notes5000.title': return 'Overflowing notes';
			case '_achievements._types._notes5000.description': return 'Post 5,000 notes';
			case '_achievements._types._notes10000.title': return 'Supernote';
			case '_achievements._types._notes10000.description': return 'Post 10,000 notes';
			case '_achievements._types._notes20000.title': return 'Need... more... notes...';
			case '_achievements._types._notes20000.description': return 'Post 20,000 notes';
			case '_achievements._types._notes30000.title': return 'Notes notes notes!';
			case '_achievements._types._notes30000.description': return 'Post 30,000 notes';
			case '_achievements._types._notes40000.title': return 'Note factory';
			case '_achievements._types._notes40000.description': return 'Post 40,000 notes';
			case '_achievements._types._notes50000.title': return 'Planet of notes';
			case '_achievements._types._notes50000.description': return 'Post 50,000 notes';
			case '_achievements._types._notes60000.title': return 'Note quasar';
			case '_achievements._types._notes60000.description': return 'Post 60,000 notes';
			case '_achievements._types._notes70000.title': return 'Note black hole';
			case '_achievements._types._notes70000.description': return 'Post 70,000 notes';
			case '_achievements._types._notes80000.title': return 'Note galaxy';
			case '_achievements._types._notes80000.description': return 'Post 80,000 notes';
			case '_achievements._types._notes90000.title': return 'Note universe';
			case '_achievements._types._notes90000.description': return 'Post 90,000 notes';
			case '_achievements._types._notes100000.title': return 'ALL YOUR NOTE ARE BELONG TO US';
			case '_achievements._types._notes100000.description': return 'Post 100,000 notes';
			case '_achievements._types._notes100000.flavor': return 'You sure have a lot to say.';
			case '_achievements._types._login3.title': return 'Beginner I';
			case '_achievements._types._login3.description': return 'Log in for a total of 3 days';
			case '_achievements._types._login3.flavor': return 'Starting today, just call me Misskist';
			case '_achievements._types._login7.title': return 'Beginner II';
			case '_achievements._types._login7.description': return 'Log in for a total of 7 days';
			case '_achievements._types._login7.flavor': return 'Feel like you\'ve gotten the hang of things yet?';
			case '_achievements._types._login15.title': return 'Beginner III';
			case '_achievements._types._login15.description': return 'Log in for a total of 15 days';
			case '_achievements._types._login30.title': return 'Misskist I';
			case '_achievements._types._login30.description': return 'Log in for a total of 30 days';
			case '_achievements._types._login60.title': return 'Misskist II';
			case '_achievements._types._login60.description': return 'Log in for a total of 60 days';
			case '_achievements._types._login100.title': return 'Misskist III';
			case '_achievements._types._login100.description': return 'Log in for a total of 100 days';
			case '_achievements._types._login100.flavor': return 'Violent Misskist';
			case '_achievements._types._login200.title': return 'Regular I';
			case '_achievements._types._login200.description': return 'Log in for a total of 200 days';
			case '_achievements._types._login300.title': return 'Regular II';
			case '_achievements._types._login300.description': return 'Log in for a total of 300 days';
			case '_achievements._types._login400.title': return 'Regular III';
			case '_achievements._types._login400.description': return 'Log in for a total of 400 days';
			case '_achievements._types._login500.title': return 'Expert I';
			case '_achievements._types._login500.description': return 'Log in for a total of 500 days';
			case '_achievements._types._login500.flavor': return 'My friends, it has often been said that I like notes';
			case '_achievements._types._login600.title': return 'Expert II';
			case '_achievements._types._login600.description': return 'Log in for a total of 600 days';
			case '_achievements._types._login700.title': return 'Expert III';
			case '_achievements._types._login700.description': return 'Log in for a total of 700 days';
			case '_achievements._types._login800.title': return 'Master of Notes I';
			case '_achievements._types._login800.description': return 'Log in for a total of 800 days';
			case '_achievements._types._login900.title': return 'Master of Notes II';
			case '_achievements._types._login900.description': return 'Log in for a total of 900 days';
			case '_achievements._types._login1000.title': return 'Master of Notes III';
			case '_achievements._types._login1000.description': return 'Log in for a total of 1,000 days';
			case '_achievements._types._login1000.flavor': return 'Thank you for using Misskey!';
			case '_achievements._types._noteClipped1.title': return 'Must... clip...';
			case '_achievements._types._noteClipped1.description': return 'Clip your first note';
			case '_achievements._types._noteFavorited1.title': return 'Stargazer';
			case '_achievements._types._noteFavorited1.description': return 'Favorite your first note';
			case '_achievements._types._myNoteFavorited1.title': return 'Seeking Stars';
			case '_achievements._types._myNoteFavorited1.description': return 'Have somebody else favorite one of your notes';
			case '_achievements._types._profileFilled.title': return 'Well-prepared';
			case '_achievements._types._profileFilled.description': return 'Set up your profile';
			case '_achievements._types._markedAsCat.title': return 'I Am a Cat';
			case '_achievements._types._markedAsCat.description': return 'Mark your account as a cat';
			case '_achievements._types._markedAsCat.flavor': return 'I\'ll give you a name later.';
			case '_achievements._types._following1.title': return 'Following your first user';
			case '_achievements._types._following1.description': return 'Follow a user';
			case '_achievements._types._following10.title': return 'Keep up... keep up...';
			case '_achievements._types._following10.description': return 'Follow 10 users';
			case '_achievements._types._following50.title': return 'Lots of friends';
			case '_achievements._types._following50.description': return 'Follow 50 accounts';
			case '_achievements._types._following100.title': return '100 Friends';
			case '_achievements._types._following100.description': return 'Follow 100 accounts';
			case '_achievements._types._following300.title': return 'Friend overload';
			case '_achievements._types._following300.description': return 'Follow 300 accounts';
			case '_achievements._types._followers1.title': return 'First follower';
			case '_achievements._types._followers1.description': return 'Gain 1 follower';
			case '_achievements._types._followers10.title': return 'Follow me!';
			case '_achievements._types._followers10.description': return 'Gain 10 followers';
			case '_achievements._types._followers50.title': return 'Coming in crowds';
			case '_achievements._types._followers50.description': return 'Gain 50 followers';
			case '_achievements._types._followers100.title': return 'Popular';
			case '_achievements._types._followers100.description': return 'Gain 100 followers';
			case '_achievements._types._followers300.title': return 'Please form a single line';
			case '_achievements._types._followers300.description': return 'Gain 300 followers';
			case '_achievements._types._followers500.title': return 'Radio Tower';
			case '_achievements._types._followers500.description': return 'Gain 500 followers';
			case '_achievements._types._followers1000.title': return 'Influencer';
			case '_achievements._types._followers1000.description': return 'Gain 1,000 followers';
			case '_achievements._types._collectAchievements30.title': return 'Achievement Collector';
			case '_achievements._types._collectAchievements30.description': return 'Earn 30 achievements';
			case '_achievements._types._viewAchievements3min.title': return 'Likes Achievements';
			case '_achievements._types._viewAchievements3min.description': return 'Look at your list of achievements for at least 3 minutes';
			case '_achievements._types._iLoveMisskey.title': return 'I Love Misskey';
			case '_achievements._types._iLoveMisskey.description': return 'Post "I ❤ #Misskey"';
			case '_achievements._types._iLoveMisskey.flavor': return 'Misskey\'s development team greatly appreciates your support!';
			case '_achievements._types._foundTreasure.title': return 'Treasure Hunt';
			case '_achievements._types._foundTreasure.description': return 'You\'ve found the hidden treasure';
			case '_achievements._types._client30min.title': return 'Short break';
			case '_achievements._types._client30min.description': return 'Keep Misskey opened for at least 30 minutes';
			case '_achievements._types._client60min.title': return 'No "Miss" in Misskey';
			case '_achievements._types._client60min.description': return 'Keep Misskey opened for at least 60 minutes';
			case '_achievements._types._noteDeletedWithin1min.title': return 'Nevermind';
			case '_achievements._types._noteDeletedWithin1min.description': return 'Delete a note within a minute of posting it';
			case '_achievements._types._postedAtLateNight.title': return 'Nocturnal';
			case '_achievements._types._postedAtLateNight.description': return 'Post a note late at night';
			case '_achievements._types._postedAtLateNight.flavor': return 'It\'s about time to go to bed.';
			case '_achievements._types._postedAt0min0sec.title': return 'Speaking Clock';
			case '_achievements._types._postedAt0min0sec.description': return 'Post a note at 00:00';
			case '_achievements._types._postedAt0min0sec.flavor': return 'Click Click Click Claaang';
			case '_achievements._types._selfQuote.title': return 'Self-Reference';
			case '_achievements._types._selfQuote.description': return 'Quote your own note';
			case '_achievements._types._htl20npm.title': return 'Flowing Timeline';
			case '_achievements._types._htl20npm.description': return 'Have the speed of your home timeline exceed 20 npm (notes per minute)';
			case '_achievements._types._viewInstanceChart.title': return 'Analyst';
			case '_achievements._types._viewInstanceChart.description': return 'View your instance\'s charts';
			case '_achievements._types._outputHelloWorldOnScratchpad.title': return 'Hello, world!';
			case '_achievements._types._outputHelloWorldOnScratchpad.description': return 'Output "hello world" in the Scratchpad';
			case '_achievements._types._open3windows.title': return 'Multi-Window';
			case '_achievements._types._open3windows.description': return 'Have at least 3 windows open at the same time';
			case '_achievements._types._driveFolderCircularReference.title': return 'Circular Reference';
			case '_achievements._types._driveFolderCircularReference.description': return 'Attempt to create a recursively nested folder in Drive';
			case '_achievements._types._reactWithoutRead.title': return 'Did you really read that?';
			case '_achievements._types._reactWithoutRead.description': return 'React on a note that\'s over 100 characters long within 3 seconds of it being posted';
			case '_achievements._types._clickedClickHere.title': return 'Click here';
			case '_achievements._types._clickedClickHere.description': return 'You\'ve clicked here';
			case '_achievements._types._justPlainLucky.title': return 'Just Plain Lucky';
			case '_achievements._types._justPlainLucky.description': return 'Has a chance to be obtained with a probability of 0.005% every 10 seconds';
			case '_achievements._types._setNameToSyuilo.title': return 'God Complex';
			case '_achievements._types._setNameToSyuilo.description': return 'Set your name to "syuilo"';
			case '_achievements._types._passedSinceAccountCreated1.title': return 'One Year Anniversary';
			case '_achievements._types._passedSinceAccountCreated1.description': return 'One year has passed since your account was created';
			case '_achievements._types._passedSinceAccountCreated2.title': return 'Two Year Anniversary';
			case '_achievements._types._passedSinceAccountCreated2.description': return 'Two years have passed since your account was created';
			case '_achievements._types._passedSinceAccountCreated3.title': return 'Three Year Anniversary';
			case '_achievements._types._passedSinceAccountCreated3.description': return 'Three years have passed since your account was created';
			case '_achievements._types._loggedInOnBirthday.title': return 'Happy Birthday';
			case '_achievements._types._loggedInOnBirthday.description': return 'Log in on your birthday';
			case '_achievements._types._loggedInOnNewYearsDay.title': return 'Happy New Year!';
			case '_achievements._types._loggedInOnNewYearsDay.description': return 'Logged in on the first day of the year';
			case '_achievements._types._loggedInOnNewYearsDay.flavor': return 'To another great year on this instance';
			case '_achievements._types._cookieClicked.title': return 'A game in which you click cookies';
			case '_achievements._types._cookieClicked.description': return 'Clicked the cookie';
			case '_achievements._types._cookieClicked.flavor': return 'Wait, are you on the correct website?';
			case '_achievements._types._brainDiver.title': return 'Brain Diver';
			case '_achievements._types._brainDiver.description': return 'Post the link to Brain Diver';
			case '_achievements._types._brainDiver.flavor': return 'Misskey-Misskey La-Tu-Ma';
			case '_role.new_': return 'New role';
			case '_role.edit': return 'Edit role';
			case '_role.name': return 'Role name';
			case '_role.description': return 'Role description';
			case '_role.permission': return 'Role permissions';
			case '_role.descriptionOfPermission': return '<b>Moderators</b> can perform basic moderation operations.\n<b>Administrators</b> can change all settings of the instance.';
			case '_role.assignTarget': return 'Assignment type';
			case '_role.descriptionOfAssignTarget': return '<b>Manual</b> to manually change who is part of this role and who is not.\n<b>Conditional</b> to have users be automatically assigned and removed from this role based on a condition.';
			case '_role.manual': return 'Manual';
			case '_role.conditional': return 'Conditional';
			case '_role.condition': return 'Condition';
			case '_role.isConditionalRole': return 'This is a conditional role.';
			case '_role.isPublic': return 'Public role';
			case '_role.descriptionOfIsPublic': return 'Anyone will be able to view a list of users assigned to this role. In addition, this role will be displayed in the profiles of assigned users.';
			case '_role.options': return 'Options';
			case '_role.policies': return 'Policies';
			case '_role.baseRole': return 'Role template';
			case '_role.useBaseValue': return 'Use role template value';
			case '_role.chooseRoleToAssign': return 'Select the role to assign';
			case '_role.iconUrl': return 'Icon URL';
			case '_role.asBadge': return 'Show as badge';
			case '_role.descriptionOfAsBadge': return 'This role\'s icon will be displayed next to the username of users with this role if turned on.';
			case '_role.isExplorable': return 'Role timeline is public';
			case '_role.descriptionOfIsExplorable': return 'This role\'s timeline will become publicly accessible if enabled. Timelines of non-public roles will not be made public even if set.';
			case '_role.displayOrder': return 'Position';
			case '_role.descriptionOfDisplayOrder': return 'The higher the number, the higher its UI position.';
			case '_role.canEditMembersByModerator': return 'Allow moderators to edit the list of members for this role';
			case '_role.descriptionOfCanEditMembersByModerator': return 'When turned on, moderators as well as administrators will be able to assign and unassign users to this role. When turned off, only administrators will be able to assign users.';
			case '_role.priority': return 'Priority';
			case '_role._priority.low': return 'Low';
			case '_role._priority.middle': return 'Medium';
			case '_role._priority.high': return 'High';
			case '_role._options.gtlAvailable': return 'Can view the global timeline';
			case '_role._options.ltlAvailable': return 'Can view the local timeline';
			case '_role._options.canPublicNote': return 'Can send public notes';
			case '_role._options.canInvite': return 'Can create instance invite codes';
			case '_role._options.canManageCustomEmojis': return 'Can manage custom emojis';
			case '_role._options.driveCapacity': return 'Drive capacity';
			case '_role._options.alwaysMarkNsfw': return 'Always mark files as NSFW';
			case '_role._options.pinMax': return 'Maximum number of pinned notes';
			case '_role._options.antennaMax': return 'Maximum number of antennas';
			case '_role._options.wordMuteMax': return 'Maximum number of characters allowed in word mutes';
			case '_role._options.webhookMax': return 'Maximum number of Webhooks';
			case '_role._options.clipMax': return 'Maximum number of Clips';
			case '_role._options.noteEachClipsMax': return 'Maximum number of notes within a clip';
			case '_role._options.userListMax': return 'Maximum number of user lists';
			case '_role._options.userEachUserListsMax': return 'Maximum number of users within a user list';
			case '_role._options.rateLimitFactor': return 'Rate limit';
			case '_role._options.descriptionOfRateLimitFactor': return 'Lower rate limits are less restrictive, higher ones more restrictive. ';
			case '_role._options.canHideAds': return 'Can hide ads';
			case '_role._options.canSearchNotes': return 'Usage of note search';
			case '_role._condition.isLocal': return 'Local user';
			case '_role._condition.isRemote': return 'Remote user';
			case '_role._condition.createdLessThan': return 'Less than X has passed since account creation';
			case '_role._condition.createdMoreThan': return 'More than X has passed since account creation';
			case '_role._condition.followersLessThanOrEq': return 'Has X or fewer followers';
			case '_role._condition.followersMoreThanOrEq': return 'Has X or more followers';
			case '_role._condition.followingLessThanOrEq': return 'Follows X or fewer accounts';
			case '_role._condition.followingMoreThanOrEq': return 'Follows X or more accounts';
			case '_role._condition.notesLessThanOrEq': return 'Post count is less than/equal to';
			case '_role._condition.notesMoreThanOrEq': return 'Post count is greater than/equal to';
			case '_role._condition.and': return 'AND-Condition';
			case '_role._condition.or': return 'OR-Condition';
			case '_role._condition.not': return 'NOT-Condition';
			case '_sensitiveMediaDetection.description': return 'Reduces the effort of server moderation through automatically recognizing NSFW media via Machine Learning. This will slightly increase the load on the server.';
			case '_sensitiveMediaDetection.sensitivity': return 'Detection sensitivity';
			case '_sensitiveMediaDetection.sensitivityDescription': return 'Reducing the sensitivity will lead to fewer misdetections (false positives) whereas increasing it will lead to fewer missed detections (false negatives).';
			case '_sensitiveMediaDetection.setSensitiveFlagAutomatically': return 'Mark as NSFW';
			case '_sensitiveMediaDetection.setSensitiveFlagAutomaticallyDescription': return 'The results of the internal detection will be retained even if this option is turned off.';
			case '_sensitiveMediaDetection.analyzeVideos': return 'Enable analysis of videos';
			case '_sensitiveMediaDetection.analyzeVideosDescription': return 'Analyzes videos in addition to images. This will slightly increase the load on the server.';
			case '_emailUnavailable.used': return 'This email address is already being used';
			case '_emailUnavailable.format': return 'The format of this email address is invalid';
			case '_emailUnavailable.disposable': return 'Disposable email addresses may not be used';
			case '_emailUnavailable.mx': return 'This email server is invalid';
			case '_emailUnavailable.smtp': return 'This email server is not responding';
			case '_ffVisibility.public': return 'Public';
			case '_ffVisibility.followers': return 'Visible to followers only';
			case '_ffVisibility.private': return 'Private';
			case '_signup.almostThere': return 'Almost there';
			case '_signup.emailAddressInfo': return 'Please enter your email address. It will not be made public.';
			case '_signup.emailSent': return 'A confirmation email has been sent to your email address ({email}). Please click the included link to complete account creation.';
			case '_accountDelete.accountDelete': return 'Delete account';
			case '_accountDelete.mayTakeTime': return 'As account deletion is a resource-heavy process, it may take some time to complete depending on how much content you have created and how many files you have uploaded.';
			case '_accountDelete.sendEmail': return 'Once account deletion has been completed, an email will be sent to the email address registered to this account.';
			case '_accountDelete.requestAccountDelete': return 'Request account deletion';
			case '_accountDelete.started': return 'Deletion has been started.';
			case '_accountDelete.inProgress': return 'Deletion is currently in progress';
			case '_ad.back': return 'Back';
			case '_ad.reduceFrequencyOfThisAd': return 'Show this ad less';
			case '_ad.hide': return 'Hide';
			case '_forgotPassword.enterEmail': return 'Enter the email address you used to register. A link with which you can reset your password will then be sent to it.';
			case '_forgotPassword.ifNoEmail': return 'If you did not use an email during registration, please contact the instance administrator instead.';
			case '_forgotPassword.contactAdmin': return 'This instance does not support using email addresses, please contact the instance administrator to reset your password instead.';
			case '_gallery.my': return 'My Gallery';
			case '_gallery.liked': return 'Liked Posts';
			case '_gallery.like': return 'Like';
			case '_gallery.unlike': return 'Remove like';
			case '_email._follow.title': return 'You\'ve got a new follower';
			case '_email._receiveFollowRequest.title': return 'You\'ve received a follow request';
			case '_plugin.install': return 'Install plugins';
			case '_plugin.installWarn': return 'Please do not install untrustworthy plugins.';
			case '_plugin.manage': return 'Manage plugins';
			case '_preferencesBackups.list': return 'Created backups';
			case '_preferencesBackups.saveNew': return 'Save new backup';
			case '_preferencesBackups.loadFile': return 'Load from file';
			case '_preferencesBackups.apply': return 'Apply to this device';
			case '_preferencesBackups.save': return 'Save changes';
			case '_preferencesBackups.inputName': return 'Please enter a name for this backup';
			case '_preferencesBackups.cannotSave': return 'Saving failed';
			case '_preferencesBackups.nameAlreadyExists': return 'A backup called "{name}" already exists. Please enter a different name.';
			case '_preferencesBackups.applyConfirm': return 'Do you really want to apply the "{name}" backup to this device? Existing settings of this device will be overwritten.';
			case '_preferencesBackups.saveConfirm': return 'Save backup as {name}?';
			case '_preferencesBackups.deleteConfirm': return 'Delete the {name} backup?';
			case '_preferencesBackups.renameConfirm': return 'Rename this backup from "{old}" to "{new_}"?';
			case '_preferencesBackups.noBackups': return 'No backups exist. You may backup your client settings on this server by using "Create new backup".';
			case '_preferencesBackups.createdAt': return 'Created at: {date} {time}';
			case '_preferencesBackups.updatedAt': return 'Updated at: {date} {time}';
			case '_preferencesBackups.cannotLoad': return 'Loading failed';
			case '_preferencesBackups.invalidFile': return 'Invalid file format';
			case '_registry.scope': return 'Scope';
			case '_registry.key': return 'Key';
			case '_registry.keys': return 'Keys';
			case '_registry.domain': return 'Domain';
			case '_registry.createKey': return 'Create key';
			case '_aboutMisskey.about': return 'Misskey is open-source software being developed by syuilo since 2014.';
			case '_aboutMisskey.contributors': return 'Main contributors';
			case '_aboutMisskey.allContributors': return 'All contributors';
			case '_aboutMisskey.source': return 'Source code';
			case '_aboutMisskey.translation': return 'Translate Misskey';
			case '_aboutMisskey.donate': return 'Donate to Misskey';
			case '_aboutMisskey.morePatrons': return 'We also appreciate the support of many other helpers not listed here. Thank you! 🥰';
			case '_aboutMisskey.patrons': return 'Patrons';
			case '_nsfw.respect': return 'Hide NSFW media';
			case '_nsfw.ignore': return 'Don\'t hide NSFW media';
			case '_nsfw.force': return 'Hide all media';
			case '_instanceTicker.none': return 'Never show';
			case '_instanceTicker.remote': return 'Show for remote users';
			case '_instanceTicker.always': return 'Always show';
			case '_serverDisconnectedBehavior.reload': return 'Automatically reload';
			case '_serverDisconnectedBehavior.dialog': return 'Show warning dialog';
			case '_serverDisconnectedBehavior.quiet': return 'Show unobtrusive warning';
			case '_channel.create': return 'Create channel';
			case '_channel.edit': return 'Edit channel';
			case '_channel.setBanner': return 'Set banner';
			case '_channel.removeBanner': return 'Remove banner';
			case '_channel.featured': return 'Trending';
			case '_channel.owned': return 'Owned';
			case '_channel.following': return 'Followed';
			case '_channel.usersCount': return '{n} Participants';
			case '_channel.notesCount': return '{n} Notes';
			case '_channel.nameAndDescription': return 'Name and description';
			case '_channel.nameOnly': return 'Name only';
			case '_menuDisplay.sideFull': return 'Side';
			case '_menuDisplay.sideIcon': return 'Side (Icons)';
			case '_menuDisplay.top': return 'Top';
			case '_menuDisplay.hide': return 'Hide';
			case '_wordMute.muteWords': return 'Muted words';
			case '_wordMute.muteWordsDescription': return 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
			case '_wordMute.muteWordsDescription2': return 'Surround keywords with slashes to use regular expressions.';
			case '_wordMute.softDescription': return 'Hide notes that fulfil the set conditions from the timeline.';
			case '_wordMute.hardDescription': return 'Prevents notes fulfilling the set conditions from being added to the timeline. In addition, these notes will not be added to the timeline even if the conditions are changed.';
			case '_wordMute.soft': return 'Soft';
			case '_wordMute.hard': return 'Hard';
			case '_wordMute.mutedNotes': return 'Muted notes';
			case '_instanceMute.instanceMuteDescription': return 'This will mute any notes/renotes from the listed instances, including those of users replying to a user from a muted instance.';
			case '_instanceMute.instanceMuteDescription2': return 'Separate with newlines';
			case '_instanceMute.title': return 'Hides notes from listed instances.';
			case '_instanceMute.heading': return 'List of instances to be muted';
			case '_theme.explore': return 'Explore Themes';
			case '_theme.install': return 'Install a theme';
			case '_theme.manage': return 'Manage themes';
			case '_theme.code': return 'Theme code';
			case '_theme.description': return 'Description';
			case '_theme.installed': return '{name} has been installed';
			case '_theme.installedThemes': return 'Installed themes';
			case '_theme.builtinThemes': return 'Built-in themes';
			case '_theme.alreadyInstalled': return 'This theme is already installed';
			case '_theme.invalid': return 'The format of this theme is invalid';
			case '_theme.make': return 'Make a theme';
			case '_theme.base': return 'Base';
			case '_theme.addConstant': return 'Add constant';
			case '_theme.constant': return 'Constant';
			case '_theme.defaultValue': return 'Default value';
			case '_theme.color': return 'Color';
			case '_theme.refProp': return 'Reference a property';
			case '_theme.refConst': return 'Reference a constant';
			case '_theme.key': return 'Key';
			case '_theme.func': return 'Functions';
			case '_theme.funcKind': return 'Function type';
			case '_theme.argument': return 'Argument';
			case '_theme.basedProp': return 'Referenced property';
			case '_theme.alpha': return 'Opacity';
			case '_theme.darken': return 'Darken';
			case '_theme.lighten': return 'Lighten';
			case '_theme.inputConstantName': return 'Enter a name for this constant';
			case '_theme.importInfo': return 'If you enter theme code here, you can import it to the theme editor';
			case '_theme.deleteConstantConfirm': return 'Do you really want to delete the constant {const_}?';
			case '_theme.keys.accent': return 'Accent';
			case '_theme.keys.bg': return 'Background';
			case '_theme.keys.fg': return 'Text';
			case '_theme.keys.focus': return 'Focus';
			case '_theme.keys.indicator': return 'Indicator';
			case '_theme.keys.panel': return 'Panel';
			case '_theme.keys.shadow': return 'Shadow';
			case '_theme.keys.header': return 'Header';
			case '_theme.keys.navBg': return 'Sidebar background';
			case '_theme.keys.navFg': return 'Sidebar text';
			case '_theme.keys.navHoverFg': return 'Sidebar text (Hover)';
			case '_theme.keys.navActive': return 'Sidebar text (Active)';
			case '_theme.keys.navIndicator': return 'Sidebar indicator';
			case '_theme.keys.link': return 'Link';
			case '_theme.keys.hashtag': return 'Hashtag';
			case '_theme.keys.mention': return 'Mention';
			case '_theme.keys.mentionMe': return 'Mentions (Me)';
			case '_theme.keys.renote': return 'Renote';
			case '_theme.keys.modalBg': return 'Modal background';
			case '_theme.keys.divider': return 'Divider';
			case '_theme.keys.scrollbarHandle': return 'Scrollbar handle';
			case '_theme.keys.scrollbarHandleHover': return 'Scrollbar handle (Hover)';
			case '_theme.keys.dateLabelFg': return 'Date label text';
			case '_theme.keys.infoBg': return 'Information background';
			case '_theme.keys.infoFg': return 'Information text';
			case '_theme.keys.infoWarnBg': return 'Warning background';
			case '_theme.keys.infoWarnFg': return 'Warning text';
			case '_theme.keys.cwBg': return 'CW button background';
			case '_theme.keys.cwFg': return 'CW button text';
			case '_theme.keys.cwHoverBg': return 'CW button background (Hover)';
			case '_theme.keys.toastBg': return 'Notification background';
			case '_theme.keys.toastFg': return 'Notification text';
			case '_theme.keys.buttonBg': return 'Button background';
			case '_theme.keys.buttonHoverBg': return 'Button background (Hover)';
			case '_theme.keys.inputBorder': return 'Input field border';
			case '_theme.keys.listItemHoverBg': return 'List item background (Hover)';
			case '_theme.keys.driveFolderBg': return 'Drive folder background';
			case '_theme.keys.wallpaperOverlay': return 'Wallpaper overlay';
			case '_theme.keys.badge': return 'Badge';
			case '_theme.keys.messageBg': return 'Chat background';
			case '_theme.keys.accentDarken': return 'Accent (Darkened)';
			case '_theme.keys.accentLighten': return 'Accent (Lightened)';
			case '_theme.keys.fgHighlighted': return 'Highlighted Text';
			case '_sfx.note': return 'New note';
			case '_sfx.noteMy': return 'Own note';
			case '_sfx.notification': return 'Notifications';
			case '_sfx.chat': return 'Chat';
			case '_sfx.chatBg': return 'Chat (Background)';
			case '_sfx.antenna': return 'Antennas';
			case '_sfx.channel': return 'Channel notifications';
			case '_ago.future': return 'Future';
			case '_ago.justNow': return 'Just now';
			case '_ago.secondsAgo': return '{n}s ago';
			case '_ago.minutesAgo': return '{n}m ago';
			case '_ago.hoursAgo': return '{n}h ago';
			case '_ago.daysAgo': return '{n}d ago';
			case '_ago.weeksAgo': return '{n}w ago';
			case '_ago.monthsAgo': return '{n}mo ago';
			case '_ago.yearsAgo': return '{n}y ago';
			case '_ago.invalid': return 'None';
			case '_time.second': return 'Second(s)';
			case '_time.minute': return 'Minute(s)';
			case '_time.hour': return 'Hour(s)';
			case '_time.day': return 'Day(s)';
			case '_timelineTutorial.title': return 'How to use Misskey';
			case '_timelineTutorial.step1_1': return 'This is the "timeline". All "notes" submitted on {name} will be chronologically displayed here.';
			case '_timelineTutorial.step1_2': return 'There are a few different timelines. For example, the "Home timeline" will contain notes of users you follow, and the "Local timeline" will contain notes from all users of {name}.';
			case '_timelineTutorial.step2_1': return 'Let\'s try posting a note next. You can do so by pressing the button with a pencil icon.';
			case '_timelineTutorial.step2_2': return 'How about writing a self-introduction, or just "Hello {name}!" if you don\'t feel like it?';
			case '_timelineTutorial.step3_1': return 'Finished posting your first note?';
			case '_timelineTutorial.step3_2': return 'Your first note should now be displayed on your timeline.';
			case '_timelineTutorial.step4_1': return 'You can also attach "Reactions" to notes.';
			case '_timelineTutorial.step4_2': return 'To attach a reaction, press the "+" mark on a note and choose an emoji you\'d like to react with.';
			case '_2fa.alreadyRegistered': return 'You have already registered a 2-factor authentication device.';
			case '_2fa.registerTOTP': return 'Register authenticator app';
			case '_2fa.passwordToTOTP': return 'Enter your password';
			case '_2fa.step1': return 'First, install an authentication app (such as {a} or {b}) on your device.';
			case '_2fa.step2': return 'Then, scan the QR code displayed on this screen.';
			case '_2fa.step2Click': return 'Clicking on this QR code will allow you to register 2FA to your security key or phone authenticator app.';
			case '_2fa.step2Url': return 'You can also enter this URL if you\'re using a desktop program:';
			case '_2fa.step3Title': return 'Enter an authentication code';
			case '_2fa.step3': return 'Enter the token provided by your app to finish setup.';
			case '_2fa.step4': return 'From now on, any future login attempts will ask for such a login token.';
			case '_2fa.securityKeyNotSupported': return 'Your browser does not support security keys.';
			case '_2fa.registerTOTPBeforeKey': return 'Please set up an authenticator app to register a security or pass key.';
			case '_2fa.securityKeyInfo': return 'Besides fingerprint or PIN authentication, you can also setup authentication via hardware security keys that support FIDO2 to further secure your account.';
			case '_2fa.chromePasskeyNotSupported': return 'Chrome passkeys are currently not supported.';
			case '_2fa.registerSecurityKey': return 'Register a security or pass key';
			case '_2fa.securityKeyName': return 'Enter a key name';
			case '_2fa.tapSecurityKey': return 'Please follow your browser to register the security or pass key';
			case '_2fa.removeKey': return 'Remove security key';
			case '_2fa.removeKeyConfirm': return 'Really delete the {name} key?';
			case '_2fa.whyTOTPOnlyRenew': return 'The authenticator app cannot be removed as long as a security key is registered.';
			case '_2fa.renewTOTP': return 'Reconfigure authenticator app';
			case '_2fa.renewTOTPConfirm': return 'This will cause verification codes from your previous app to stop working';
			case '_2fa.renewTOTPOk': return 'Reconfigure';
			case '_2fa.renewTOTPCancel': return 'Cancel';
			case '_auth.shareAccessTitle': return 'Granting application permissions';
			case '_auth.shareAccess': return 'Would you like to authorize "{name}" to access this account?';
			case '_auth.shareAccessAsk': return 'Are you sure you want to authorize this application to access your account?';
			case '_auth.permission': return '{name} requests the following permissions';
			case '_auth.permissionAsk': return 'This application requests the following permissions';
			case '_auth.pleaseGoBack': return 'Please go back to the application';
			case '_auth.callback': return 'Returning to the application';
			case '_auth.denied': return 'Access denied';
			case '_auth.pleaseLogin': return 'Please log in to authorize applications.';
			case '_antennaSources.all': return 'All notes';
			case '_antennaSources.homeTimeline': return 'Notes from followed users';
			case '_antennaSources.users': return 'Notes from specific users';
			case '_antennaSources.userList': return 'Notes from a specified list of users';
			case '_weekday.sunday': return 'Sunday';
			case '_weekday.monday': return 'Monday';
			case '_weekday.tuesday': return 'Tuesday';
			case '_weekday.wednesday': return 'Wednesday';
			case '_weekday.thursday': return 'Thursday';
			case '_weekday.friday': return 'Friday';
			case '_weekday.saturday': return 'Saturday';
			case '_widgets.profile': return 'Profile';
			case '_widgets.instanceInfo': return 'Instance Information';
			case '_widgets.memo': return 'Sticky notes';
			case '_widgets.notifications': return 'Notifications';
			case '_widgets.timeline': return 'Timeline';
			case '_widgets.calendar': return 'Calendar';
			case '_widgets.trends': return 'Trending';
			case '_widgets.clock': return 'Clock';
			case '_widgets.rss': return 'RSS reader';
			case '_widgets.rssTicker': return 'RSS-Ticker';
			case '_widgets.activity': return 'Activity';
			case '_widgets.photos': return 'Photos';
			case '_widgets.digitalClock': return 'Digital clock';
			case '_widgets.unixClock': return 'UNIX clock';
			case '_widgets.federation': return 'Federation';
			case '_widgets.instanceCloud': return 'Instance cloud';
			case '_widgets.postForm': return 'Posting form';
			case '_widgets.slideshow': return 'Slideshow';
			case '_widgets.button': return 'Button';
			case '_widgets.onlineUsers': return 'Online users';
			case '_widgets.jobQueue': return 'Job Queue';
			case '_widgets.serverMetric': return 'Server metrics';
			case '_widgets.aiscript': return 'AiScript console';
			case '_widgets.aiscriptApp': return 'AiScript App';
			case '_widgets.aichan': return 'Ai';
			case '_widgets.userList': return 'User list';
			case '_widgets._userList.chooseList': return 'Select a list';
			case '_widgets.clicker': return 'Clicker';
			case '_cw.hide': return 'Hide';
			case '_cw.show': return 'Show content';
			case '_cw.chars': return '{count} characters';
			case '_cw.files': return '{count} file(s)';
			case '_poll.noOnlyOneChoice': return 'At least two choices are needed';
			case '_poll.choiceN': return 'Choice {n}';
			case '_poll.noMore': return 'You cannot add more choices';
			case '_poll.canMultipleVote': return 'Allow selecting multiple choices';
			case '_poll.expiration': return 'End poll';
			case '_poll.infinite': return 'Never';
			case '_poll.at': return 'End at...';
			case '_poll.after': return 'End after...';
			case '_poll.deadlineDate': return 'End date';
			case '_poll.deadlineTime': return 'Time';
			case '_poll.duration': return 'Duration';
			case '_poll.votesCount': return '{n} votes';
			case '_poll.totalVotes': return '{n} votes in total';
			case '_poll.vote': return 'Vote';
			case '_poll.showResult': return 'View results';
			case '_poll.voted': return 'Voted';
			case '_poll.closed': return 'Ended';
			case '_poll.remainingDays': return '{d} day(s) {h} hour(s) remaining';
			case '_poll.remainingHours': return '{h} hour(s) {m} minute(s) remaining';
			case '_poll.remainingMinutes': return '{m} minute(s) {s} second(s) remaining';
			case '_poll.remainingSeconds': return '{s} second(s) remaining';
			case '_visibility.public': return 'Public';
			case '_visibility.publicDescription': return 'Your note will be visible for all users';
			case '_visibility.home': return 'Home';
			case '_visibility.homeDescription': return 'Post to home timeline only';
			case '_visibility.followers': return 'Followers';
			case '_visibility.followersDescription': return 'Make visible to your followers only';
			case '_visibility.specified': return 'Direct';
			case '_visibility.specifiedDescription': return 'Make visible for specified users only';
			case '_visibility.disableFederation': return 'Defederate';
			case '_visibility.disableFederationDescription': return 'Don\'t transmit to other instances';
			case '_postForm.replyPlaceholder': return 'Reply to this note...';
			case '_postForm.quotePlaceholder': return 'Quote this note...';
			case '_postForm.channelPlaceholder': return 'Post to a channel...';
			case '_postForm._placeholders.a': return 'What are you up to?';
			case '_postForm._placeholders.b': return 'What\'s happening around you?';
			case '_postForm._placeholders.c': return 'What\'s on your mind?';
			case '_postForm._placeholders.d': return 'What do you want to say?';
			case '_postForm._placeholders.e': return 'Start writing...';
			case '_postForm._placeholders.f': return 'Waiting for you to write...';
			case '_profile.name': return 'Name';
			case '_profile.username': return 'Username';
			case '_profile.description': return 'Bio';
			case '_profile.youCanIncludeHashtags': return 'You can also include hashtags in your bio.';
			case '_profile.metadata': return 'Additional Information';
			case '_profile.metadataEdit': return 'Edit additional Information';
			case '_profile.metadataDescription': return 'Using these, you can display additional information fields in your profile.';
			case '_profile.metadataLabel': return 'Label';
			case '_profile.metadataContent': return 'Content';
			case '_profile.changeAvatar': return 'Change avatar';
			case '_profile.changeBanner': return 'Change banner';
			case '_exportOrImport.allNotes': return 'All notes';
			case '_exportOrImport.favoritedNotes': return 'Favorite notes';
			case '_exportOrImport.followingList': return 'Followed users';
			case '_exportOrImport.muteList': return 'Muted users';
			case '_exportOrImport.blockingList': return 'Blocked users';
			case '_exportOrImport.userLists': return 'User lists';
			case '_exportOrImport.excludeMutingUsers': return 'Exclude muted users';
			case '_exportOrImport.excludeInactiveUsers': return 'Exclude inactive users';
			case '_charts.federation': return 'Federation';
			case '_charts.apRequest': return 'Requests';
			case '_charts.usersIncDec': return 'Difference in the number of users';
			case '_charts.usersTotal': return 'Total number of users';
			case '_charts.activeUsers': return 'Active users';
			case '_charts.notesIncDec': return 'Difference in the number of notes';
			case '_charts.localNotesIncDec': return 'Difference in the number of local notes';
			case '_charts.remoteNotesIncDec': return 'Difference in the number of remote notes';
			case '_charts.notesTotal': return 'Total number of notes';
			case '_charts.filesIncDec': return 'Difference in the number of files';
			case '_charts.filesTotal': return 'Total number of files';
			case '_charts.storageUsageIncDec': return 'Difference in storage usage';
			case '_charts.storageUsageTotal': return 'Total storage usage';
			case '_instanceCharts.requests': return 'Requests';
			case '_instanceCharts.users': return 'Difference in the number of users';
			case '_instanceCharts.usersTotal': return 'Cumulative number of users';
			case '_instanceCharts.notes': return 'Difference in the number of notes';
			case '_instanceCharts.notesTotal': return 'Cumulative number of notes';
			case '_instanceCharts.ff': return 'Difference in the number of followed users / followers ';
			case '_instanceCharts.ffTotal': return 'Cumulative number of followed users / followers';
			case '_instanceCharts.cacheSize': return 'Difference in cache size';
			case '_instanceCharts.cacheSizeTotal': return 'Cumulative total cache size';
			case '_instanceCharts.files': return 'Difference in the number of files';
			case '_instanceCharts.filesTotal': return 'Cumulative number of files';
			case '_timelines.home': return 'Home';
			case '_timelines.local': return 'Local';
			case '_timelines.social': return 'Social';
			case '_timelines.global': return 'Global';
			case '_play.new_': return 'Create Play';
			case '_play.edit': return 'Edit Play';
			case '_play.created': return 'Play created';
			case '_play.updated': return 'Play edited';
			case '_play.deleted': return 'Play deleted';
			case '_play.pageSetting': return 'Play settings';
			case '_play.editThisPage': return 'Edit this Play';
			case '_play.viewSource': return 'View source';
			case '_play.my': return 'My Plays';
			case '_play.liked': return 'Liked Plays';
			case '_play.featured': return 'Popular';
			case '_play.title': return 'Title';
			case '_play.script': return 'Script';
			case '_play.summary': return 'Description';
			case '_pages.newPage': return 'Create a new Page';
			case '_pages.editPage': return 'Edit this Page';
			case '_pages.readPage': return 'Viewing this Page\'s source';
			case '_pages.created': return 'Page successfully created';
			case '_pages.updated': return 'Page successfully edited';
			case '_pages.deleted': return 'Page successfully deleted';
			case '_pages.pageSetting': return 'Page settings';
			case '_pages.nameAlreadyExists': return 'The specified Page URL already exists';
			case '_pages.invalidNameTitle': return 'The specified Page URL is invalid';
			case '_pages.invalidNameText': return 'Make sure the Page title is not empty';
			case '_pages.editThisPage': return 'Edit this Page';
			case '_pages.viewSource': return 'View source';
			case '_pages.viewPage': return 'View your Pages';
			case '_pages.like': return 'Like';
			case '_pages.unlike': return 'Remove like';
			case '_pages.my': return 'My Pages';
			case '_pages.liked': return 'Liked Pages';
			case '_pages.featured': return 'Popular';
			case '_pages.inspector': return 'Inspector';
			case '_pages.contents': return 'Contents';
			case '_pages.content': return 'Page block';
			case '_pages.variables': return 'Variables';
			case '_pages.title': return 'Title';
			case '_pages.url': return 'Page URL';
			case '_pages.summary': return 'Page summary';
			case '_pages.alignCenter': return 'Center elements';
			case '_pages.hideTitleWhenPinned': return 'Hide Page title when pinned to profile';
			case '_pages.font': return 'Font';
			case '_pages.fontSerif': return 'Serif';
			case '_pages.fontSansSerif': return 'Sans Serif';
			case '_pages.eyeCatchingImageSet': return 'Set thumbnail';
			case '_pages.eyeCatchingImageRemove': return 'Delete thumbnail';
			case '_pages.chooseBlock': return 'Add a block';
			case '_pages.selectType': return 'Select a type';
			case '_pages.contentBlocks': return 'Content';
			case '_pages.inputBlocks': return 'Input';
			case '_pages.specialBlocks': return 'Special';
			case '_pages.blocks.text': return 'Text';
			case '_pages.blocks.textarea': return 'Text area';
			case '_pages.blocks.section': return 'Section';
			case '_pages.blocks.image': return 'Images';
			case '_pages.blocks.button': return 'Button';
			case '_pages.blocks.note': return 'Embedded note';
			case '_pages.blocks._note.id': return 'Note ID';
			case '_pages.blocks._note.idDescription': return 'You can alternatively paste the note URL here.';
			case '_pages.blocks._note.detailed': return 'Detailed view';
			case '_relayStatus.requesting': return 'Pending';
			case '_relayStatus.accepted': return 'Accepted';
			case '_relayStatus.rejected': return 'Rejected';
			case '_notification.fileUploaded': return 'File successfully uploaded';
			case '_notification.youGotMention': return '{name} mentioned you';
			case '_notification.youGotReply': return '{name} replied to you';
			case '_notification.youGotQuote': return '{name} quoted you';
			case '_notification.youRenoted': return 'Renote from {name}';
			case '_notification.youWereFollowed': return 'followed you';
			case '_notification.youReceivedFollowRequest': return 'You\'ve received a follow request';
			case '_notification.yourFollowRequestAccepted': return 'Your follow request was accepted';
			case '_notification.pollEnded': return 'Poll results have become available';
			case '_notification.unreadAntennaNote': return 'Antenna {name}';
			case '_notification.emptyPushNotificationMessage': return 'Push notifications have been updated';
			case '_notification.achievementEarned': return 'Achievement unlocked';
			case '_notification._types.all': return 'All';
			case '_notification._types.follow': return 'New followers';
			case '_notification._types.mention': return 'Mentions';
			case '_notification._types.reply': return 'Replies';
			case '_notification._types.renote': return 'Renotes';
			case '_notification._types.quote': return 'Quotes';
			case '_notification._types.reaction': return 'Reactions';
			case '_notification._types.pollEnded': return 'Polls ending';
			case '_notification._types.receiveFollowRequest': return 'Received follow requests';
			case '_notification._types.followRequestAccepted': return 'Accepted follow requests';
			case '_notification._types.achievementEarned': return 'Achievement unlocked';
			case '_notification._types.app': return 'Notifications from linked apps';
			case '_notification._actions.followBack': return 'followed you back';
			case '_notification._actions.reply': return 'Reply';
			case '_notification._actions.renote': return 'Renote';
			case '_deck.alwaysShowMainColumn': return 'Always show main column';
			case '_deck.columnAlign': return 'Align columns';
			case '_deck.addColumn': return 'Add column';
			case '_deck.configureColumn': return 'Column settings';
			case '_deck.swapLeft': return 'Swap with the left column';
			case '_deck.swapRight': return 'Swap with the right column';
			case '_deck.swapUp': return 'Swap with the above column';
			case '_deck.swapDown': return 'Swap with the below column';
			case '_deck.stackLeft': return 'Stack on left column';
			case '_deck.popRight': return 'Pop column to the right';
			case '_deck.profile': return 'Profile';
			case '_deck.newProfile': return 'New profile';
			case '_deck.deleteProfile': return 'Delete profile';
			case '_deck.introduction': return 'Create the perfect interface for you by arranging columns freely!';
			case '_deck.introduction2': return 'Click on the + on the right of the screen to add new colums whenever you want.';
			case '_deck.widgetsIntroduction': return 'Please select "Edit widgets" in the column menu and add a widget.';
			case '_deck._columns.main': return 'Main';
			case '_deck._columns.widgets': return 'Widgets';
			case '_deck._columns.notifications': return 'Notifications';
			case '_deck._columns.tl': return 'Timeline';
			case '_deck._columns.antenna': return 'Antennas';
			case '_deck._columns.list': return 'List';
			case '_deck._columns.channel': return 'Channel';
			case '_deck._columns.mentions': return 'Mentions';
			case '_deck._columns.direct': return 'Direct notes';
			case '_deck._columns.roleTimeline': return 'Role Timeline';
			case '_dialog.charactersExceeded': return 'You\'ve exceeded the maximum character limit! Currently at {current} of {max}.';
			case '_dialog.charactersBelow': return 'You\'re below the minimum character limit! Currently at {current} of {min}.';
			case '_disabledTimeline.title': return 'Timeline disabled';
			case '_disabledTimeline.description': return 'You cannot use this timeline under your current roles.';
			case '_drivecleaner.orderBySizeDesc': return 'Descending Filesizes';
			case '_drivecleaner.orderByCreatedAtAsc': return 'Ascending Dates';
			case '_webhookSettings.createWebhook': return 'Create Webhook';
			case '_webhookSettings.name': return 'Name';
			case '_webhookSettings.secret': return 'Secret';
			case '_webhookSettings.events': return 'Webhook Events';
			case '_webhookSettings.active': return 'Enabled';
			case '_webhookSettings._events.follow': return 'When following a user';
			case '_webhookSettings._events.followed': return 'When being followed';
			case '_webhookSettings._events.note': return 'When posting a note';
			case '_webhookSettings._events.reply': return 'When receiving a reply';
			case '_webhookSettings._events.renote': return 'When renoted';
			case '_webhookSettings._events.reaction': return 'When receiving a reaction';
			case '_webhookSettings._events.mention': return 'When being mentioned';
			default: return null;
		}
	}
}

extension on _StringsJaJp {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case '_lang_': return '日本語';
			case 'headlineMisskey': return 'ノートでつながるネットワーク';
			case 'introMisskey': return 'ようこそ！Misskeyは、オープンソースの分散型マイクロブログサービスです。\n「ノート」を作成して、いま起こっていることを共有したり、あなたについて皆に発信しよう📡\n「リアクション」機能で、皆のノートに素早く反応を追加することもできます👍\n新しい世界を探検しよう🚀';
			case 'poweredByMisskeyDescription': return '{name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつです。';
			case 'monthAndDay': return '{month}月 {day}日';
			case 'search': return '検索';
			case 'notifications': return '通知';
			case 'username': return 'ユーザー名';
			case 'password': return 'パスワード';
			case 'forgotPassword': return 'パスワードを忘れた';
			case 'fetchingAsApObject': return '連合に照会中';
			case 'ok': return 'OK';
			case 'gotIt': return 'わかった';
			case 'cancel': return 'キャンセル';
			case 'noThankYou': return 'やめておく';
			case 'enterUsername': return 'ユーザー名を入力';
			case 'renotedBy': return '{user}がRenote';
			case 'noNotes': return 'ノートはありません';
			case 'noNotifications': return '通知はありません';
			case 'instance': return 'サーバー';
			case 'settings': return '設定';
			case 'notificationSettings': return '通知の設定';
			case 'basicSettings': return '基本設定';
			case 'otherSettings': return 'その他の設定';
			case 'openInWindow': return 'ウィンドウで開く';
			case 'profile': return 'プロフィール';
			case 'timeline': return 'タイムライン';
			case 'noAccountDescription': return '自己紹介はありません';
			case 'login': return 'ログイン';
			case 'loggingIn': return 'ログイン中';
			case 'logout': return 'ログアウト';
			case 'signup': return '新規登録';
			case 'uploading': return 'アップロード中';
			case 'save': return '保存';
			case 'users': return 'ユーザー';
			case 'addUser': return 'ユーザーを追加';
			case 'favorite': return 'お気に入り';
			case 'favorites': return 'お気に入り';
			case 'unfavorite': return 'お気に入り解除';
			case 'favorited': return 'お気に入りに登録しました。';
			case 'alreadyFavorited': return '既にお気に入りに登録されています。';
			case 'cantFavorite': return 'お気に入りに登録できませんでした。';
			case 'pin': return 'ピン留め';
			case 'unpin': return 'ピン留め解除';
			case 'copyContent': return '内容をコピー';
			case 'copyLink': return 'リンクをコピー';
			case 'delete': return '削除';
			case 'deleteAndEdit': return '削除して編集';
			case 'deleteAndEditConfirm': return 'このノートを削除してもう一度編集しますか？このノートへのリアクション、Renote、返信も全て削除されます。';
			case 'addToList': return 'リストに追加';
			case 'sendMessage': return 'メッセージを送信';
			case 'copyRSS': return 'RSSをコピー';
			case 'copyUsername': return 'ユーザー名をコピー';
			case 'copyUserId': return 'ユーザーIDをコピー';
			case 'copyNoteId': return 'ノートIDをコピー';
			case 'searchUser': return 'ユーザーを検索';
			case 'reply': return '返信';
			case 'loadMore': return 'もっと見る';
			case 'showMore': return 'もっと見る';
			case 'showLess': return '閉じる';
			case 'youGotNewFollower': return 'フォローされました';
			case 'receiveFollowRequest': return 'フォローリクエストされました';
			case 'followRequestAccepted': return 'フォローが承認されました';
			case 'mention': return 'メンション';
			case 'mentions': return 'あなた宛て';
			case 'directNotes': return 'ダイレクト投稿';
			case 'importAndExport': return 'インポートとエクスポート';
			case 'import': return 'インポート';
			case 'export': return 'エクスポート';
			case 'files': return 'ファイル';
			case 'download': return 'ダウンロード';
			case 'driveFileDeleteConfirm': return 'ファイル「{name}」を削除しますか？このファイルを使用した全てのコンテンツからも削除されます。';
			case 'unfollowConfirm': return '{name}のフォローを解除しますか？';
			case 'exportRequested': return 'エクスポートをリクエストしました。これには時間がかかる場合があります。エクスポートが終わると、「ドライブ」に追加されます。';
			case 'importRequested': return 'インポートをリクエストしました。これには時間がかかる場合があります。';
			case 'lists': return 'リスト';
			case 'noLists': return 'リストはありません';
			case 'note': return 'ノート';
			case 'notes': return 'ノート';
			case 'following': return 'フォロー';
			case 'followers': return 'フォロワー';
			case 'followsYou': return 'フォローされています';
			case 'createList': return 'リスト作成';
			case 'manageLists': return 'リストの管理';
			case 'error': return 'エラー';
			case 'somethingHappened': return '問題が発生しました';
			case 'retry': return '再試行';
			case 'pageLoadError': return 'ページの読み込みに失敗しました。';
			case 'pageLoadErrorDescription': return 'これは通常、ネットワークまたはブラウザキャッシュが原因です。キャッシュをクリアするか、しばらく待ってから再度試してください。';
			case 'serverIsDead': return 'サーバーの応答がありません。しばらく待ってから再度試してください。';
			case 'youShouldUpgradeClient': return 'このページを表示するためには、リロードして新しいバージョンのクライアントをご利用ください。';
			case 'enterListName': return 'リスト名を入力';
			case 'privacy': return 'プライバシー';
			case 'makeFollowManuallyApprove': return 'フォローを承認制にする';
			case 'defaultNoteVisibility': return 'デフォルトの公開範囲';
			case 'follow': return 'フォロー';
			case 'followRequest': return 'フォロー申請';
			case 'followRequests': return 'フォロー申請';
			case 'unfollow': return 'フォロー解除';
			case 'followRequestPending': return 'フォロー許可待ち';
			case 'enterEmoji': return '絵文字を入力';
			case 'renote': return 'Renote';
			case 'unrenote': return 'Renote解除';
			case 'renoted': return 'Renoteしました。';
			case 'cantRenote': return 'この投稿はRenoteできません。';
			case 'cantReRenote': return 'RenoteをRenoteすることはできません。';
			case 'quote': return '引用';
			case 'inChannelRenote': return 'チャンネル内Renote';
			case 'inChannelQuote': return 'チャンネル内引用';
			case 'pinnedNote': return 'ピン留めされたノート';
			case 'pinned': return 'ピン留め';
			case 'you': return 'あなた';
			case 'clickToShow': return 'クリックして表示';
			case 'sensitive': return '閲覧注意';
			case 'add': return '追加';
			case 'reaction': return 'リアクション';
			case 'reactions': return 'リアクション';
			case 'reactionSetting': return 'ピッカーに表示するリアクション';
			case 'reactionSettingDescription2': return 'ドラッグして並び替え、クリックして削除、＋を押して追加します。';
			case 'rememberNoteVisibility': return '公開範囲を記憶する';
			case 'attachCancel': return '添付取り消し';
			case 'markAsSensitive': return '閲覧注意にする';
			case 'unmarkAsSensitive': return '閲覧注意を解除する';
			case 'enterFileName': return 'ファイル名を入力';
			case 'mute': return 'ミュート';
			case 'unmute': return 'ミュート解除';
			case 'renoteMute': return 'リノートをミュート';
			case 'renoteUnmute': return 'リノートのミュートを解除';
			case 'block': return 'ブロック';
			case 'unblock': return 'ブロック解除';
			case 'suspend': return '凍結';
			case 'unsuspend': return '解凍';
			case 'blockConfirm': return 'ブロックしますか？';
			case 'unblockConfirm': return 'ブロック解除しますか？';
			case 'suspendConfirm': return '凍結しますか？';
			case 'unsuspendConfirm': return '解凍しますか？';
			case 'selectList': return 'リストを選択';
			case 'selectChannel': return 'チャンネルを選択';
			case 'selectAntenna': return 'アンテナを選択';
			case 'selectWidget': return 'ウィジェットを選択';
			case 'editWidgets': return 'ウィジェットを編集';
			case 'editWidgetsExit': return '編集を終了';
			case 'customEmojis': return 'カスタム絵文字';
			case 'emoji': return '絵文字';
			case 'emojis': return '絵文字';
			case 'emojiName': return '絵文字名';
			case 'emojiUrl': return '絵文字画像URL';
			case 'addEmoji': return '絵文字を追加';
			case 'settingGuide': return 'おすすめ設定';
			case 'cacheRemoteFiles': return 'リモートのファイルをキャッシュする';
			case 'cacheRemoteFilesDescription': return 'この設定を無効にすると、リモートファイルをキャッシュせず直リンクするようになります。サーバーのストレージを節約できますが、サムネイルが生成されないので通信量が増加します。';
			case 'flagAsBot': return 'Botとして設定';
			case 'flagAsBotDescription': return 'このアカウントがプログラムによって運用される場合は、このフラグをオンにします。オンにすると、反応の連鎖を防ぐためのフラグとして他の開発者に役立ったり、Misskeyのシステム上での扱いがBotに合ったものになります。';
			case 'flagAsCat': return 'にゃああああああああああああああ！！！！！！！！！！！！';
			case 'flagAsCatDescription': return 'にゃにゃにゃ？？';
			case 'flagShowTimelineReplies': return 'タイムラインにノートへの返信を表示する';
			case 'flagShowTimelineRepliesDescription': return 'オンにすると、タイムラインにユーザーのノート以外にもそのユーザーの他のノートへの返信を表示します。';
			case 'autoAcceptFollowed': return 'フォロー中ユーザーからのフォロリクを自動承認';
			case 'addAccount': return 'アカウントを追加';
			case 'reloadAccountsList': return 'アカウントリストの情報を更新';
			case 'loginFailed': return 'ログインに失敗しました';
			case 'showOnRemote': return 'リモートで表示';
			case 'general': return '全般';
			case 'wallpaper': return '壁紙';
			case 'setWallpaper': return '壁紙を設定';
			case 'removeWallpaper': return '壁紙を削除';
			case 'searchWith': return '検索: {q}';
			case 'youHaveNoLists': return 'リストがありません';
			case 'followConfirm': return '{name}をフォローしますか？';
			case 'proxyAccount': return 'プロキシアカウント';
			case 'proxyAccountDescription': return 'プロキシアカウントは、特定の条件下でユーザーのリモートフォローを代行するアカウントです。例えば、ユーザーがリモートユーザーをリストに入れたとき、リストに入れられたユーザーを誰もフォローしていないとアクティビティがサーバーに配達されないため、代わりにプロキシアカウントがフォローするようにします。';
			case 'host': return 'ホスト';
			case 'selectUser': return 'ユーザーを選択';
			case 'recipient': return '宛先';
			case 'annotation': return '注釈';
			case 'federation': return '連合';
			case 'instances': return 'サーバー';
			case 'registeredAt': return '初観測';
			case 'latestRequestReceivedAt': return '直近のリクエスト受信';
			case 'latestStatus': return '直近のステータス';
			case 'storageUsage': return 'ストレージ使用量';
			case 'charts': return 'チャート';
			case 'perHour': return '1時間ごと';
			case 'perDay': return '1日ごと';
			case 'stopActivityDelivery': return 'アクティビティの配送を停止';
			case 'blockThisInstance': return 'このサーバーをブロック';
			case 'operations': return '操作';
			case 'software': return 'ソフトウェア';
			case 'version': return 'バージョン';
			case 'metadata': return 'メタデータ';
			case 'withNFiles': return '{n}つのファイル';
			case 'monitor': return 'モニター';
			case 'jobQueue': return 'ジョブキュー';
			case 'cpuAndMemory': return 'CPUとメモリ';
			case 'network': return 'ネットワーク';
			case 'disk': return 'ディスク';
			case 'instanceInfo': return 'サーバー情報';
			case 'statistics': return '統計';
			case 'clearQueue': return 'キューをクリア';
			case 'clearQueueConfirmTitle': return 'キューをクリアしますか？';
			case 'clearQueueConfirmText': return '未配達の投稿は配送されなくなります。通常この操作を行う必要はありません。';
			case 'clearCachedFiles': return 'キャッシュをクリア';
			case 'clearCachedFilesConfirm': return 'キャッシュされたリモートファイルをすべて削除しますか？';
			case 'blockedInstances': return 'ブロックしたサーバー';
			case 'blockedInstancesDescription': return 'ブロックしたいサーバーのホストを改行で区切って設定します。ブロックされたサーバーは、このサーバーとやり取りできなくなります。サブドメインもブロックされます。';
			case 'muteAndBlock': return 'ミュートとブロック';
			case 'mutedUsers': return 'ミュートしたユーザー';
			case 'blockedUsers': return 'ブロックしたユーザー';
			case 'noUsers': return 'ユーザーはいません';
			case 'editProfile': return 'プロフィールを編集';
			case 'noteDeleteConfirm': return 'このノートを削除しますか？';
			case 'pinLimitExceeded': return 'これ以上ピン留めできません';
			case 'intro': return 'Misskeyのインストールが完了しました！管理者アカウントを作成しましょう。';
			case 'done': return '完了';
			case 'processing': return '処理中';
			case 'preview': return 'プレビュー';
			case 'default_': return 'デフォルト';
			case 'defaultValueIs': return 'デフォルト: {value}';
			case 'noCustomEmojis': return '絵文字はありません';
			case 'noJobs': return 'ジョブはありません';
			case 'federating': return '連合中';
			case 'blocked': return 'ブロック中';
			case 'suspended': return '配信停止';
			case 'all': return '全て';
			case 'subscribing': return '購読中';
			case 'publishing': return '配信中';
			case 'notResponding': return '応答なし';
			case 'instanceFollowing': return 'サーバーのフォロー';
			case 'instanceFollowers': return 'サーバーのフォロワー';
			case 'instanceUsers': return 'サーバーのユーザー';
			case 'changePassword': return 'パスワードを変更';
			case 'security': return 'セキュリティ';
			case 'retypedNotMatch': return '入力が一致しません。';
			case 'currentPassword': return '現在のパスワード';
			case 'newPassword': return '新しいパスワード';
			case 'newPasswordRetype': return '新しいパスワード(再入力)';
			case 'attachFile': return 'ファイルを添付';
			case 'more': return 'もっと！';
			case 'featured': return 'ハイライト';
			case 'usernameOrUserId': return 'ユーザー名かユーザーID';
			case 'noSuchUser': return 'ユーザーが見つかりません';
			case 'lookup': return '照会';
			case 'announcements': return 'お知らせ';
			case 'imageUrl': return '画像URL';
			case 'remove': return '削除';
			case 'removed': return '削除しました';
			case 'removeAreYouSure': return '「{x}」を削除しますか？';
			case 'deleteAreYouSure': return '「{x}」を削除しますか？';
			case 'resetAreYouSure': return 'リセットしますか？';
			case 'saved': return '保存しました';
			case 'messaging': return 'チャット';
			case 'upload': return 'アップロード';
			case 'keepOriginalUploading': return 'オリジナル画像を保持';
			case 'keepOriginalUploadingDescription': return '画像をアップロードする時にオリジナル版を保持します。オフにするとアップロード時にブラウザでWeb公開用画像を生成します。';
			case 'fromDrive': return 'ドライブから';
			case 'fromUrl': return 'URLから';
			case 'uploadFromUrl': return 'URLアップロード';
			case 'uploadFromUrlDescription': return 'アップロードしたいファイルのURL';
			case 'uploadFromUrlRequested': return 'アップロードをリクエストしました';
			case 'uploadFromUrlMayTakeTime': return 'アップロードが完了するまで時間がかかる場合があります。';
			case 'explore': return 'みつける';
			case 'messageRead': return '既読';
			case 'noMoreHistory': return 'これより過去の履歴はありません';
			case 'startMessaging': return 'チャットを開始';
			case 'nUsersRead': return '{n}人が読みました';
			case 'agreeTo': return '{x}に同意';
			case 'agree': return '同意する';
			case 'agreeBelow': return '下記に同意する';
			case 'basicNotesBeforeCreateAccount': return '基本的な注意事項';
			case 'termsOfService': return '利用規約';
			case 'start': return '始める';
			case 'home': return 'ホーム';
			case 'remoteUserCaution': return 'リモートユーザーのため、情報が不完全です。';
			case 'activity': return 'アクティビティ';
			case 'images': return '画像';
			case 'image': return '画像';
			case 'birthday': return '誕生日';
			case 'yearsOld': return '{age}歳';
			case 'registeredDate': return '登録日';
			case 'location': return '場所';
			case 'theme': return 'テーマ';
			case 'themeForLightMode': return 'ライトモードで使うテーマ';
			case 'themeForDarkMode': return 'ダークモードで使うテーマ';
			case 'light': return 'ライト';
			case 'dark': return 'ダーク';
			case 'lightThemes': return '明るいテーマ';
			case 'darkThemes': return '暗いテーマ';
			case 'syncDeviceDarkMode': return 'デバイスのダークモードと同期する';
			case 'drive': return 'ドライブ';
			case 'fileName': return 'ファイル名';
			case 'selectFile': return 'ファイルを選択';
			case 'selectFiles': return 'ファイルを選択';
			case 'selectFolder': return 'フォルダーを選択';
			case 'selectFolders': return 'フォルダーを選択';
			case 'renameFile': return 'ファイル名を変更';
			case 'folderName': return 'フォルダー名';
			case 'createFolder': return 'フォルダーを作成';
			case 'renameFolder': return 'フォルダー名を変更';
			case 'deleteFolder': return 'フォルダーを削除';
			case 'addFile': return 'ファイルを追加';
			case 'emptyDrive': return 'ドライブは空です';
			case 'emptyFolder': return 'フォルダーは空です';
			case 'unableToDelete': return '削除できません';
			case 'inputNewFileName': return '新しいファイル名を入力してください';
			case 'inputNewDescription': return '新しいキャプションを入力してください';
			case 'inputNewFolderName': return '新しいフォルダ名を入力してください';
			case 'circularReferenceFolder': return '移動先のフォルダーは、移動するフォルダーのサブフォルダーです。';
			case 'hasChildFilesOrFolders': return 'このフォルダは空でないため、削除できません。';
			case 'copyUrl': return 'URLをコピー';
			case 'rename': return '名前を変更';
			case 'avatar': return 'アイコン';
			case 'banner': return 'バナー';
			case 'nsfw': return '閲覧注意';
			case 'whenServerDisconnected': return 'サーバーとの接続が失われたとき';
			case 'disconnectedFromServer': return 'サーバーから切断されました';
			case 'reload': return 'リロード';
			case 'doNothing': return 'なにもしない';
			case 'reloadConfirm': return 'リロードしますか？';
			case 'watch': return 'ウォッチ';
			case 'unwatch': return 'ウォッチ解除';
			case 'accept': return '許可';
			case 'reject': return '拒否';
			case 'normal': return '正常';
			case 'instanceName': return 'サーバー名';
			case 'instanceDescription': return 'サーバーの紹介';
			case 'maintainerName': return '管理者の名前';
			case 'maintainerEmail': return '管理者のメールアドレス';
			case 'tosUrl': return '利用規約URL';
			case 'thisYear': return '今年';
			case 'thisMonth': return '今月';
			case 'today': return '今日';
			case 'dayX': return '{day}日';
			case 'monthX': return '{month}月';
			case 'yearX': return '{year}年';
			case 'pages': return 'ページ';
			case 'integration': return '連携';
			case 'connectService': return '接続する';
			case 'disconnectService': return '切断する';
			case 'enableLocalTimeline': return 'ローカルタイムラインを有効にする';
			case 'enableGlobalTimeline': return 'グローバルタイムラインを有効にする';
			case 'disablingTimelinesInfo': return 'これらのタイムラインを無効化しても、利便性のため管理者およびモデレーターは引き続き利用することができます。';
			case 'registration': return '登録';
			case 'enableRegistration': return '誰でも新規登録できるようにする';
			case 'invite': return '招待';
			case 'driveCapacityPerLocalAccount': return 'ローカルユーザーひとりあたりのドライブ容量';
			case 'driveCapacityPerRemoteAccount': return 'リモートユーザーひとりあたりのドライブ容量';
			case 'inMb': return 'メガバイト単位';
			case 'iconUrl': return 'アイコン画像のURL (faviconなど)';
			case 'bannerUrl': return 'バナー画像のURL';
			case 'backgroundImageUrl': return '背景画像のURL';
			case 'basicInfo': return '基本情報';
			case 'pinnedUsers': return 'ピン留めユーザー';
			case 'pinnedUsersDescription': return '「みつける」ページなどにピン留めしたいユーザーを改行で区切って記述します。';
			case 'pinnedPages': return 'ピン留めページ';
			case 'pinnedPagesDescription': return 'サーバーのトップページにピン留めしたいページのパスを改行で区切って記述します。';
			case 'pinnedClipId': return 'ピン留めするクリップのID';
			case 'pinnedNotes': return 'ピン留めされたノート';
			case 'hcaptcha': return 'hCaptcha';
			case 'enableHcaptcha': return 'hCaptchaを有効にする';
			case 'hcaptchaSiteKey': return 'サイトキー';
			case 'hcaptchaSecretKey': return 'シークレットキー';
			case 'recaptcha': return 'reCAPTCHA';
			case 'enableRecaptcha': return 'reCAPTCHAを有効にする';
			case 'recaptchaSiteKey': return 'サイトキー';
			case 'recaptchaSecretKey': return 'シークレットキー';
			case 'turnstile': return 'Turnstile';
			case 'enableTurnstile': return 'Turnstileを有効にする';
			case 'turnstileSiteKey': return 'サイトキー';
			case 'turnstileSecretKey': return 'シークレットキー';
			case 'avoidMultiCaptchaConfirm': return '複数のCaptchaを使用すると干渉を起こす可能性があります。他のCaptchaを無効にしますか？キャンセルして複数のCaptchaを有効化したままにすることも可能です。';
			case 'antennas': return 'アンテナ';
			case 'manageAntennas': return 'アンテナの管理';
			case 'name': return '名前';
			case 'antennaSource': return '受信ソース';
			case 'antennaKeywords': return '受信キーワード';
			case 'antennaExcludeKeywords': return '除外キーワード';
			case 'antennaKeywordsDescription': return 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります';
			case 'notifyAntenna': return '新しいノートを通知する';
			case 'withFileAntenna': return 'ファイルが添付されたノートのみ';
			case 'enableServiceworker': return 'ブラウザへのプッシュ通知を有効にする';
			case 'antennaUsersDescription': return 'ユーザー名を改行で区切って指定します';
			case 'caseSensitive': return '大文字小文字を区別する';
			case 'withReplies': return '返信を含む';
			case 'connectedTo': return '次のアカウントに接続されています';
			case 'notesAndReplies': return '投稿と返信';
			case 'withFiles': return 'ファイル付き';
			case 'silence': return 'サイレンス';
			case 'silenceConfirm': return 'サイレンスしますか？';
			case 'unsilence': return 'サイレンス解除';
			case 'unsilenceConfirm': return 'サイレンス解除しますか？';
			case 'popularUsers': return '人気のユーザー';
			case 'recentlyUpdatedUsers': return '最近投稿したユーザー';
			case 'recentlyRegisteredUsers': return '最近登録したユーザー';
			case 'recentlyDiscoveredUsers': return '最近発見されたユーザー';
			case 'exploreUsersCount': return '{count}のユーザーがいます';
			case 'exploreFediverse': return 'Fediverseを探索';
			case 'popularTags': return '人気のタグ';
			case 'userList': return 'リスト';
			case 'about': return '情報';
			case 'aboutMisskey': return 'Misskeyについて';
			case 'administrator': return '管理者';
			case 'token': return '確認コード';
			case 'twofa': return '二要素認証';
			case 'totp': return '認証アプリ';
			case 'totpDescription': return '認証アプリを使ってワンタイムパスワードを入力';
			case 'moderator': return 'モデレーター';
			case 'moderation': return 'モデレーション';
			case 'nUsersMentioned': return '{n}人が投稿';
			case 'securityKeyAndPasskey': return 'セキュリティキー・パスキー';
			case 'securityKey': return 'セキュリティキー';
			case 'lastUsed': return '最後の使用';
			case 'lastUsedAt': return '最後の使用: {t}';
			case 'unregister': return '登録を解除';
			case 'passwordLessLogin': return 'パスワードレスログイン';
			case 'passwordLessLoginDescription': return 'パスワードを使用せず、セキュリティキーやパスキーなどのみでログインします';
			case 'resetPassword': return 'パスワードをリセット';
			case 'newPasswordIs': return '新しいパスワードは「{password}」です';
			case 'reduceUiAnimation': return 'UIのアニメーションを減らす';
			case 'share': return '共有';
			case 'notFound': return '見つかりません';
			case 'notFoundDescription': return '指定されたURLに該当するページはありませんでした。';
			case 'uploadFolder': return '既定アップロード先';
			case 'cacheClear': return 'キャッシュを削除';
			case 'markAsReadAllNotifications': return 'すべての通知を既読にする';
			case 'markAsReadAllUnreadNotes': return 'すべての投稿を既読にする';
			case 'markAsReadAllTalkMessages': return 'すべてのチャットを既読にする';
			case 'help': return 'ヘルプ';
			case 'inputMessageHere': return 'ここにメッセージを入力';
			case 'close': return '閉じる';
			case 'invites': return '招待';
			case 'members': return 'メンバー';
			case 'transfer': return '譲渡';
			case 'title': return 'タイトル';
			case 'text': return 'テキスト';
			case 'enable': return '有効にする';
			case 'next': return '次';
			case 'retype': return '再入力';
			case 'noteOf': return '{user}のノート';
			case 'quoteAttached': return '引用付き';
			case 'quoteQuestion': return '引用として添付しますか？';
			case 'noMessagesYet': return 'まだチャットはありません';
			case 'newMessageExists': return '新しいメッセージがあります';
			case 'onlyOneFileCanBeAttached': return 'メッセージに添付できるファイルはひとつです';
			case 'signinRequired': return '続行する前に、サインアップまたはサインインが必要です';
			case 'invitations': return '招待';
			case 'invitationCode': return '招待コード';
			case 'checking': return '確認しています';
			case 'available': return '利用できます';
			case 'unavailable': return '利用できません';
			case 'usernameInvalidFormat': return 'a~z、A~Z、0~9、_が使えます';
			case 'tooShort': return '短すぎます';
			case 'tooLong': return '長すぎます';
			case 'weakPassword': return '弱いパスワード';
			case 'normalPassword': return '普通のパスワード';
			case 'strongPassword': return '強いパスワード';
			case 'passwordMatched': return '一致しました';
			case 'passwordNotMatched': return '一致していません';
			case 'signinWith': return '{x}でログイン';
			case 'signinFailed': return 'ログインできませんでした。ユーザー名とパスワードを確認してください。';
			case 'or': return 'もしくは';
			case 'language': return '言語';
			case 'uiLanguage': return 'UIの表示言語';
			case 'aboutX': return '{x}について';
			case 'emojiStyle': return '絵文字のスタイル';
			case 'native': return 'ネイティブ';
			case 'disableDrawer': return 'メニューをドロワーで表示しない';
			case 'showNoteActionsOnlyHover': return 'ノートのアクションをホバー時のみ表示する';
			case 'noHistory': return '履歴はありません';
			case 'signinHistory': return 'ログイン履歴';
			case 'enableAdvancedMfm': return '高度なMFMを有効にする';
			case 'enableAnimatedMfm': return '動きのあるMFMを有効にする';
			case 'doing': return 'やっています';
			case 'category': return 'カテゴリ';
			case 'tags': return 'タグ';
			case 'docSource': return 'このドキュメントのソース';
			case 'createAccount': return 'アカウントを作成';
			case 'existingAccount': return '既存のアカウント';
			case 'regenerate': return '再生成';
			case 'fontSize': return 'フォントサイズ';
			case 'mediaListWithOneImageAppearance': return '画像が1枚のみのメディアリストの高さ';
			case 'limitTo': return '{x}を上限に';
			case 'noFollowRequests': return 'フォロー申請はありません';
			case 'openImageInNewTab': return '画像を新しいタブで開く';
			case 'dashboard': return 'ダッシュボード';
			case 'local': return 'ローカル';
			case 'remote': return 'リモート';
			case 'total': return '合計';
			case 'weekOverWeekChanges': return '前週比';
			case 'dayOverDayChanges': return '前日比';
			case 'appearance': return 'アピアランス';
			case 'clientSettings': return 'クライアント設定';
			case 'accountSettings': return 'アカウント設定';
			case 'promotion': return 'プロモーション';
			case 'promote': return 'プロモート';
			case 'numberOfDays': return '日数';
			case 'hideThisNote': return 'このノートを非表示';
			case 'showFeaturedNotesInTimeline': return 'タイムラインにおすすめのノートを表示する';
			case 'objectStorage': return 'オブジェクトストレージ';
			case 'useObjectStorage': return 'オブジェクトストレージを使用';
			case 'objectStorageBaseUrl': return 'Base URL';
			case 'objectStorageBaseUrlDesc': return '参照に使用するURL。CDNやProxyを使用している場合はそのURL、S3: \'https://<bucket>.s3.amazonaws.com\'、GCS等: \'https://storage.googleapis.com/<bucket>\'。';
			case 'objectStorageBucket': return 'Bucket';
			case 'objectStorageBucketDesc': return '使用サービスのbucket名を指定してください。';
			case 'objectStoragePrefix': return 'Prefix';
			case 'objectStoragePrefixDesc': return 'このprefixのディレクトリ下に格納されます。';
			case 'objectStorageEndpoint': return 'Endpoint';
			case 'objectStorageEndpointDesc': return 'S3の場合は空、それ以外の場合は各サービスのendpointを指定してください。\'<host>\'または\'<host>:<port>\'のように指定します。';
			case 'objectStorageRegion': return 'Region';
			case 'objectStorageRegionDesc': return '\'xx-east-1\'のようなregionを指定してください。使用サービスにregionの概念がない場合は\'us-east-1\'にしてください。AWS設定ファイルまたは環境変数を参照する場合は空にしてください。';
			case 'objectStorageUseSSL': return 'SSLを使用する';
			case 'objectStorageUseSSLDesc': return 'API接続にhttpsを使用しない場合はオフにしてください';
			case 'objectStorageUseProxy': return 'Proxyを利用する';
			case 'objectStorageUseProxyDesc': return 'API接続にproxyを利用しない場合はオフにしてください';
			case 'objectStorageSetPublicRead': return 'アップロード時に\'public-read\'を設定する';
			case 's3ForcePathStyleDesc': return 's3ForcePathStyleを有効にすると、バケット名をURLのホスト名ではなくパスの一部として指定することを強制します。セルフホストされたMinioなどの使用時に有効にする必要がある場合があります。';
			case 'serverLogs': return 'サーバーログ';
			case 'deleteAll': return '全て削除';
			case 'showFixedPostForm': return 'タイムライン上部に投稿フォームを表示する';
			case 'showFixedPostFormInChannel': return 'タイムライン上部に投稿フォームを表示する(チャンネル)';
			case 'newNoteRecived': return '新しいノートがあります';
			case 'sounds': return 'サウンド';
			case 'sound': return 'サウンド';
			case 'listen': return '聴く';
			case 'none': return 'なし';
			case 'showInPage': return 'ページで表示';
			case 'popout': return 'ポップアウト';
			case 'volume': return '音量';
			case 'masterVolume': return 'マスター音量';
			case 'details': return '詳細';
			case 'chooseEmoji': return '絵文字を選択';
			case 'unableToProcess': return '操作を完了できません';
			case 'recentUsed': return '最近使用';
			case 'install': return 'インストール';
			case 'uninstall': return 'アンインストール';
			case 'installedApps': return 'インストールされたアプリ';
			case 'nothing': return 'ありません';
			case 'installedDate': return 'インストール日時';
			case 'lastUsedDate': return '最終使用日時';
			case 'state': return '状態';
			case 'sort': return 'ソート';
			case 'ascendingOrder': return '昇順';
			case 'descendingOrder': return '降順';
			case 'scratchpad': return 'スクラッチパッド';
			case 'scratchpadDescription': return 'スクラッチパッドは、AiScriptの実験環境を提供します。Misskeyと対話するコードの記述、実行、結果の確認ができます。';
			case 'output': return '出力';
			case 'script': return 'スクリプト';
			case 'disablePagesScript': return 'Pagesのスクリプトを無効にする';
			case 'updateRemoteUser': return 'リモートユーザー情報の更新';
			case 'deleteAllFiles': return 'すべてのファイルを削除';
			case 'deleteAllFilesConfirm': return 'すべてのファイルを削除しますか？';
			case 'removeAllFollowing': return 'フォローを全解除';
			case 'removeAllFollowingDescription': return '{host}からのフォローをすべて解除します。そのサーバーがもう存在しなくなった場合などに実行してください。';
			case 'userSuspended': return 'このユーザーは凍結されています。';
			case 'userSilenced': return 'このユーザーはサイレンスされています。';
			case 'yourAccountSuspendedTitle': return 'アカウントが凍結されています';
			case 'yourAccountSuspendedDescription': return 'このアカウントは、サーバーの利用規約に違反したなどの理由により、凍結されています。詳細については管理者までお問い合わせください。新しいアカウントを作らないでください。';
			case 'tokenRevoked': return 'トークンが無効です';
			case 'tokenRevokedDescription': return 'ログイントークンが失効しています。ログインし直してください。';
			case 'accountDeleted': return 'アカウントは削除されています';
			case 'accountDeletedDescription': return 'このアカウントは削除されています。';
			case 'menu': return 'メニュー';
			case 'divider': return '分割線';
			case 'addItem': return '項目を追加';
			case 'rearrange': return '並び替え';
			case 'relays': return 'リレー';
			case 'addRelay': return 'リレーの追加';
			case 'inboxUrl': return 'inboxのURL';
			case 'addedRelays': return '追加済みのリレー';
			case 'serviceworkerInfo': return 'プッシュ通知を行うには有効にする必要があります。';
			case 'deletedNote': return '削除された投稿';
			case 'invisibleNote': return '非公開の投稿';
			case 'enableInfiniteScroll': return '自動でもっと見る';
			case 'visibility': return '公開範囲';
			case 'poll': return 'アンケート';
			case 'useCw': return '内容を隠す';
			case 'enablePlayer': return 'プレイヤーを開く';
			case 'disablePlayer': return 'プレイヤーを閉じる';
			case 'expandTweet': return 'ツイートを展開する';
			case 'themeEditor': return 'テーマエディター';
			case 'description': return '説明';
			case 'describeFile': return 'キャプションを付ける';
			case 'enterFileDescription': return 'キャプションを入力';
			case 'author': return '作者';
			case 'leaveConfirm': return '未保存の変更があります。破棄しますか？';
			case 'manage': return '管理';
			case 'plugins': return 'プラグイン';
			case 'preferencesBackups': return '設定のバックアップ';
			case 'deck': return 'デッキ';
			case 'undeck': return 'デッキ解除';
			case 'useBlurEffectForModal': return 'モーダルにぼかし効果を使用';
			case 'useFullReactionPicker': return 'フル機能リアクションピッカーを使用';
			case 'width': return '幅';
			case 'height': return '高さ';
			case 'large': return '大';
			case 'medium': return '中';
			case 'small': return '小';
			case 'generateAccessToken': return 'アクセストークンの発行';
			case 'permission': return '権限';
			case 'enableAll': return '全て有効にする';
			case 'disableAll': return '全て無効にする';
			case 'tokenRequested': return 'アカウントへのアクセス許可';
			case 'pluginTokenRequestedDescription': return 'このプラグインはここで設定した権限を行使できるようになります。';
			case 'notificationType': return '通知の種類';
			case 'edit': return '編集';
			case 'emailServer': return 'メールサーバー';
			case 'enableEmail': return 'メール配信機能を有効化する';
			case 'emailConfigInfo': return 'メールアドレスの確認やパスワードリセットの際に使います';
			case 'email': return 'メール';
			case 'emailAddress': return 'メールアドレス';
			case 'smtpConfig': return 'SMTP サーバーの設定';
			case 'smtpHost': return 'ホスト';
			case 'smtpPort': return 'ポート';
			case 'smtpUser': return 'ユーザー名';
			case 'smtpPass': return 'パスワード';
			case 'emptyToDisableSmtpAuth': return 'ユーザー名とパスワードを空欄にすることで、SMTP認証を無効化出来ます';
			case 'smtpSecure': return 'SMTP 接続に暗黙的なSSL/TLSを使用する';
			case 'smtpSecureInfo': return 'STARTTLS使用時はオフにします。';
			case 'testEmail': return '配信テスト';
			case 'wordMute': return 'ワードミュート';
			case 'regexpError': return '正規表現エラー';
			case 'regexpErrorDescription': return '{tab}ワードミュートの{line}行目の正規表現にエラーが発生しました:';
			case 'instanceMute': return 'サーバーミュート';
			case 'userSaysSomething': return '{name}が何かを言いました';
			case 'makeActive': return 'アクティブにする';
			case 'display': return '表示';
			case 'copy': return 'コピー';
			case 'metrics': return 'メトリクス';
			case 'overview': return '概要';
			case 'logs': return 'ログ';
			case 'delayed': return '遅延';
			case 'database': return 'データベース';
			case 'channel': return 'チャンネル';
			case 'create': return '作成';
			case 'notificationSetting': return '通知設定';
			case 'notificationSettingDesc': return '表示する通知の種別を選択してください。';
			case 'useGlobalSetting': return 'グローバル設定を使う';
			case 'useGlobalSettingDesc': return 'オンにすると、アカウントの通知設定が使用されます。オフにすると、個別に設定できるようになります。';
			case 'other': return 'その他';
			case 'regenerateLoginToken': return 'ログイントークンを再生成';
			case 'regenerateLoginTokenDescription': return 'ログインに使用される内部トークンを再生成します。通常この操作を行う必要はありません。再生成すると、全てのデバイスでログアウトされます。';
			case 'setMultipleBySeparatingWithSpace': return 'スペースで区切って複数設定できます。';
			case 'fileIdOrUrl': return 'ファイルIDまたはURL';
			case 'behavior': return '動作';
			case 'sample': return 'サンプル';
			case 'abuseReports': return '通報';
			case 'reportAbuse': return '通報';
			case 'reportAbuseOf': return '{name}を通報する';
			case 'fillAbuseReportDescription': return '通報理由の詳細を記入してください。対象のノートがある場合はそのURLも記入してください。';
			case 'abuseReported': return '内容が送信されました。ご報告ありがとうございました。';
			case 'reporter': return '通報者';
			case 'reporteeOrigin': return '通報先';
			case 'reporterOrigin': return '通報元';
			case 'forwardReport': return 'リモートサーバーに通報を転送する';
			case 'forwardReportIsAnonymous': return 'リモートサーバーからはあなたの情報は見れず、匿名のシステムアカウントとして表示されます。';
			case 'send': return '送信';
			case 'abuseMarkAsResolved': return '対応済みにする';
			case 'openInNewTab': return '新しいタブで開く';
			case 'openInSideView': return 'サイドビューで開く';
			case 'defaultNavigationBehaviour': return 'デフォルトのナビゲーション';
			case 'editTheseSettingsMayBreakAccount': return 'これらの設定を編集するとアカウントが破損する可能性があります。';
			case 'instanceTicker': return 'ノートのサーバー情報';
			case 'waitingFor': return '{x}を待っています';
			case 'random': return 'ランダム';
			case 'system': return 'システム';
			case 'switchUi': return 'UI切り替え';
			case 'desktop': return 'デスクトップ';
			case 'clip': return 'クリップ';
			case 'createNew': return '新規作成';
			case 'optional': return '任意';
			case 'createNewClip': return '新しいクリップを作成';
			case 'unclip': return 'クリップ解除';
			case 'confirmToUnclipAlreadyClippedNote': return 'このノートはすでにクリップ「{name}」に含まれています。ノートをこのクリップから除外しますか？';
			case 'public': return 'パブリック';
			case 'i18nInfo': return 'Misskeyは有志によって様々な言語に翻訳されています。{link}で翻訳に協力できます。';
			case 'manageAccessTokens': return 'アクセストークンの管理';
			case 'accountInfo': return 'アカウント情報';
			case 'notesCount': return 'ノートの数';
			case 'repliesCount': return '返信した数';
			case 'renotesCount': return 'Renoteした数';
			case 'repliedCount': return '返信された数';
			case 'renotedCount': return 'Renoteされた数';
			case 'followingCount': return 'フォロー数';
			case 'followersCount': return 'フォロワー数';
			case 'sentReactionsCount': return 'リアクションした数';
			case 'receivedReactionsCount': return 'リアクションされた数';
			case 'pollVotesCount': return 'アンケートに投票した数';
			case 'pollVotedCount': return 'アンケートに投票された数';
			case 'yes': return 'はい';
			case 'no': return 'いいえ';
			case 'driveFilesCount': return 'ドライブのファイル数';
			case 'driveUsage': return 'ドライブ使用量';
			case 'noCrawle': return 'クローラーによるインデックスを拒否';
			case 'noCrawleDescription': return '外部の検索エンジンにあなたのユーザーページ、ノート、Pagesなどのコンテンツを登録(インデックス)しないよう要求します。';
			case 'lockedAccountInfo': return 'フォローを承認制にしても、ノートの公開範囲を「フォロワー」にしない限り、誰でもあなたのノートを見ることができます。';
			case 'alwaysMarkSensitive': return 'デフォルトでメディアを閲覧注意にする';
			case 'loadRawImages': return '添付画像のサムネイルをオリジナル画質にする';
			case 'disableShowingAnimatedImages': return 'アニメーション画像を再生しない';
			case 'verificationEmailSent': return '確認のメールを送信しました。メールに記載されたリンクにアクセスして、設定を完了してください。';
			case 'notSet': return '未設定';
			case 'emailVerified': return 'メールアドレスが確認されました';
			case 'noteFavoritesCount': return 'お気に入りノートの数';
			case 'pageLikesCount': return 'Pageにいいねした数';
			case 'pageLikedCount': return 'Pageにいいねされた数';
			case 'contact': return '連絡先';
			case 'useSystemFont': return 'システムのデフォルトのフォントを使う';
			case 'clips': return 'クリップ';
			case 'experimentalFeatures': return '実験的機能';
			case 'experimental': return '実験的';
			case 'thisIsExperimentalFeature': return 'これは実験的な機能です。仕様が変更されたり、正常に動作しなかったりする可能性があります。';
			case 'developer': return '開発者';
			case 'makeExplorable': return 'アカウントを見つけやすくする';
			case 'makeExplorableDescription': return 'オフにすると、「みつける」にアカウントが載らなくなります。';
			case 'showGapBetweenNotesInTimeline': return 'タイムラインのノートを離して表示';
			case 'duplicate': return '複製';
			case 'left': return '左';
			case 'center': return '中央';
			case 'wide': return '広い';
			case 'narrow': return '狭い';
			case 'reloadToApplySetting': return '設定はページリロード後に反映されます。今すぐリロードしますか？';
			case 'needReloadToApply': return '反映には再起動が必要です。';
			case 'showTitlebar': return 'タイトルバーを表示する';
			case 'clearCache': return 'キャッシュをクリア';
			case 'onlineUsersCount': return '{n}人がオンライン';
			case 'nUsers': return '{n}ユーザー';
			case 'nNotes': return '{n}ノート';
			case 'sendErrorReports': return 'エラーリポートを送信';
			case 'sendErrorReportsDescription': return 'オンにすると、問題が発生したときにエラーの詳細情報がMisskeyに共有され、ソフトウェアの品質向上に役立てることができます。エラー情報には、OSのバージョン、ブラウザの種類、行動履歴などが含まれます。';
			case 'myTheme': return 'マイテーマ';
			case 'backgroundColor': return '背景';
			case 'accentColor': return 'アクセント';
			case 'textColor': return '文字';
			case 'saveAs': return '名前を付けて保存';
			case 'advanced': return '高度';
			case 'advancedSettings': return '高度な設定';
			case 'value': return '値';
			case 'createdAt': return '作成日時';
			case 'updatedAt': return '更新日時';
			case 'saveConfirm': return '保存しますか？';
			case 'deleteConfirm': return '削除しますか？';
			case 'invalidValue': return '有効な値ではありません。';
			case 'registry': return 'レジストリ';
			case 'closeAccount': return 'アカウントを閉鎖する';
			case 'currentVersion': return '現在のバージョン';
			case 'latestVersion': return '最新のバージョン';
			case 'youAreRunningUpToDateClient': return 'お使いのクライアントは最新です。';
			case 'newVersionOfClientAvailable': return '新しいバージョンのクライアントが利用可能です。';
			case 'usageAmount': return '使用量';
			case 'capacity': return '容量';
			case 'inUse': return '使用中';
			case 'editCode': return 'コードを編集';
			case 'apply': return '適用';
			case 'receiveAnnouncementFromInstance': return 'サーバーからのお知らせを受け取る';
			case 'emailNotification': return 'メール通知';
			case 'publish': return '公開';
			case 'inChannelSearch': return 'チャンネル内検索';
			case 'useReactionPickerForContextMenu': return '右クリックでリアクションピッカーを開く';
			case 'typingUsers': return '{users}が入力中';
			case 'jumpToSpecifiedDate': return '特定の日付にジャンプ';
			case 'showingPastTimeline': return '過去のタイムラインを表示しています';
			case 'clear': return 'クリア';
			case 'markAllAsRead': return '全て既読にする';
			case 'goBack': return '戻る';
			case 'unlikeConfirm': return 'いいね解除しますか？';
			case 'fullView': return 'フルビュー';
			case 'quitFullView': return 'フルビュー解除';
			case 'addDescription': return '説明を追加';
			case 'userPagePinTip': return '個々のノートのメニューから「ピン留め」を選択することで、ここにノートを表示しておくことができます。';
			case 'notSpecifiedMentionWarning': return '宛先に含まれていないメンションがあります';
			case 'info': return '情報';
			case 'userInfo': return 'ユーザー情報';
			case 'unknown': return '不明';
			case 'onlineStatus': return 'オンライン状態';
			case 'hideOnlineStatus': return 'オンライン状態を隠す';
			case 'hideOnlineStatusDescription': return 'オンライン状態を隠すと、検索などの一部機能において利便性が低下することがあります。';
			case 'online': return 'オンライン';
			case 'active': return 'アクティブ';
			case 'offline': return 'オフライン';
			case 'notRecommended': return '非推奨';
			case 'botProtection': return 'Botプロテクション';
			case 'instanceBlocking': return 'サーバーブロック';
			case 'selectAccount': return 'アカウントを選択';
			case 'switchAccount': return 'アカウントを切り替え';
			case 'enabled': return '有効';
			case 'disabled': return '無効';
			case 'quickAction': return 'クイックアクション';
			case 'user': return 'ユーザー';
			case 'administration': return '管理';
			case 'accounts': return 'アカウント';
			case 'switch_': return '切り替え';
			case 'noMaintainerInformationWarning': return '管理者情報が設定されていません。';
			case 'noBotProtectionWarning': return 'Botプロテクションが設定されていません。';
			case 'configure': return '設定する';
			case 'postToGallery': return 'ギャラリーへ投稿';
			case 'postToHashtag': return 'このハッシュタグで投稿';
			case 'gallery': return 'ギャラリー';
			case 'recentPosts': return '最近の投稿';
			case 'popularPosts': return '人気の投稿';
			case 'shareWithNote': return 'ノートで共有';
			case 'ads': return '広告';
			case 'expiration': return '期限';
			case 'startingperiod': return '開始期間';
			case 'memo': return 'メモ';
			case 'priority': return '優先度';
			case 'high': return '高';
			case 'middle': return '中';
			case 'low': return '低';
			case 'emailNotConfiguredWarning': return 'メールアドレスの設定がされていません。';
			case 'ratio': return '比率';
			case 'previewNoteText': return '本文をプレビュー';
			case 'customCss': return 'カスタムCSS';
			case 'customCssWarn': return 'この設定は必ず知識のある方が行ってください。不適切な設定を行うとクライアントが正常に使用できなくなる恐れがあります。';
			case 'global': return 'グローバル';
			case 'squareAvatars': return 'アイコンを四角形で表示';
			case 'sent': return '送信';
			case 'received': return '受信';
			case 'searchResult': return '検索結果';
			case 'hashtags': return 'ハッシュタグ';
			case 'troubleshooting': return 'トラブルシューティング';
			case 'useBlurEffect': return 'UIにぼかし効果を使用';
			case 'learnMore': return '詳しく';
			case 'misskeyUpdated': return 'Misskeyが更新されました！';
			case 'whatIsNew': return '更新情報を見る';
			case 'translate': return '翻訳';
			case 'translatedFrom': return '{x}から翻訳';
			case 'accountDeletionInProgress': return 'アカウントの削除が進行中です';
			case 'usernameInfo': return 'サーバー上であなたのアカウントを一意に識別するための名前。アルファベット(a~z, A~Z)、数字(0~9)、およびアンダーバー(_)が使用できます。ユーザー名は後から変更することは出来ません。';
			case 'aiChanMode': return '藍モード';
			case 'devMode': return '開発者モード';
			case 'keepCw': return 'CWを維持する';
			case 'pubSub': return 'Pub/Subのアカウント';
			case 'lastCommunication': return '直近の通信';
			case 'resolved': return '解決済み';
			case 'unresolved': return '未解決';
			case 'breakFollow': return 'フォロワーを解除';
			case 'breakFollowConfirm': return 'フォロワー解除しますか？';
			case 'itsOn': return 'オンになっています';
			case 'itsOff': return 'オフになっています';
			case 'on': return 'オン';
			case 'off': return 'オフ';
			case 'emailRequiredForSignup': return 'アカウント登録にメールアドレスを必須にする';
			case 'unread': return '未読';
			case 'filter': return 'フィルタ';
			case 'controlPanel': return 'コントロールパネル';
			case 'manageAccounts': return 'アカウントを管理';
			case 'makeReactionsPublic': return 'リアクション一覧を公開する';
			case 'makeReactionsPublicDescription': return 'あなたがしたリアクション一覧を誰でも見れるようにします。';
			case 'classic': return 'クラシック';
			case 'muteThread': return 'スレッドをミュート';
			case 'unmuteThread': return 'スレッドのミュートを解除';
			case 'ffVisibility': return 'つながりの公開範囲';
			case 'ffVisibilityDescription': return '自分のフォロー/フォロワー情報の公開範囲を設定できます。';
			case 'continueThread': return 'さらにスレッドを見る';
			case 'deleteAccountConfirm': return 'アカウントが削除されます。よろしいですか？';
			case 'incorrectPassword': return 'パスワードが間違っています。';
			case 'voteConfirm': return '「{choice}」に投票しますか？';
			case 'hide': return '隠す';
			case 'useDrawerReactionPickerForMobile': return 'モバイルデバイスのときドロワーで表示';
			case 'welcomeBackWithName': return 'おかえりなさい、{name}さん';
			case 'clickToFinishEmailVerification': return '[{ok}]を押して、メールアドレスの確認を完了してください。';
			case 'overridedDeviceKind': return 'デバイスタイプ';
			case 'smartphone': return 'スマートフォン';
			case 'tablet': return 'タブレット';
			case 'auto': return '自動';
			case 'themeColor': return 'テーマカラー';
			case 'size': return 'サイズ';
			case 'numberOfColumn': return '列の数';
			case 'searchByGoogle': return '検索';
			case 'instanceDefaultLightTheme': return 'サーバーデフォルトのライトテーマ';
			case 'instanceDefaultDarkTheme': return 'サーバーデフォルトのダークテーマ';
			case 'instanceDefaultThemeDescription': return 'オブジェクト形式のテーマコードを記入します。';
			case 'mutePeriod': return 'ミュートする期限';
			case 'period': return '期限';
			case 'indefinitely': return '無期限';
			case 'tenMinutes': return '10分';
			case 'oneHour': return '1時間';
			case 'oneDay': return '1日';
			case 'oneWeek': return '1週間';
			case 'oneMonth': return '1ヶ月';
			case 'reflectMayTakeTime': return '反映されるまで時間がかかる場合があります。';
			case 'failedToFetchAccountInformation': return 'アカウント情報の取得に失敗しました';
			case 'rateLimitExceeded': return 'レート制限を超えました';
			case 'cropImage': return '画像のクロップ';
			case 'cropImageAsk': return '画像をクロップしますか？';
			case 'cropYes': return 'クロップする';
			case 'cropNo': return 'そのまま使う';
			case 'file': return 'ファイル';
			case 'recentNHours': return '直近{n}時間';
			case 'recentNDays': return '直近{n}日';
			case 'noEmailServerWarning': return 'メールサーバーの設定がされていません。';
			case 'thereIsUnresolvedAbuseReportWarning': return '未対応の通報があります。';
			case 'recommended': return '推奨';
			case 'check': return 'チェック';
			case 'driveCapOverrideLabel': return 'このユーザーのドライブ容量上限を変更';
			case 'driveCapOverrideCaption': return '0以下を指定すると解除されます。';
			case 'requireAdminForView': return '閲覧するには管理者アカウントでログインしている必要があります。';
			case 'isSystemAccount': return 'システムにより自動で作成・管理されているアカウントです。';
			case 'typeToConfirm': return 'この操作を行うには {x} と入力してください';
			case 'deleteAccount': return 'アカウント削除';
			case 'document': return 'ドキュメント';
			case 'numberOfPageCache': return 'ページキャッシュ数';
			case 'numberOfPageCacheDescription': return '多くすると利便性が向上しますが、負荷とメモリ使用量が増えます。';
			case 'logoutConfirm': return 'ログアウトしますか？';
			case 'lastActiveDate': return '最終利用日時';
			case 'statusbar': return 'ステータスバー';
			case 'pleaseSelect': return '選択してください';
			case 'reverse': return '反転';
			case 'colored': return '色付き';
			case 'refreshInterval': return '更新間隔';
			case 'label': return 'ラベル';
			case 'type': return 'タイプ';
			case 'speed': return '速度';
			case 'slow': return '遅い';
			case 'fast': return '速い';
			case 'sensitiveMediaDetection': return 'センシティブなメディアの検出';
			case 'localOnly': return 'ローカルのみ';
			case 'remoteOnly': return 'リモートのみ';
			case 'failedToUpload': return 'アップロード失敗';
			case 'cannotUploadBecauseInappropriate': return '不適切な内容を含む可能性があると判定されたためアップロードできません。';
			case 'cannotUploadBecauseNoFreeSpace': return 'ドライブの空き容量が無いためアップロードできません。';
			case 'cannotUploadBecauseExceedsFileSizeLimit': return 'ファイルサイズの制限を超えているためアップロードできません。';
			case 'beta': return 'ベータ';
			case 'enableAutoSensitive': return '自動NSFW判定';
			case 'enableAutoSensitiveDescription': return '利用可能な場合は、機械学習を利用して自動でメディアにNSFWフラグを設定します。この機能をオフにしても、サーバーによっては自動で設定されることがあります。';
			case 'activeEmailValidationDescription': return 'ユーザーのメールアドレスのバリデーションを、捨てアドかどうかや実際に通信可能かどうかなどを判定しより積極的に行います。オフにすると単に文字列として正しいかどうかのみチェックされます。';
			case 'navbar': return 'ナビゲーションバー';
			case 'shuffle': return 'シャッフル';
			case 'account': return 'アカウント';
			case 'move': return '移動';
			case 'pushNotification': return 'プッシュ通知';
			case 'subscribePushNotification': return 'プッシュ通知を有効化';
			case 'unsubscribePushNotification': return 'プッシュ通知を停止する';
			case 'pushNotificationAlreadySubscribed': return 'プッシュ通知は有効です';
			case 'pushNotificationNotSupported': return 'ブラウザかサーバーがプッシュ通知に非対応';
			case 'sendPushNotificationReadMessage': return '通知が既読になったらプッシュ通知を削除する';
			case 'sendPushNotificationReadMessageCaption': return '端末の電池消費量が増加する可能性があります。';
			case 'windowMaximize': return '最大化';
			case 'windowMinimize': return '最小化';
			case 'windowRestore': return '元に戻す';
			case 'caption': return 'キャプション';
			case 'loggedInAsBot': return 'Botアカウントでログイン中';
			case 'tools': return 'ツール';
			case 'cannotLoad': return '読み込めません';
			case 'numberOfProfileView': return 'プロフィール表示回数';
			case 'like': return 'いいね！';
			case 'unlike': return 'いいねを解除';
			case 'numberOfLikes': return 'いいね数';
			case 'show': return '表示';
			case 'neverShow': return '今後表示しない';
			case 'remindMeLater': return 'また後で';
			case 'didYouLikeMisskey': return 'Misskeyを気に入っていただけましたか？';
			case 'pleaseDonate': return 'Misskeyは{host}が使用している無料のソフトウェアです。これからも開発を続けられるように、ぜひ寄付をお願いします！';
			case 'roles': return 'ロール';
			case 'role': return 'ロール';
			case 'noRole': return 'ロールはありません';
			case 'normalUser': return '一般ユーザー';
			case 'undefined': return '未定義';
			case 'assign': return 'アサイン';
			case 'unassign': return 'アサインを解除';
			case 'color': return '色';
			case 'manageCustomEmojis': return 'カスタム絵文字の管理';
			case 'youCannotCreateAnymore': return 'これ以上作成することはできません。';
			case 'cannotPerformTemporary': return '一時的に利用できません';
			case 'cannotPerformTemporaryDescription': return '操作回数が制限を超過するため一時的に利用できません。しばらく時間を置いてから再度お試しください。';
			case 'invalidParamError': return 'パラメータエラー';
			case 'invalidParamErrorDescription': return 'リクエストパラメータに問題があります。通常これはバグですが、入力した文字数が多すぎる等の可能性もあります。';
			case 'permissionDeniedError': return '操作が拒否されました';
			case 'permissionDeniedErrorDescription': return 'このアカウントにはこの操作を行うための権限がありません。';
			case 'preset': return 'プリセット';
			case 'selectFromPresets': return 'プリセットから選択';
			case 'achievements': return '実績';
			case 'gotInvalidResponseError': return 'サーバーの応答が無効です';
			case 'gotInvalidResponseErrorDescription': return 'サーバーがダウンまたはメンテナンスしている可能性があります。しばらくしてから再度お試しください。';
			case 'thisPostMayBeAnnoying': return 'この投稿は迷惑になる可能性があります。';
			case 'thisPostMayBeAnnoyingHome': return 'ホームに投稿';
			case 'thisPostMayBeAnnoyingCancel': return 'やめる';
			case 'thisPostMayBeAnnoyingIgnore': return 'このまま投稿';
			case 'collapseRenotes': return '見たことのあるRenoteを省略して表示';
			case 'internalServerError': return 'サーバー内部エラー';
			case 'internalServerErrorDescription': return 'サーバー内部で予期しないエラーが発生しました。';
			case 'copyErrorInfo': return 'エラー情報をコピー';
			case 'joinThisServer': return 'このサーバーに登録する';
			case 'exploreOtherServers': return '他のサーバーを探す';
			case 'letsLookAtTimeline': return 'タイムラインを見てみる';
			case 'disableFederationConfirm': return '連合なしにしますか？';
			case 'disableFederationConfirmWarn': return '連合なしにしても投稿は非公開になりません。ほとんどの場合、連合なしにする必要はありません。';
			case 'disableFederationOk': return '連合なしにする';
			case 'invitationRequiredToRegister': return '現在このサーバーは招待制です。招待コードをお持ちの方のみ登録できます。';
			case 'emailNotSupported': return 'このサーバーではメール配信はサポートされていません';
			case 'postToTheChannel': return 'チャンネルに投稿';
			case 'cannotBeChangedLater': return '後から変更できません。';
			case 'reactionAcceptance': return 'リアクションの受け入れ';
			case 'likeOnly': return 'いいねのみ';
			case 'likeOnlyForRemote': return '全て (リモートはいいねのみ)';
			case 'nonSensitiveOnly': return '非センシティブのみ';
			case 'nonSensitiveOnlyForLocalLikeOnlyForRemote': return '非センシティブのみ (リモートはいいねのみ)';
			case 'rolesAssignedToMe': return '自分に割り当てられたロール';
			case 'resetPasswordConfirm': return 'パスワードリセットしますか？';
			case 'sensitiveWords': return 'センシティブワード';
			case 'sensitiveWordsDescription': return '設定したワードが含まれるノートの公開範囲をホームにします。改行で区切って複数設定できます。';
			case 'sensitiveWordsDescription2': return 'スペースで区切るとAND指定になり、キーワードをスラッシュで囲むと正規表現になります。';
			case 'notesSearchNotAvailable': return 'ノート検索は利用できません。';
			case 'license': return 'ライセンス';
			case 'unfavoriteConfirm': return 'お気に入り解除しますか？';
			case 'myClips': return '自分のクリップ';
			case 'drivecleaner': return 'ドライブクリーナー';
			case 'retryAllQueuesNow': return 'すべてのキューを今すぐ再試行';
			case 'retryAllQueuesConfirmTitle': return '今すぐ再試行しますか？';
			case 'retryAllQueuesConfirmText': return '一時的にサーバーの負荷が増大することがあります。';
			case 'enableChartsForRemoteUser': return 'リモートユーザーのチャートを生成';
			case 'enableChartsForFederatedInstances': return 'リモートサーバーのチャートを生成';
			case 'showClipButtonInNoteFooter': return 'ノートのアクションにクリップを追加';
			case 'largeNoteReactions': return 'ノートのリアクションを大きく表示';
			case 'noteIdOrUrl': return 'ノートIDまたはURL';
			case 'video': return '動画';
			case 'videos': return '動画';
			case 'dataSaver': return 'データセーバー';
			case 'accountMigration': return 'アカウントの移行';
			case 'accountMoved': return 'このユーザーは新しいアカウントに移行しました：';
			case 'accountMovedShort': return 'このアカウントは移行されています';
			case 'operationForbidden': return 'この操作はできません';
			case 'forceShowAds': return '常に広告を表示する';
			case 'addMemo': return 'メモを追加';
			case 'editMemo': return 'メモを編集';
			case 'reactionsList': return 'リアクション一覧';
			case 'renotesList': return 'Renote一覧';
			case 'notificationDisplay': return '通知の表示';
			case 'leftTop': return '左上';
			case 'rightTop': return '右上';
			case 'leftBottom': return '左下';
			case 'rightBottom': return '右下';
			case 'stackAxis': return 'スタック方向';
			case 'vertical': return '縦';
			case 'horizontal': return '横';
			case 'position': return '位置';
			case 'serverRules': return 'サーバールール';
			case 'pleaseConfirmBelowBeforeSignup': return 'このサーバーに登録する前に、以下を確認してください。';
			case 'pleaseAgreeAllToContinue': return '続けるには、全ての「同意する」にチェックが入っている必要があります。';
			case 'continue_': return '続ける';
			case 'preservedUsernames': return '予約ユーザー名';
			case 'preservedUsernamesDescription': return '予約するユーザー名を改行で列挙します。ここで指定されたユーザー名はアカウント作成時に使えなくなりますが、管理者によるアカウント作成時はこの制限を受けません。また、既に存在するアカウントも影響を受けません。';
			case 'createNoteFromTheFile': return 'このファイルからノートを作成';
			case 'archive': return 'アーカイブ';
			case 'channelArchiveConfirmTitle': return '{name}をアーカイブしますか？';
			case 'channelArchiveConfirmDescription': return 'アーカイブすると、チャンネル一覧や検索結果に表示されなくなり、新たな書き込みもできなくなります。';
			case 'thisChannelArchived': return 'このチャンネルはアーカイブされています。';
			case 'displayOfNote': return 'ノートの表示';
			case 'initialAccountSetting': return '初期設定';
			case 'youFollowing': return 'フォロー中';
			case 'preventAiLearning': return '生成AIによる学習を拒否';
			case 'preventAiLearningDescription': return '外部の文章生成AIや画像生成AIに対して、投稿したノートや画像などのコンテンツを学習の対象にしないように要求します。これはnoaiフラグをHTMLレスポンスに含めることによって実現されますが、この要求に従うかはそのAI次第であるため、学習を完全に防止するものではありません。';
			case 'options': return 'オプション';
			case 'specifyUser': return 'ユーザー指定';
			case 'failedToPreviewUrl': return 'プレビューできません';
			case 'update': return '更新';
			case 'rolesThatCanBeUsedThisEmojiAsReaction': return 'リアクションとして使えるロール';
			case 'rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription': return 'ロールの指定が一つもない場合、誰でもリアクションとして使えます。';
			case 'rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn': return 'ロールは公開ロールである必要があります。';
			case 'cancelReactionConfirm': return 'リアクションを取り消しますか？';
			case 'changeReactionConfirm': return 'リアクションを変更しますか？';
			case 'later': return 'あとで';
			case 'goToMisskey': return 'Misskeyへ';
			case 'additionalEmojiDictionary': return '絵文字の追加辞書';
			case 'installed': return 'インストール済み';
			case '_initialAccountSetting.accountCreated': return 'アカウントの作成が完了しました！';
			case '_initialAccountSetting.letsStartAccountSetup': return 'アカウントの初期設定を行いましょう。';
			case '_initialAccountSetting.letsFillYourProfile': return 'まずはあなたのプロフィールを設定しましょう。';
			case '_initialAccountSetting.profileSetting': return 'プロフィール設定';
			case '_initialAccountSetting.privacySetting': return 'プライバシー設定';
			case '_initialAccountSetting.theseSettingsCanEditLater': return 'これらの設定は後から変更できます。';
			case '_initialAccountSetting.youCanEditMoreSettingsInSettingsPageLater': return 'この他にも様々な設定を「設定」ページから行えます。ぜひ後で確認してみてください。';
			case '_initialAccountSetting.followUsers': return 'タイムラインを構築するため、気になるユーザーをフォローしてみましょう。';
			case '_initialAccountSetting.pushNotificationDescription': return 'プッシュ通知を有効にすると{name}の通知をお使いのデバイスで受け取ることができます。';
			case '_initialAccountSetting.initialAccountSettingCompleted': return '初期設定が完了しました！';
			case '_initialAccountSetting.haveFun': return '{name}をお楽しみください！';
			case '_initialAccountSetting.ifYouNeedLearnMore': return '{name}(Misskey)の使い方などを詳しく知るには{link}をご覧ください。';
			case '_initialAccountSetting.skipAreYouSure': return '初期設定をスキップしますか？';
			case '_initialAccountSetting.laterAreYouSure': return '初期設定をあとでやり直しますか？';
			case '_serverRules.description': return '新規登録前に表示する、サーバーの簡潔なルールを設定します。内容は利用規約の要約とすることを推奨します。';
			case '_accountMigration.moveFrom': return '別のアカウントからこのアカウントに移行';
			case '_accountMigration.moveFromSub': return '別のアカウントへエイリアスを作成';
			case '_accountMigration.moveFromLabel': return '移行元のアカウント #{n}';
			case '_accountMigration.moveFromDescription': return '別のアカウントからこのアカウントに移行したい場合、ここでエイリアスを作成しておく必要があります。\n移行元のアカウントをこのように入力してください: @username@server.example.com\n削除するには、入力欄を空にして保存します（非推奨）。';
			case '_accountMigration.moveTo': return 'このアカウントを新しいアカウントへ移行';
			case '_accountMigration.moveToLabel': return '移行先のアカウント:';
			case '_accountMigration.moveCannotBeUndone': return 'アカウントを移行すると、取り消すことはできません。';
			case '_accountMigration.moveAccountDescription': return '新しいアカウントへ移行します。\n　・フォロワーが新しいアカウントを自動でフォローします\n　・このアカウントからのフォローは全て解除されます\n　・このアカウントではノートの作成などができなくなります\n\nフォロワーの移行は自動ですが、フォローの移行は手動で行う必要があります。移行前にこのアカウントでフォローエクスポートし、移行後すぐに移行先アカウントでインポートを行なってください。\nリスト・ミュート・ブロックについても同様ですので、手動で移行する必要があります。\n\n（この説明はこのサーバー（Misskey v13.12.0以降）の仕様です。Mastodonなどの他のActivityPubソフトウェアでは挙動が異なる場合があります。）';
			case '_accountMigration.moveAccountHowTo': return 'アカウントの移行には、まずは移行先のアカウントでこのアカウントに対しエイリアスを作成します。\nエイリアス作成後、移行先のアカウントを次のように入力してください: @username@server.example.com';
			case '_accountMigration.startMigration': return '移行する';
			case '_accountMigration.migrationConfirm': return '本当にこのアカウントを {account} に移行しますか？一度移行すると取り消せず、二度とこのアカウントを元の状態で使用できなくなります。';
			case '_accountMigration.movedAndCannotBeUndone': return '\nアカウントは移行されています。\n移行を取り消すことはできません。';
			case '_accountMigration.postMigrationNote': return 'このアカウントからのフォロー解除は移行操作から24時間後に実行されます。\nこのアカウントのフォロー・フォロワー数は0になっています。フォロワーの解除はされないため、あなたのフォロワーはこのアカウントのフォロワー向け投稿を引き続き閲覧できます。';
			case '_accountMigration.movedTo': return '移行先のアカウント:';
			case '_achievements.earnedAt': return '獲得日時';
			case '_achievements._types._notes1.title': return 'just setting up my msky';
			case '_achievements._types._notes1.description': return '初めてノートを投稿した';
			case '_achievements._types._notes1.flavor': return '良いMisskeyライフを！';
			case '_achievements._types._notes10.title': return 'いくつかのノート';
			case '_achievements._types._notes10.description': return 'ノートを10回投稿した';
			case '_achievements._types._notes100.title': return 'たくさんのノート';
			case '_achievements._types._notes100.description': return 'ノートを100回投稿した';
			case '_achievements._types._notes500.title': return 'ノートまみれ';
			case '_achievements._types._notes500.description': return 'ノートを500回投稿した';
			case '_achievements._types._notes1000.title': return 'ノートの山';
			case '_achievements._types._notes1000.description': return 'ノートを1,000回投稿した';
			case '_achievements._types._notes5000.title': return '湧き出るノート';
			case '_achievements._types._notes5000.description': return 'ノートを5,000回投稿した';
			case '_achievements._types._notes10000.title': return 'スーパーノート';
			case '_achievements._types._notes10000.description': return 'ノートを10,000回投稿した';
			case '_achievements._types._notes20000.title': return 'ニードモアノート';
			case '_achievements._types._notes20000.description': return 'ノートを20,000回投稿した';
			case '_achievements._types._notes30000.title': return 'ノートノートノート';
			case '_achievements._types._notes30000.description': return 'ノートを30,000回投稿した';
			case '_achievements._types._notes40000.title': return 'ノート工場';
			case '_achievements._types._notes40000.description': return 'ノートを40,000回投稿した';
			case '_achievements._types._notes50000.title': return 'ノートの惑星';
			case '_achievements._types._notes50000.description': return 'ノートを50,000回投稿した';
			case '_achievements._types._notes60000.title': return 'ノートクエーサー';
			case '_achievements._types._notes60000.description': return 'ノートを60,000回投稿した';
			case '_achievements._types._notes70000.title': return 'ブラックノートホール';
			case '_achievements._types._notes70000.description': return 'ノートを70,000回投稿した';
			case '_achievements._types._notes80000.title': return 'ノートギャラクシー';
			case '_achievements._types._notes80000.description': return 'ノートを80,000回投稿した';
			case '_achievements._types._notes90000.title': return 'ノートバース';
			case '_achievements._types._notes90000.description': return 'ノートを90,000回投稿した';
			case '_achievements._types._notes100000.title': return 'ALL YOUR NOTE ARE BELONG TO US';
			case '_achievements._types._notes100000.description': return 'ノートを100,000回投稿した';
			case '_achievements._types._notes100000.flavor': return 'そんなに書くことある？';
			case '_achievements._types._login3.title': return 'ビギナーⅠ';
			case '_achievements._types._login3.description': return '通算ログイン日数が3日';
			case '_achievements._types._login3.flavor': return '今日からね僕は ミスキストってことで';
			case '_achievements._types._login7.title': return 'ビギナーⅡ';
			case '_achievements._types._login7.description': return '通算ログイン日数が7日';
			case '_achievements._types._login7.flavor': return '慣れてきましたか？';
			case '_achievements._types._login15.title': return 'ビギナーⅢ';
			case '_achievements._types._login15.description': return '通算ログイン日数が15日';
			case '_achievements._types._login30.title': return 'ミスキストⅠ';
			case '_achievements._types._login30.description': return '通算ログイン日数が30日';
			case '_achievements._types._login60.title': return 'ミスキストⅡ';
			case '_achievements._types._login60.description': return '通算ログイン日数が60日';
			case '_achievements._types._login100.title': return 'ミスキストⅢ';
			case '_achievements._types._login100.description': return '通算ログイン日数が100日';
			case '_achievements._types._login100.flavor': return 'そのユーザー、ミスキストにつき';
			case '_achievements._types._login200.title': return '常連Ⅰ';
			case '_achievements._types._login200.description': return '通算ログイン日数が200日';
			case '_achievements._types._login300.title': return '常連Ⅱ';
			case '_achievements._types._login300.description': return '通算ログイン日数が300日';
			case '_achievements._types._login400.title': return '常連Ⅲ';
			case '_achievements._types._login400.description': return '通算ログイン日数が400日';
			case '_achievements._types._login500.title': return 'ベテランⅠ';
			case '_achievements._types._login500.description': return '通算ログイン日数が500日';
			case '_achievements._types._login500.flavor': return '諸君、私はノートが好きだ';
			case '_achievements._types._login600.title': return 'ベテランⅡ';
			case '_achievements._types._login600.description': return '通算ログイン日数が600日';
			case '_achievements._types._login700.title': return 'ベテランⅢ';
			case '_achievements._types._login700.description': return '通算ログイン日数が700日';
			case '_achievements._types._login800.title': return 'ノートマスターⅠ';
			case '_achievements._types._login800.description': return '通算ログイン日数が800日';
			case '_achievements._types._login900.title': return 'ノートマスターⅡ';
			case '_achievements._types._login900.description': return '通算ログイン日数が900日';
			case '_achievements._types._login1000.title': return 'ノートマスターⅢ';
			case '_achievements._types._login1000.description': return '通算ログイン日数が1,000日';
			case '_achievements._types._login1000.flavor': return 'Misskeyを使ってくれてありがとう！';
			case '_achievements._types._noteClipped1.title': return 'クリップせずにはいられないな';
			case '_achievements._types._noteClipped1.description': return '初めてノートをクリップした';
			case '_achievements._types._noteFavorited1.title': return '星をみるひと';
			case '_achievements._types._noteFavorited1.description': return '初めてノートをお気に入りに登録した';
			case '_achievements._types._myNoteFavorited1.title': return '星が欲しい';
			case '_achievements._types._myNoteFavorited1.description': return '自分のノートが他の人からお気に入りに登録された';
			case '_achievements._types._profileFilled.title': return '準備万端';
			case '_achievements._types._profileFilled.description': return 'プロフィール設定を行った';
			case '_achievements._types._markedAsCat.title': return '吾輩は猫である';
			case '_achievements._types._markedAsCat.description': return 'アカウントをCatとして設定した';
			case '_achievements._types._markedAsCat.flavor': return '名前はまだない。';
			case '_achievements._types._following1.title': return 'はじめてのフォロー';
			case '_achievements._types._following1.description': return '初めてフォローした';
			case '_achievements._types._following10.title': return 'ついてく、ついてく';
			case '_achievements._types._following10.description': return 'フォローが10人を超した';
			case '_achievements._types._following50.title': return '友達たくさん';
			case '_achievements._types._following50.description': return 'フォローが50人を超した';
			case '_achievements._types._following100.title': return '友達100人';
			case '_achievements._types._following100.description': return 'フォローが100人を超した';
			case '_achievements._types._following300.title': return '友達過多';
			case '_achievements._types._following300.description': return 'フォローが300人を超した';
			case '_achievements._types._followers1.title': return 'はじめてのフォロワー';
			case '_achievements._types._followers1.description': return '初めてフォローされた';
			case '_achievements._types._followers10.title': return 'フォローミー！';
			case '_achievements._types._followers10.description': return 'フォロワーが10人を超した';
			case '_achievements._types._followers50.title': return 'ぞろぞろ';
			case '_achievements._types._followers50.description': return 'フォロワーが50人を超した';
			case '_achievements._types._followers100.title': return '人気者';
			case '_achievements._types._followers100.description': return 'フォロワーが100人を超した';
			case '_achievements._types._followers300.title': return '一列でお並びください';
			case '_achievements._types._followers300.description': return 'フォロワーが300人を超した';
			case '_achievements._types._followers500.title': return '基地局';
			case '_achievements._types._followers500.description': return 'フォロワーが500人を超した';
			case '_achievements._types._followers1000.title': return 'インフルエンサー';
			case '_achievements._types._followers1000.description': return 'フォロワーが1,000人を超した';
			case '_achievements._types._collectAchievements30.title': return '実績コレクター';
			case '_achievements._types._collectAchievements30.description': return '実績を30個以上獲得した';
			case '_achievements._types._viewAchievements3min.title': return '実績好き';
			case '_achievements._types._viewAchievements3min.description': return '実績一覧を3分以上眺め続けた';
			case '_achievements._types._iLoveMisskey.title': return 'I Love Misskey';
			case '_achievements._types._iLoveMisskey.description': return '"I ❤ #Misskey"を投稿した';
			case '_achievements._types._iLoveMisskey.flavor': return 'Misskeyを使ってくださりありがとうございます！ by 開発チーム';
			case '_achievements._types._foundTreasure.title': return '宝探し';
			case '_achievements._types._foundTreasure.description': return '隠されたお宝を発見した';
			case '_achievements._types._client30min.title': return 'ひとやすみ';
			case '_achievements._types._client30min.description': return 'クライアントを起動してから30分以上経過した';
			case '_achievements._types._client60min.title': return 'Misskeyの見すぎ';
			case '_achievements._types._client60min.description': return 'クライアントを起動してから60分以上経過した';
			case '_achievements._types._noteDeletedWithin1min.title': return 'いまのなし';
			case '_achievements._types._noteDeletedWithin1min.description': return '投稿してから1分以内にその投稿を削除した';
			case '_achievements._types._postedAtLateNight.title': return '夜行性';
			case '_achievements._types._postedAtLateNight.description': return '深夜にノートを投稿した';
			case '_achievements._types._postedAtLateNight.flavor': return 'そろそろ寝よう。';
			case '_achievements._types._postedAt0min0sec.title': return '時報';
			case '_achievements._types._postedAt0min0sec.description': return '0分0秒にノートを投稿した';
			case '_achievements._types._postedAt0min0sec.flavor': return 'ポッ ポッ ポッ ピーン';
			case '_achievements._types._selfQuote.title': return '自己言及';
			case '_achievements._types._selfQuote.description': return '自分のノートを引用した';
			case '_achievements._types._htl20npm.title': return '流れるTL';
			case '_achievements._types._htl20npm.description': return 'ホームタイムラインの流速が20npmを越す';
			case '_achievements._types._viewInstanceChart.title': return 'アナリスト';
			case '_achievements._types._viewInstanceChart.description': return 'サーバーのチャートを表示した';
			case '_achievements._types._outputHelloWorldOnScratchpad.title': return 'Hello, world!';
			case '_achievements._types._outputHelloWorldOnScratchpad.description': return 'スクラッチパッドで hello world を出力した';
			case '_achievements._types._open3windows.title': return 'マルチウィンドウ';
			case '_achievements._types._open3windows.description': return 'ウィンドウを3つ以上開いた状態にした';
			case '_achievements._types._driveFolderCircularReference.title': return '循環参照';
			case '_achievements._types._driveFolderCircularReference.description': return 'ドライブのフォルダを再帰的な入れ子にしようとした';
			case '_achievements._types._reactWithoutRead.title': return 'ちゃんと読んだ？';
			case '_achievements._types._reactWithoutRead.description': return '100文字以上のテキストを含むノートに投稿されてから3秒以内にリアクションした';
			case '_achievements._types._clickedClickHere.title': return 'ここをクリック';
			case '_achievements._types._clickedClickHere.description': return 'ここをクリックした';
			case '_achievements._types._justPlainLucky.title': return '単なるラッキー';
			case '_achievements._types._justPlainLucky.description': return '10秒ごとに0.005%の確率で獲得';
			case '_achievements._types._setNameToSyuilo.title': return '神様コンプレックス';
			case '_achievements._types._setNameToSyuilo.description': return '名前を syuilo に設定した';
			case '_achievements._types._passedSinceAccountCreated1.title': return '一周年';
			case '_achievements._types._passedSinceAccountCreated1.description': return 'アカウント作成から1年経過した';
			case '_achievements._types._passedSinceAccountCreated2.title': return '二周年';
			case '_achievements._types._passedSinceAccountCreated2.description': return 'アカウント作成から2年経過した';
			case '_achievements._types._passedSinceAccountCreated3.title': return '三周年';
			case '_achievements._types._passedSinceAccountCreated3.description': return 'アカウント作成から3年経過した';
			case '_achievements._types._loggedInOnBirthday.title': return 'ハッピーバースデー';
			case '_achievements._types._loggedInOnBirthday.description': return '誕生日にログインした';
			case '_achievements._types._loggedInOnNewYearsDay.title': return 'あけましておめでとうございます';
			case '_achievements._types._loggedInOnNewYearsDay.description': return '元日にログインした';
			case '_achievements._types._loggedInOnNewYearsDay.flavor': return '今年も弊サーバーをよろしくお願いします';
			case '_achievements._types._cookieClicked.title': return 'クッキーをクリックするゲーム';
			case '_achievements._types._cookieClicked.description': return 'クッキーをクリックした';
			case '_achievements._types._cookieClicked.flavor': return 'ソフト間違ってない？';
			case '_achievements._types._brainDiver.title': return 'Brain Diver';
			case '_achievements._types._brainDiver.description': return 'Brain Diverへのリンクを投稿した';
			case '_achievements._types._brainDiver.flavor': return 'Misskey-Misskey La-Tu-Ma';
			case '_role.new_': return 'ロールの作成';
			case '_role.edit': return 'ロールの編集';
			case '_role.name': return 'ロール名';
			case '_role.description': return 'ロールの説明';
			case '_role.permission': return 'ロールの権限';
			case '_role.descriptionOfPermission': return '<b>モデレーター</b>は基本的なモデレーションに関する操作を行えます。\n<b>管理者</b>はサーバーの全ての設定を変更できます。';
			case '_role.assignTarget': return 'アサイン';
			case '_role.descriptionOfAssignTarget': return '<b>マニュアル</b>は誰がこのロールに含まれるかを手動で管理します。\n<b>コンディショナル</b>は条件を設定し、それに合致するユーザーが自動で含まれるようになります。';
			case '_role.manual': return 'マニュアル';
			case '_role.conditional': return 'コンディショナル';
			case '_role.condition': return '条件';
			case '_role.isConditionalRole': return 'これはコンディショナルロールです。';
			case '_role.isPublic': return 'ロールを公開';
			case '_role.descriptionOfIsPublic': return 'ロールにアサインされたユーザーを誰でも見ることができます。また、ユーザーのプロフィールでこのロールが表示されます。';
			case '_role.options': return 'オプション';
			case '_role.policies': return 'ポリシー';
			case '_role.baseRole': return 'ベースロール';
			case '_role.useBaseValue': return 'ベースロールの値を使用';
			case '_role.chooseRoleToAssign': return 'アサインするロールを選択';
			case '_role.iconUrl': return 'アイコン画像のURL';
			case '_role.asBadge': return 'バッジとして表示';
			case '_role.descriptionOfAsBadge': return 'オンにすると、ユーザー名の横にロールのアイコンが表示されます。';
			case '_role.isExplorable': return 'ロールタイムラインを公開';
			case '_role.descriptionOfIsExplorable': return 'オンにすると、ロールのタイムラインを公開します。ロールの公開がオフの場合、タイムラインの公開はされません。';
			case '_role.displayOrder': return '表示順';
			case '_role.descriptionOfDisplayOrder': return '数値が大きいほどUI上で先頭に表示されます。';
			case '_role.canEditMembersByModerator': return 'モデレーターのメンバー編集を許可';
			case '_role.descriptionOfCanEditMembersByModerator': return 'オンにすると、管理者に加えてモデレーターもこのロールへユーザーをアサイン/アサイン解除できるようになります。オフにすると管理者のみが行えます。';
			case '_role.priority': return '優先度';
			case '_role._priority.low': return '低';
			case '_role._priority.middle': return '中';
			case '_role._priority.high': return '高';
			case '_role._options.gtlAvailable': return 'グローバルタイムラインの閲覧';
			case '_role._options.ltlAvailable': return 'ローカルタイムラインの閲覧';
			case '_role._options.canPublicNote': return 'パブリック投稿の許可';
			case '_role._options.canInvite': return 'サーバー招待コードの発行';
			case '_role._options.canManageCustomEmojis': return 'カスタム絵文字の管理';
			case '_role._options.driveCapacity': return 'ドライブ容量';
			case '_role._options.alwaysMarkNsfw': return 'ファイルにNSFWを常に付与';
			case '_role._options.pinMax': return 'ノートのピン留めの最大数';
			case '_role._options.antennaMax': return 'アンテナの作成可能数';
			case '_role._options.wordMuteMax': return 'ワードミュートの最大文字数';
			case '_role._options.webhookMax': return 'Webhookの作成可能数';
			case '_role._options.clipMax': return 'クリップの作成可能数';
			case '_role._options.noteEachClipsMax': return 'クリップ内のノートの最大数';
			case '_role._options.userListMax': return 'ユーザーリストの作成可能数';
			case '_role._options.userEachUserListsMax': return 'ユーザーリスト内のユーザーの最大数';
			case '_role._options.rateLimitFactor': return 'レートリミット';
			case '_role._options.descriptionOfRateLimitFactor': return '小さいほど制限が緩和され、大きいほど制限が強化されます。';
			case '_role._options.canHideAds': return '広告の非表示';
			case '_role._options.canSearchNotes': return 'ノート検索の利用可否';
			case '_role._condition.isLocal': return 'ローカルユーザー';
			case '_role._condition.isRemote': return 'リモートユーザー';
			case '_role._condition.createdLessThan': return 'アカウント作成から～以内';
			case '_role._condition.createdMoreThan': return 'アカウント作成から～経過';
			case '_role._condition.followersLessThanOrEq': return 'フォロワー数が～以下';
			case '_role._condition.followersMoreThanOrEq': return 'フォロワー数が～以上';
			case '_role._condition.followingLessThanOrEq': return 'フォロー数が～以下';
			case '_role._condition.followingMoreThanOrEq': return 'フォロー数が～以上';
			case '_role._condition.notesLessThanOrEq': return '投稿数が～以下';
			case '_role._condition.notesMoreThanOrEq': return '投稿数が～以上';
			case '_role._condition.and': return '～かつ～';
			case '_role._condition.or': return '～または～';
			case '_role._condition.not': return '～ではない';
			case '_sensitiveMediaDetection.description': return '機械学習を使って自動でセンシティブなメディアを検出し、モデレーションに役立てることができます。サーバーの負荷が少し増えます。';
			case '_sensitiveMediaDetection.sensitivity': return '検出感度';
			case '_sensitiveMediaDetection.sensitivityDescription': return '感度を低くすると、誤検知(偽陽性)が減ります。感度を高くすると、検知漏れ(偽陰性)が減ります。';
			case '_sensitiveMediaDetection.setSensitiveFlagAutomatically': return 'NSFWフラグを設定する';
			case '_sensitiveMediaDetection.setSensitiveFlagAutomaticallyDescription': return 'この設定をオフにしても内部的に判定結果は保持されます。';
			case '_sensitiveMediaDetection.analyzeVideos': return '動画の解析を有効化';
			case '_sensitiveMediaDetection.analyzeVideosDescription': return '静止画に加えて動画も解析するようにします。サーバーの負荷が少し増えます。';
			case '_emailUnavailable.used': return '既に使用されています';
			case '_emailUnavailable.format': return '形式が正しくありません';
			case '_emailUnavailable.disposable': return '恒久的に使用可能なアドレスではありません';
			case '_emailUnavailable.mx': return '正しいメールサーバーではありません';
			case '_emailUnavailable.smtp': return 'メールサーバーが応答しません';
			case '_ffVisibility.public': return '公開';
			case '_ffVisibility.followers': return 'フォロワーだけに公開';
			case '_ffVisibility.private': return '非公開';
			case '_signup.almostThere': return 'ほとんど完了です';
			case '_signup.emailAddressInfo': return 'あなたが使っているメールアドレスを入力してください。メールアドレスが公開されることはありません。';
			case '_signup.emailSent': return '入力されたメールアドレス({email})宛に確認のメールが送信されました。メールに記載されたリンクにアクセスすると、アカウントの作成が完了します。';
			case '_accountDelete.accountDelete': return 'アカウントの削除';
			case '_accountDelete.mayTakeTime': return 'アカウントの削除は負荷のかかる処理であるため、作成したコンテンツの数やアップロードしたファイルの数が多いと完了までに時間がかかることがあります。';
			case '_accountDelete.sendEmail': return 'アカウントの削除が完了する際は、登録してあったメールアドレス宛に通知を送信します。';
			case '_accountDelete.requestAccountDelete': return 'アカウント削除をリクエスト';
			case '_accountDelete.started': return '削除処理が開始されました。';
			case '_accountDelete.inProgress': return '削除が進行中';
			case '_ad.back': return '戻る';
			case '_ad.reduceFrequencyOfThisAd': return 'この広告の表示頻度を下げる';
			case '_ad.hide': return '表示しない';
			case '_forgotPassword.enterEmail': return 'アカウントに登録したメールアドレスを入力してください。そのアドレス宛てに、パスワードリセット用のリンクが送信されます。';
			case '_forgotPassword.ifNoEmail': return 'メールアドレスを登録していない場合は、管理者までお問い合わせください。';
			case '_forgotPassword.contactAdmin': return 'このサーバーではメールがサポートされていないため、パスワードリセットを行う場合は管理者までお問い合わせください。';
			case '_gallery.my': return '自分の投稿';
			case '_gallery.liked': return 'いいねした投稿';
			case '_gallery.like': return 'いいね！';
			case '_gallery.unlike': return 'いいね解除';
			case '_email._follow.title': return 'フォローされました';
			case '_email._receiveFollowRequest.title': return 'フォローリクエストを受け取りました';
			case '_plugin.install': return 'プラグインのインストール';
			case '_plugin.installWarn': return '信頼できないプラグインはインストールしないでください。';
			case '_plugin.manage': return 'プラグインの管理';
			case '_preferencesBackups.list': return '作成したバックアップ';
			case '_preferencesBackups.saveNew': return '新規保存';
			case '_preferencesBackups.loadFile': return 'ファイルを読み込み';
			case '_preferencesBackups.apply': return 'このデバイスに適用';
			case '_preferencesBackups.save': return '上書き保存';
			case '_preferencesBackups.inputName': return 'バックアップ名を入力';
			case '_preferencesBackups.cannotSave': return '保存できません';
			case '_preferencesBackups.nameAlreadyExists': return 'バックアップ名「{name}」は既に存在します。違う名前を指定してください。';
			case '_preferencesBackups.applyConfirm': return 'バックアップ「{name}」を現在のデバイスに適用しますか？現在のデバイス設定は失われます。';
			case '_preferencesBackups.saveConfirm': return '{name}に上書き保存しますか？';
			case '_preferencesBackups.deleteConfirm': return '{name}を削除しますか？';
			case '_preferencesBackups.renameConfirm': return '「{old}」を「{new_}」に変更しますか？';
			case '_preferencesBackups.noBackups': return 'バックアップはありません。「新規保存」で現在のクライアント設定をサーバーに保存できます。';
			case '_preferencesBackups.createdAt': return '作成日時: {date} {time}';
			case '_preferencesBackups.updatedAt': return '更新日時: {date} {time}';
			case '_preferencesBackups.cannotLoad': return '読み込みできません';
			case '_preferencesBackups.invalidFile': return 'ファイル形式が違います。';
			case '_registry.scope': return 'スコープ';
			case '_registry.key': return 'キー';
			case '_registry.keys': return 'キー';
			case '_registry.domain': return 'ドメイン';
			case '_registry.createKey': return 'キーを作成';
			case '_aboutMisskey.about': return 'Misskeyはsyuiloによって2014年から開発されている、オープンソースのソフトウェアです。';
			case '_aboutMisskey.contributors': return '主なコントリビューター';
			case '_aboutMisskey.allContributors': return '全てのコントリビューター';
			case '_aboutMisskey.source': return 'ソースコード';
			case '_aboutMisskey.translation': return 'Misskeyを翻訳';
			case '_aboutMisskey.donate': return 'Misskeyに寄付';
			case '_aboutMisskey.morePatrons': return '他にも多くの方が支援してくれています。ありがとうございます🥰';
			case '_aboutMisskey.patrons': return '支援者';
			case '_nsfw.respect': return '閲覧注意のメディアは隠す';
			case '_nsfw.ignore': return '閲覧注意のメディアを隠さない';
			case '_nsfw.force': return '常にメディアを隠す';
			case '_instanceTicker.none': return '表示しない';
			case '_instanceTicker.remote': return 'リモートユーザーに表示';
			case '_instanceTicker.always': return '常に表示';
			case '_serverDisconnectedBehavior.reload': return '自動でリロード';
			case '_serverDisconnectedBehavior.dialog': return 'ダイアログで警告';
			case '_serverDisconnectedBehavior.quiet': return '控えめに警告';
			case '_channel.create': return 'チャンネルを作成';
			case '_channel.edit': return 'チャンネルを編集';
			case '_channel.setBanner': return 'バナーを設定';
			case '_channel.removeBanner': return 'バナーを削除';
			case '_channel.featured': return 'トレンド';
			case '_channel.owned': return '管理中';
			case '_channel.following': return 'フォロー中';
			case '_channel.usersCount': return '{n}人が参加中';
			case '_channel.notesCount': return '{n}投稿があります';
			case '_channel.nameAndDescription': return '名前と説明';
			case '_channel.nameOnly': return '名前のみ';
			case '_menuDisplay.sideFull': return '横';
			case '_menuDisplay.sideIcon': return '横(アイコン)';
			case '_menuDisplay.top': return '上部';
			case '_menuDisplay.hide': return '隠す';
			case '_wordMute.muteWords': return 'ミュートするワード';
			case '_wordMute.muteWordsDescription': return 'スペースで区切るとAND指定になり、改行で区切るとOR指定になります。';
			case '_wordMute.muteWordsDescription2': return 'キーワードをスラッシュで囲むと正規表現になります。';
			case '_wordMute.softDescription': return '指定した条件のノートをタイムラインから隠します。';
			case '_wordMute.hardDescription': return '指定した条件のノートをタイムラインに追加しないようにします。追加されなかったノートは、条件を変更しても除外されたままになります。';
			case '_wordMute.soft': return 'ソフト';
			case '_wordMute.hard': return 'ハード';
			case '_wordMute.mutedNotes': return 'ミュートされたノート';
			case '_instanceMute.instanceMuteDescription': return 'ミュートしたサーバーのユーザーへの返信を含めて、設定したサーバーの全てのノートとRenoteをミュートします。';
			case '_instanceMute.instanceMuteDescription2': return '改行で区切って設定します';
			case '_instanceMute.title': return '設定したサーバーのノートを隠します。';
			case '_instanceMute.heading': return 'ミュートするサーバー';
			case '_theme.explore': return 'テーマを探す';
			case '_theme.install': return 'テーマのインストール';
			case '_theme.manage': return 'テーマの管理';
			case '_theme.code': return 'テーマコード';
			case '_theme.description': return '説明';
			case '_theme.installed': return '{name}をインストールしました';
			case '_theme.installedThemes': return 'インストールされたテーマ';
			case '_theme.builtinThemes': return '標準のテーマ';
			case '_theme.alreadyInstalled': return 'そのテーマは既にインストールされています';
			case '_theme.invalid': return 'テーマの形式が間違っています';
			case '_theme.make': return 'テーマを作る';
			case '_theme.base': return 'ベース';
			case '_theme.addConstant': return '定数を追加';
			case '_theme.constant': return '定数';
			case '_theme.defaultValue': return 'デフォルト値';
			case '_theme.color': return '色';
			case '_theme.refProp': return 'プロパティを参照';
			case '_theme.refConst': return '定数を参照';
			case '_theme.key': return 'キー';
			case '_theme.func': return '関数';
			case '_theme.funcKind': return '関数の種類';
			case '_theme.argument': return '引数';
			case '_theme.basedProp': return '元にするプロパティの名前';
			case '_theme.alpha': return '不透明度';
			case '_theme.darken': return '暗さ';
			case '_theme.lighten': return '明るさ';
			case '_theme.inputConstantName': return '定数名を入力してください';
			case '_theme.importInfo': return 'ここにテーマコードを貼り付けて、エディターにインポートできます';
			case '_theme.deleteConstantConfirm': return '定数 {const_} を削除しても良いですか？';
			case '_theme.keys.accent': return 'アクセント';
			case '_theme.keys.bg': return '背景';
			case '_theme.keys.fg': return '文字';
			case '_theme.keys.focus': return 'フォーカス';
			case '_theme.keys.indicator': return 'インジケーター';
			case '_theme.keys.panel': return 'パネル';
			case '_theme.keys.shadow': return '影';
			case '_theme.keys.header': return 'ヘッダー';
			case '_theme.keys.navBg': return 'サイドバーの背景';
			case '_theme.keys.navFg': return 'サイドバーの文字';
			case '_theme.keys.navHoverFg': return 'サイドバー文字(ホバー)';
			case '_theme.keys.navActive': return 'サイドバー文字(アクティブ)';
			case '_theme.keys.navIndicator': return 'サイドバーのインジケーター';
			case '_theme.keys.link': return 'リンク';
			case '_theme.keys.hashtag': return 'ハッシュタグ';
			case '_theme.keys.mention': return 'メンション';
			case '_theme.keys.mentionMe': return 'あなた宛てメンション';
			case '_theme.keys.renote': return 'Renote';
			case '_theme.keys.modalBg': return 'モーダルの背景';
			case '_theme.keys.divider': return '分割線';
			case '_theme.keys.scrollbarHandle': return 'スクロールバーの取っ手';
			case '_theme.keys.scrollbarHandleHover': return 'スクロールバーの取っ手（ホバー)';
			case '_theme.keys.dateLabelFg': return '日付ラベルの文字';
			case '_theme.keys.infoBg': return '情報の背景';
			case '_theme.keys.infoFg': return '情報の文字';
			case '_theme.keys.infoWarnBg': return '警告の背景';
			case '_theme.keys.infoWarnFg': return '警告の文字';
			case '_theme.keys.cwBg': return 'CW ボタンの背景';
			case '_theme.keys.cwFg': return 'CW ボタンの文字';
			case '_theme.keys.cwHoverBg': return 'CW ボタンの背景 (ホバー)';
			case '_theme.keys.toastBg': return '通知トーストの背景';
			case '_theme.keys.toastFg': return '通知トーストの文字';
			case '_theme.keys.buttonBg': return 'ボタンの背景';
			case '_theme.keys.buttonHoverBg': return 'ボタンの背景 (ホバー)';
			case '_theme.keys.inputBorder': return '入力ボックスの縁取り';
			case '_theme.keys.listItemHoverBg': return 'リスト項目の背景 (ホバー)';
			case '_theme.keys.driveFolderBg': return 'ドライブフォルダーの背景';
			case '_theme.keys.wallpaperOverlay': return '壁紙のオーバーレイ';
			case '_theme.keys.badge': return 'バッジ';
			case '_theme.keys.messageBg': return 'チャットの背景';
			case '_theme.keys.accentDarken': return 'アクセント (暗め)';
			case '_theme.keys.accentLighten': return 'アクセント (明るめ)';
			case '_theme.keys.fgHighlighted': return '強調された文字';
			case '_sfx.note': return 'ノート';
			case '_sfx.noteMy': return 'ノート(自分)';
			case '_sfx.notification': return '通知';
			case '_sfx.chat': return 'チャット';
			case '_sfx.chatBg': return 'チャット(バックグラウンド)';
			case '_sfx.antenna': return 'アンテナ受信';
			case '_sfx.channel': return 'チャンネル通知';
			case '_ago.future': return '未来';
			case '_ago.justNow': return 'たった今';
			case '_ago.secondsAgo': return '{n}秒前';
			case '_ago.minutesAgo': return '{n}分前';
			case '_ago.hoursAgo': return '{n}時間前';
			case '_ago.daysAgo': return '{n}日前';
			case '_ago.weeksAgo': return '{n}週間前';
			case '_ago.monthsAgo': return '{n}ヶ月前';
			case '_ago.yearsAgo': return '{n}年前';
			case '_ago.invalid': return 'ありません';
			case '_time.second': return '秒';
			case '_time.minute': return '分';
			case '_time.hour': return '時間';
			case '_time.day': return '日';
			case '_timelineTutorial.title': return 'Misskeyの使い方';
			case '_timelineTutorial.step1_1': return 'この画面は「タイムライン」です。{name}に投稿された「ノート」が時系列で表示されます。';
			case '_timelineTutorial.step1_2': return 'タイムラインにはいくつか種類があり、例えば「ホームタイムライン」にはあなたがフォローしている人のノートが流れ、「ローカルタイムライン」には{name}全体のノートが流れます。';
			case '_timelineTutorial.step2_1': return '試しに、何かノートを投稿してみましょう。画面上にある鉛筆マークのボタンを押すとフォームが開きます。';
			case '_timelineTutorial.step2_2': return '初めてのノートの内容は、あなたの自己紹介や「{name}始めました」などがおすすめです。';
			case '_timelineTutorial.step3_1': return '投稿できましたか？';
			case '_timelineTutorial.step3_2': return 'あなたのノートがタイムラインに表示されていれば成功です。';
			case '_timelineTutorial.step4_1': return 'ノートには、「リアクション」を付けることができます。';
			case '_timelineTutorial.step4_2': return 'リアクションを付けるには、ノートの「+」マークをクリックして、好きな絵文字を選択します。';
			case '_2fa.alreadyRegistered': return '既に設定は完了しています。';
			case '_2fa.registerTOTP': return '認証アプリの設定を開始';
			case '_2fa.passwordToTOTP': return 'パスワードを入力してください';
			case '_2fa.step1': return 'まず、{a}や{b}などの認証アプリをお使いのデバイスにインストールします。';
			case '_2fa.step2': return '次に、表示されているQRコードをアプリでスキャンします。';
			case '_2fa.step2Click': return 'QRコードをクリックすると、お使いの端末にインストールされている認証アプリやキーリングに登録できます。';
			case '_2fa.step2Url': return 'デスクトップアプリでは次のURIを入力します:';
			case '_2fa.step3Title': return '確認コードを入力';
			case '_2fa.step3': return 'アプリに表示されている確認コード（トークン）を入力して完了です。';
			case '_2fa.step4': return 'これからログインするときも、同じように確認コードを入力します。';
			case '_2fa.securityKeyNotSupported': return 'お使いのブラウザはセキュリティキーに対応していません。';
			case '_2fa.registerTOTPBeforeKey': return 'セキュリティキー・パスキーを登録するには、まず認証アプリの設定を行なってください。';
			case '_2fa.securityKeyInfo': return 'FIDO2をサポートするハードウェアセキュリティキー、端末の生体認証やPINロック、パスキーといった、WebAuthn由来の鍵を登録します。';
			case '_2fa.chromePasskeyNotSupported': return 'Chromeのパスキーは現在サポートしていません。';
			case '_2fa.registerSecurityKey': return 'セキュリティキー・パスキーを登録する';
			case '_2fa.securityKeyName': return 'キーの名前を入力';
			case '_2fa.tapSecurityKey': return 'ブラウザの指示に従い、セキュリティキーやパスキーを登録してください';
			case '_2fa.removeKey': return 'セキュリティキーを削除';
			case '_2fa.removeKeyConfirm': return '{name}を削除しますか？';
			case '_2fa.whyTOTPOnlyRenew': return 'セキュリティキーが登録されている場合、認証アプリの設定は解除できません。';
			case '_2fa.renewTOTP': return '認証アプリを再設定';
			case '_2fa.renewTOTPConfirm': return '今までの認証アプリの確認コードは使用できなくなります';
			case '_2fa.renewTOTPOk': return '再設定する';
			case '_2fa.renewTOTPCancel': return 'やめておく';
			case '_auth.shareAccessTitle': return 'アプリへのアクセス許可';
			case '_auth.shareAccess': return '「{name}」がアカウントにアクセスすることを許可しますか？';
			case '_auth.shareAccessAsk': return 'アカウントへのアクセスを許可しますか？';
			case '_auth.permission': return '{name}は次の権限を要求しています';
			case '_auth.permissionAsk': return 'このアプリは次の権限を要求しています';
			case '_auth.pleaseGoBack': return 'アプリケーションに戻ってやっていってください';
			case '_auth.callback': return 'アプリケーションに戻っています';
			case '_auth.denied': return 'アクセスを拒否しました';
			case '_auth.pleaseLogin': return 'アプリケーションにアクセス許可を与えるには、ログインが必要です。';
			case '_antennaSources.all': return '全てのノート';
			case '_antennaSources.homeTimeline': return 'フォローしているユーザーのノート';
			case '_antennaSources.users': return '指定した一人または複数のユーザーのノート';
			case '_antennaSources.userList': return '指定したリストのユーザーのノート';
			case '_weekday.sunday': return '日曜日';
			case '_weekday.monday': return '月曜日';
			case '_weekday.tuesday': return '火曜日';
			case '_weekday.wednesday': return '水曜日';
			case '_weekday.thursday': return '木曜日';
			case '_weekday.friday': return '金曜日';
			case '_weekday.saturday': return '土曜日';
			case '_widgets.profile': return 'プロフィール';
			case '_widgets.instanceInfo': return 'サーバー情報';
			case '_widgets.memo': return '付箋';
			case '_widgets.notifications': return '通知';
			case '_widgets.timeline': return 'タイムライン';
			case '_widgets.calendar': return 'カレンダー';
			case '_widgets.trends': return 'トレンド';
			case '_widgets.clock': return '時計';
			case '_widgets.rss': return 'RSSリーダー';
			case '_widgets.rssTicker': return 'RSSティッカー';
			case '_widgets.activity': return 'アクティビティ';
			case '_widgets.photos': return 'フォト';
			case '_widgets.digitalClock': return 'デジタル時計';
			case '_widgets.unixClock': return 'UNIX時計';
			case '_widgets.federation': return '連合';
			case '_widgets.instanceCloud': return 'サーバークラウド';
			case '_widgets.postForm': return '投稿フォーム';
			case '_widgets.slideshow': return 'スライドショー';
			case '_widgets.button': return 'ボタン';
			case '_widgets.onlineUsers': return 'オンラインユーザー';
			case '_widgets.jobQueue': return 'ジョブキュー';
			case '_widgets.serverMetric': return 'サーバーメトリクス';
			case '_widgets.aiscript': return 'AiScriptコンソール';
			case '_widgets.aiscriptApp': return 'AiScript App';
			case '_widgets.aichan': return '藍';
			case '_widgets.userList': return 'ユーザーリスト';
			case '_widgets._userList.chooseList': return 'リストを選択';
			case '_widgets.clicker': return 'クリッカー';
			case '_cw.hide': return '隠す';
			case '_cw.show': return 'もっと見る';
			case '_cw.chars': return '{count}文字';
			case '_cw.files': return '{count}ファイル';
			case '_poll.noOnlyOneChoice': return '選択肢は最低2つ必要です';
			case '_poll.choiceN': return '選択肢{n}';
			case '_poll.noMore': return 'これ以上追加できません';
			case '_poll.canMultipleVote': return '複数回答可';
			case '_poll.expiration': return '期限';
			case '_poll.infinite': return '無期限';
			case '_poll.at': return '日時指定';
			case '_poll.after': return '経過指定';
			case '_poll.deadlineDate': return '期日';
			case '_poll.deadlineTime': return '時間';
			case '_poll.duration': return '期間';
			case '_poll.votesCount': return '{n}票';
			case '_poll.totalVotes': return '計{n}票';
			case '_poll.vote': return '投票する';
			case '_poll.showResult': return '結果を見る';
			case '_poll.voted': return '投票済み';
			case '_poll.closed': return '終了済み';
			case '_poll.remainingDays': return '終了まであと{d}日{h}時間';
			case '_poll.remainingHours': return '終了まであと{h}時間{m}分';
			case '_poll.remainingMinutes': return '終了まであと{m}分{s}秒';
			case '_poll.remainingSeconds': return '終了まであと{s}秒';
			case '_visibility.public': return 'パブリック';
			case '_visibility.publicDescription': return '全てのユーザーに公開';
			case '_visibility.home': return 'ホーム';
			case '_visibility.homeDescription': return 'ホームタイムラインのみに公開';
			case '_visibility.followers': return 'フォロワー';
			case '_visibility.followersDescription': return '自分のフォロワーのみに公開';
			case '_visibility.specified': return 'ダイレクト';
			case '_visibility.specifiedDescription': return '指定したユーザーのみに公開';
			case '_visibility.disableFederation': return '連合なし';
			case '_visibility.disableFederationDescription': return '他サーバーへの配信を行いません';
			case '_postForm.replyPlaceholder': return 'このノートに返信...';
			case '_postForm.quotePlaceholder': return 'このノートを引用...';
			case '_postForm.channelPlaceholder': return 'チャンネルに投稿...';
			case '_postForm._placeholders.a': return 'いまどうしてる？';
			case '_postForm._placeholders.b': return '何かありましたか？';
			case '_postForm._placeholders.c': return '何をお考えですか？';
			case '_postForm._placeholders.d': return '言いたいことは？';
			case '_postForm._placeholders.e': return 'ここに書いてください';
			case '_postForm._placeholders.f': return 'あなたが書くのを待っています...';
			case '_profile.name': return '名前';
			case '_profile.username': return 'ユーザー名';
			case '_profile.description': return '自己紹介';
			case '_profile.youCanIncludeHashtags': return 'ハッシュタグを含めることができます。';
			case '_profile.metadata': return '追加情報';
			case '_profile.metadataEdit': return '追加情報を編集';
			case '_profile.metadataDescription': return 'プロフィールに表として追加情報を表示することができます。';
			case '_profile.metadataLabel': return 'ラベル';
			case '_profile.metadataContent': return '内容';
			case '_profile.changeAvatar': return 'アイコン画像を変更';
			case '_profile.changeBanner': return 'バナー画像を変更';
			case '_exportOrImport.allNotes': return '全てのノート';
			case '_exportOrImport.favoritedNotes': return 'お気に入りにしたノート';
			case '_exportOrImport.followingList': return 'フォロー';
			case '_exportOrImport.muteList': return 'ミュート';
			case '_exportOrImport.blockingList': return 'ブロック';
			case '_exportOrImport.userLists': return 'リスト';
			case '_exportOrImport.excludeMutingUsers': return 'ミュートしているユーザーを除外';
			case '_exportOrImport.excludeInactiveUsers': return '使われていないアカウントを除外';
			case '_charts.federation': return '連合';
			case '_charts.apRequest': return 'リクエスト';
			case '_charts.usersIncDec': return 'ユーザーの増減';
			case '_charts.usersTotal': return 'ユーザーの合計';
			case '_charts.activeUsers': return 'アクティブユーザー数';
			case '_charts.notesIncDec': return 'ノートの増減';
			case '_charts.localNotesIncDec': return 'ローカルのノートの増減';
			case '_charts.remoteNotesIncDec': return 'リモートのノートの増減';
			case '_charts.notesTotal': return 'ノートの合計';
			case '_charts.filesIncDec': return 'ファイルの増減';
			case '_charts.filesTotal': return 'ファイルの合計';
			case '_charts.storageUsageIncDec': return 'ストレージ使用量の増減';
			case '_charts.storageUsageTotal': return 'ストレージ使用量の合計';
			case '_instanceCharts.requests': return 'リクエスト';
			case '_instanceCharts.users': return 'ユーザーの増減';
			case '_instanceCharts.usersTotal': return 'ユーザーの累積';
			case '_instanceCharts.notes': return 'ノートの増減';
			case '_instanceCharts.notesTotal': return 'ノートの累積';
			case '_instanceCharts.ff': return 'フォロー/フォロワーの増減';
			case '_instanceCharts.ffTotal': return 'フォロー/フォロワーの累積';
			case '_instanceCharts.cacheSize': return 'キャッシュサイズの増減';
			case '_instanceCharts.cacheSizeTotal': return 'キャッシュサイズの累積';
			case '_instanceCharts.files': return 'ファイル数の増減';
			case '_instanceCharts.filesTotal': return 'ファイル数の累積';
			case '_timelines.home': return 'ホーム';
			case '_timelines.local': return 'ローカル';
			case '_timelines.social': return 'ソーシャル';
			case '_timelines.global': return 'グローバル';
			case '_play.new_': return 'Playの作成';
			case '_play.edit': return 'Playの編集';
			case '_play.created': return 'Playを作成しました';
			case '_play.updated': return 'Playを更新しました';
			case '_play.deleted': return 'Playを削除しました';
			case '_play.pageSetting': return 'Play設定';
			case '_play.editThisPage': return 'このPlayを編集';
			case '_play.viewSource': return 'ソースを表示';
			case '_play.my': return '自分のPlay';
			case '_play.liked': return 'いいねしたPlay';
			case '_play.featured': return '人気';
			case '_play.title': return 'タイトル';
			case '_play.script': return 'スクリプト';
			case '_play.summary': return '説明';
			case '_pages.newPage': return 'ページの作成';
			case '_pages.editPage': return 'ページの編集';
			case '_pages.readPage': return 'ソースを表示中';
			case '_pages.created': return 'ページを作成しました';
			case '_pages.updated': return 'ページを更新しました';
			case '_pages.deleted': return 'ページを削除しました';
			case '_pages.pageSetting': return 'ページ設定';
			case '_pages.nameAlreadyExists': return '指定されたページURLは既に存在しています';
			case '_pages.invalidNameTitle': return '不正なページURLです';
			case '_pages.invalidNameText': return '空白でないか確認してください';
			case '_pages.editThisPage': return 'このページを編集';
			case '_pages.viewSource': return 'ソースを表示';
			case '_pages.viewPage': return 'ページを見る';
			case '_pages.like': return 'いいね';
			case '_pages.unlike': return 'いいね解除';
			case '_pages.my': return '自分のページ';
			case '_pages.liked': return 'いいねしたページ';
			case '_pages.featured': return '人気';
			case '_pages.inspector': return 'インスペクター';
			case '_pages.contents': return 'コンテンツ';
			case '_pages.content': return 'ページブロック';
			case '_pages.variables': return '変数';
			case '_pages.title': return 'タイトル';
			case '_pages.url': return 'ページURL';
			case '_pages.summary': return 'ページの要約';
			case '_pages.alignCenter': return '中央寄せ';
			case '_pages.hideTitleWhenPinned': return 'ピン留めされているときにタイトルを非表示';
			case '_pages.font': return 'フォント';
			case '_pages.fontSerif': return 'セリフ';
			case '_pages.fontSansSerif': return 'サンセリフ';
			case '_pages.eyeCatchingImageSet': return 'アイキャッチ画像を設定';
			case '_pages.eyeCatchingImageRemove': return 'アイキャッチ画像を削除';
			case '_pages.chooseBlock': return 'ブロックを追加';
			case '_pages.selectType': return '種類を選択';
			case '_pages.contentBlocks': return 'コンテンツ';
			case '_pages.inputBlocks': return '入力';
			case '_pages.specialBlocks': return '特殊';
			case '_pages.blocks.text': return 'テキスト';
			case '_pages.blocks.textarea': return 'テキストエリア';
			case '_pages.blocks.section': return 'セクション';
			case '_pages.blocks.image': return '画像';
			case '_pages.blocks.button': return 'ボタン';
			case '_pages.blocks.note': return 'ノート埋め込み';
			case '_pages.blocks._note.id': return 'ノートID';
			case '_pages.blocks._note.idDescription': return 'ノートURLをペーストして設定することもできます。';
			case '_pages.blocks._note.detailed': return '詳細な表示';
			case '_relayStatus.requesting': return '承認待ち';
			case '_relayStatus.accepted': return '承認済み';
			case '_relayStatus.rejected': return '拒否済み';
			case '_notification.fileUploaded': return 'ファイルがアップロードされました';
			case '_notification.youGotMention': return '{name}からのメンション';
			case '_notification.youGotReply': return '{name}からのリプライ';
			case '_notification.youGotQuote': return '{name}による引用';
			case '_notification.youRenoted': return '{name}がRenoteしました';
			case '_notification.youWereFollowed': return 'フォローされました';
			case '_notification.youReceivedFollowRequest': return 'フォローリクエストが来ました';
			case '_notification.yourFollowRequestAccepted': return 'フォローリクエストが承認されました';
			case '_notification.pollEnded': return 'アンケートの結果が出ました';
			case '_notification.unreadAntennaNote': return 'アンテナ {name}';
			case '_notification.emptyPushNotificationMessage': return 'プッシュ通知の更新をしました';
			case '_notification.achievementEarned': return '実績を獲得';
			case '_notification._types.all': return 'すべて';
			case '_notification._types.follow': return 'フォロー';
			case '_notification._types.mention': return 'メンション';
			case '_notification._types.reply': return 'リプライ';
			case '_notification._types.renote': return 'Renote';
			case '_notification._types.quote': return '引用';
			case '_notification._types.reaction': return 'リアクション';
			case '_notification._types.pollEnded': return 'アンケートが終了';
			case '_notification._types.receiveFollowRequest': return 'フォロー申請を受け取った';
			case '_notification._types.followRequestAccepted': return 'フォローが受理された';
			case '_notification._types.achievementEarned': return '実績の獲得';
			case '_notification._types.app': return '連携アプリからの通知';
			case '_notification._actions.followBack': return 'フォローバック';
			case '_notification._actions.reply': return '返信';
			case '_notification._actions.renote': return 'Renote';
			case '_deck.alwaysShowMainColumn': return '常にメインカラムを表示';
			case '_deck.columnAlign': return 'カラムの寄せ';
			case '_deck.addColumn': return 'カラムを追加';
			case '_deck.configureColumn': return 'カラムの設定';
			case '_deck.swapLeft': return '左に移動';
			case '_deck.swapRight': return '右に移動';
			case '_deck.swapUp': return '上に移動';
			case '_deck.swapDown': return '下に移動';
			case '_deck.stackLeft': return '左にスタック';
			case '_deck.popRight': return '右に出す';
			case '_deck.profile': return 'プロファイル';
			case '_deck.newProfile': return '新規プロファイル';
			case '_deck.deleteProfile': return 'プロファイルを削除';
			case '_deck.introduction': return 'カラムを組み合わせて自分だけのインターフェイスを作りましょう！';
			case '_deck.introduction2': return '画面の右にある + を押して、いつでもカラムを追加できます。';
			case '_deck.widgetsIntroduction': return 'カラムのメニューから、「ウィジェットの編集」を選択してウィジェットを追加してください';
			case '_deck._columns.main': return 'メイン';
			case '_deck._columns.widgets': return 'ウィジェット';
			case '_deck._columns.notifications': return '通知';
			case '_deck._columns.tl': return 'タイムライン';
			case '_deck._columns.antenna': return 'アンテナ';
			case '_deck._columns.list': return 'リスト';
			case '_deck._columns.channel': return 'チャンネル';
			case '_deck._columns.mentions': return 'あなた宛て';
			case '_deck._columns.direct': return 'ダイレクト';
			case '_deck._columns.roleTimeline': return 'ロールタイムライン';
			case '_dialog.charactersExceeded': return '最大文字数を超えています！ 現在 {current} / 制限 {max}';
			case '_dialog.charactersBelow': return '最小文字数を下回っています！ 現在 {current} / 制限 {min}';
			case '_disabledTimeline.title': return '無効化されたタイムライン';
			case '_disabledTimeline.description': return '現在のロールでは、このタイムラインを使用することはできません。';
			case '_drivecleaner.orderBySizeDesc': return 'サイズが大きい順';
			case '_drivecleaner.orderByCreatedAtAsc': return '追加日が古い順';
			case '_webhookSettings.createWebhook': return 'Webhookを作成';
			case '_webhookSettings.name': return '名前';
			case '_webhookSettings.secret': return 'シークレット';
			case '_webhookSettings.events': return 'Webhookを実行するタイミング';
			case '_webhookSettings.active': return '有効';
			case '_webhookSettings._events.follow': return 'フォローしたとき';
			case '_webhookSettings._events.followed': return 'フォローされたとき';
			case '_webhookSettings._events.note': return 'ノートを投稿したとき';
			case '_webhookSettings._events.reply': return '返信されたとき';
			case '_webhookSettings._events.renote': return 'Renoteされたとき';
			case '_webhookSettings._events.reaction': return 'リアクションがあったとき';
			case '_webhookSettings._events.mention': return 'メンションされたとき';
			default: return null;
		}
	}
}

extension on _StringsJaKs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case '_lang_': return '日本語 (関西弁)';
			case 'headlineMisskey': return 'ノートでつながるネットワーク';
			case 'introMisskey': return 'ようお越し！Misskeyは、オープンソースの分散型マイクロブログサービスやねん。\n「ノート」を作って、いま起こっとることを共有したり、あんたについて皆に発信しよう📡\n「ツッコミ」機能で、皆のノートに素早く反応を追加したりもできるで✌\nほな新しい世界を探検しよか🚀';
			case 'poweredByMisskeyDescription': return '{name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつなんやで。';
			case 'monthAndDay': return '{month}月 {day}日';
			case 'search': return '探す';
			case 'notifications': return '通知';
			case 'username': return 'ユーザー名';
			case 'password': return 'パスワード';
			case 'forgotPassword': return 'パスワード忘れたん？';
			case 'fetchingAsApObject': return '今ちと連合に照会しとるで';
			case 'ok': return 'ええで';
			case 'gotIt': return 'ほい';
			case 'cancel': return 'やめとく';
			case 'noThankYou': return 'やめとく';
			case 'enterUsername': return 'ユーザー名を入れてや';
			case 'renotedBy': return '{user}がRenoteしたで';
			case 'noNotes': return 'ノートはあらへん';
			case 'noNotifications': return '通知はあらへん';
			case 'instance': return 'サーバー';
			case 'settings': return '設定';
			case 'notificationSettings': return '通知の設定';
			case 'basicSettings': return '基本設定';
			case 'otherSettings': return 'ほかの設定';
			case 'openInWindow': return 'ウィンドウで開くで';
			case 'profile': return 'プロフィール';
			case 'timeline': return 'タイムライン';
			case 'noAccountDescription': return '自己紹介食ってもた';
			case 'login': return 'ログイン';
			case 'loggingIn': return 'ログインしよるで';
			case 'logout': return 'ログアウト';
			case 'signup': return '新規登録';
			case 'uploading': return 'アップロードしとるで';
			case 'save': return 'とっとく';
			case 'users': return 'ユーザー';
			case 'addUser': return 'ユーザーを追加や';
			case 'favorite': return 'お気に入り';
			case 'favorites': return 'お気に入り';
			case 'unfavorite': return 'やっぱ気に入らん';
			case 'favorited': return 'お気に入りに入れたで';
			case 'alreadyFavorited': return 'もうお気に入りに入れとるがな。';
			case 'cantFavorite': return 'アカン、お気に入りに入れれんかったわ。';
			case 'pin': return 'ピン留めしとく';
			case 'unpin': return 'やっぱピン留めせん';
			case 'copyContent': return '内容をコピー';
			case 'copyLink': return 'リンクをコピー';
			case 'delete': return 'ほかす';
			case 'deleteAndEdit': return 'ほかして直す';
			case 'deleteAndEditConfirm': return 'このノートをほかしてもっかい直す？このノートへのツッコミ、Renote、返信も全部消えるんやけどそれでもええん？';
			case 'addToList': return 'リストに入れたる';
			case 'sendMessage': return 'メッセージを送る';
			case 'copyRSS': return 'RSSをコピー';
			case 'copyUsername': return 'ユーザー名をコピー';
			case 'copyUserId': return 'ユーザーIDをコピー';
			case 'copyNoteId': return 'ノートIDをコピー';
			case 'searchUser': return 'ユーザーを検索';
			case 'reply': return '返事';
			case 'loadMore': return 'まだまだあるで！';
			case 'showMore': return 'まだまだあるで！';
			case 'showLess': return 'さいなら';
			case 'youGotNewFollower': return 'フォローされたで';
			case 'receiveFollowRequest': return 'フォローリクエストされたで';
			case 'followRequestAccepted': return 'フォローが承認されたで';
			case 'mention': return 'メンション';
			case 'mentions': return '自分宛て';
			case 'directNotes': return 'ダイレクト投稿';
			case 'importAndExport': return 'インポートとエクスポート';
			case 'import': return 'インポート';
			case 'export': return 'エクスポート';
			case 'files': return 'ファイル';
			case 'download': return 'ダウンロード';
			case 'driveFileDeleteConfirm': return 'ファイル「{name}」をほかしてええか？このファイルを添付したノートも消えてまうで。';
			case 'unfollowConfirm': return '{name}のフォローを解除してもええんか？';
			case 'exportRequested': return 'エクスポートしてな、ってリクエストしたけど、これ多分めっちゃ時間かかるで。エクスポート終わったら「ドライブ」に突っ込んどくで。';
			case 'importRequested': return 'インポートしてな、ってリクエストしたけど、これ多分めっちゃ時間かかるで。';
			case 'lists': return 'リスト';
			case 'noLists': return 'リストなんてあらへんで';
			case 'note': return 'ノート';
			case 'notes': return 'ノート';
			case 'following': return 'フォロー';
			case 'followers': return 'フォロワー';
			case 'followsYou': return 'フォローされとるで';
			case 'createList': return 'リスト作る';
			case 'manageLists': return 'リストの管理';
			case 'error': return 'エラー';
			case 'somethingHappened': return 'なんかあかんわ';
			case 'retry': return 'もっぺんやる？';
			case 'pageLoadError': return 'ページが読み込めんかったわ。';
			case 'pageLoadErrorDescription': return 'これは普通ならネットワークかブラウザキャッシュが悪さしてるんよ。キャッシュをほかすか、もうちょっとだけ待ってくれへん？';
			case 'serverIsDead': return 'サーバーからの応答がないで。もうちょい待ってから試してみてな。';
			case 'youShouldUpgradeClient': return 'このページを表示するには、リロードして新しいバージョンのクライアントを使ってなー。';
			case 'enterListName': return 'リスト名を入れてや';
			case 'privacy': return 'プライバシー';
			case 'makeFollowManuallyApprove': return 'ええって言わなフォローできへんようにする';
			case 'defaultNoteVisibility': return 'もとからの公開範囲';
			case 'follow': return 'フォロー';
			case 'followRequest': return 'フォローを頼む';
			case 'followRequests': return 'フォロー申請';
			case 'unfollow': return 'フォローやめる';
			case 'followRequestPending': return 'フォロー許してくれるん待っとる';
			case 'enterEmoji': return '絵文字を入れてや';
			case 'renote': return 'Renote';
			case 'unrenote': return 'Renoteやめる';
			case 'renoted': return 'Renoteしたで。';
			case 'cantRenote': return 'この投稿はRenoteできへんらしい。';
			case 'cantReRenote': return 'Renote自体はRenoteできへんで。';
			case 'quote': return '引用';
			case 'inChannelRenote': return 'チャンネル内Renote';
			case 'inChannelQuote': return 'チャンネル内引用';
			case 'pinnedNote': return 'ピン留めされとるノート';
			case 'pinned': return 'ピン留めしとく';
			case 'you': return 'あんた';
			case 'clickToShow': return '押したら見えるで';
			case 'sensitive': return '気いつけて見いや';
			case 'add': return '増やす';
			case 'reaction': return 'ツッコミ';
			case 'reactions': return 'ツッコミ';
			case 'reactionSetting': return 'ピッカーに出しとくツッコミ';
			case 'reactionSettingDescription2': return 'ドラッグで並び替え、クリックで削除、＋を押して追加やで。';
			case 'rememberNoteVisibility': return '公開範囲覚えといて';
			case 'attachCancel': return 'のっけるのやめる';
			case 'markAsSensitive': return 'ちょっとこれはアカン';
			case 'unmarkAsSensitive': return 'そこまでアカンことないやろ';
			case 'enterFileName': return 'ファイル名を入れてや';
			case 'mute': return 'ミュート';
			case 'unmute': return 'ミュートやめたる';
			case 'renoteMute': return 'Renoteは見いひん';
			case 'renoteUnmute': return 'Renoteもやっぱ見るわ';
			case 'block': return 'ブロック';
			case 'unblock': return 'ブロックやめたる';
			case 'suspend': return '凍結';
			case 'unsuspend': return '溶かす';
			case 'blockConfirm': return 'ブロックしてもええんか？';
			case 'unblockConfirm': return 'ブロックやめたるってほんまか？';
			case 'suspendConfirm': return '凍結してしもうてええか？';
			case 'unsuspendConfirm': return '解凍するけどええか？';
			case 'selectList': return 'リストを選ぶ';
			case 'selectChannel': return 'チャンネルを選ぶ';
			case 'selectAntenna': return 'アンテナを選ぶ';
			case 'selectWidget': return 'ウィジェットを選ぶ';
			case 'editWidgets': return 'ウィジェットをいじる';
			case 'editWidgetsExit': return '編集終ったで';
			case 'customEmojis': return 'カスタム絵文字';
			case 'emoji': return '絵文字';
			case 'emojis': return '絵文字';
			case 'emojiName': return '絵文字はんの名前';
			case 'emojiUrl': return '絵文字画像URL';
			case 'addEmoji': return '絵文字を追加';
			case 'settingGuide': return 'ええ感じの設定';
			case 'cacheRemoteFiles': return 'リモートのファイルをキャッシュする';
			case 'cacheRemoteFilesDescription': return 'この設定を切っとったら、リモートファイルをキャッシュせんと直リンクするようになるで。サーバーの容量は節約できるけど、サムネイルを作らんなるから通信量が増えるで。';
			case 'flagAsBot': return 'Botにするで';
			case 'flagAsBotDescription': return 'もしこのアカウントをプログラム使うて運用するんやったら、このフラグをオンにしてや。オンにすれば、反応がバーッて連鎖せんように開発者が使うたり、Misskeyのシステム上での扱いがBotに合ったもんになるからな。';
			case 'flagAsCat': return 'Catやで';
			case 'flagAsCatDescription': return 'ワレ、猫ちゃんならこのフラグをつけてみ？';
			case 'flagShowTimelineReplies': return 'タイムラインにノートへの返信を表示するで';
			case 'flagShowTimelineRepliesDescription': return 'オンにしたら、タイムラインにユーザーのノートの他にもそのユーザーの他のノートへの返信を表示するで。';
			case 'autoAcceptFollowed': return 'フォローしとるユーザーからのフォローリクエストを勝手に許可しとく';
			case 'addAccount': return 'アカウントを追加';
			case 'reloadAccountsList': return 'アカウントリストの情報を更新';
			case 'loginFailed': return 'ログインに失敗してもうた…';
			case 'showOnRemote': return 'リモートで見る';
			case 'general': return '全般';
			case 'wallpaper': return '壁紙';
			case 'setWallpaper': return '壁紙を設定';
			case 'removeWallpaper': return '壁紙ほかす';
			case 'searchWith': return '検索: {q}';
			case 'youHaveNoLists': return 'リストがあらへんで？';
			case 'followConfirm': return '{name}をフォローしてええか？';
			case 'proxyAccount': return 'プロキシアカウント';
			case 'proxyAccountDescription': return 'プロキシアカウントは、代わりにフォローしてくれるアカウントや。例えば、551に豚まんが無いときやったり、ユーザーがリモートユーザーをアカウントに入れたとき、リストに入れられたユーザーが誰からもフォローされてないと寂しいやん。寂しいし、アクティビティも配達されへんから、プロキシアカウントがフォローしてくれるで。ええやつやん…';
			case 'host': return 'ホスト';
			case 'selectUser': return 'ユーザーを選ぶ';
			case 'recipient': return '宛先';
			case 'annotation': return '注釈';
			case 'federation': return '連合';
			case 'instances': return 'サーバー';
			case 'registeredAt': return '初観測';
			case 'latestRequestReceivedAt': return 'ちょっと前のリクエスト受信';
			case 'latestStatus': return 'ちょっと前のステータス';
			case 'storageUsage': return 'ストレージ使うた量';
			case 'charts': return 'チャート';
			case 'perHour': return '1時間ごと';
			case 'perDay': return '1日ごと';
			case 'stopActivityDelivery': return 'アクティビティの配送をやめる';
			case 'blockThisInstance': return 'このサーバーをブロックすんで';
			case 'operations': return '操作';
			case 'software': return 'ソフトウェア';
			case 'version': return 'バージョン';
			case 'metadata': return 'メタデータ';
			case 'withNFiles': return '{n}個のファイル';
			case 'monitor': return 'モニター';
			case 'jobQueue': return 'ジョブキュー';
			case 'cpuAndMemory': return 'CPUとメモリ';
			case 'network': return 'ネットワーク';
			case 'disk': return 'ディスク';
			case 'instanceInfo': return 'サーバー情報';
			case 'statistics': return '統計';
			case 'clearQueue': return 'キューをほかす';
			case 'clearQueueConfirmTitle': return 'キューをほかしとこか？';
			case 'clearQueueConfirmText': return '未配達の投稿は配送されんなるで。ふつうこの操作を行う必要は無いんやけどな。';
			case 'clearCachedFiles': return 'キャッシュをほかす';
			case 'clearCachedFilesConfirm': return 'キャッシュされとるリモートファイルをみんなほかしてええか？';
			case 'blockedInstances': return 'ブロックしたサーバー';
			case 'blockedInstancesDescription': return 'ブロックしたいサーバーのホストを改行で区切って設定してな。ブロックされてもうたサーバーとはもう金輪際やり取りできひんくなるで。ついでにそのサブドメインもブロックするで。';
			case 'muteAndBlock': return 'ミュートとブロック';
			case 'mutedUsers': return 'ミュートしたユーザー';
			case 'blockedUsers': return 'ブロックしたユーザー';
			case 'noUsers': return 'ユーザーはおらん';
			case 'editProfile': return 'プロフィールをいじる';
			case 'noteDeleteConfirm': return 'このノートをほかしてええか？';
			case 'pinLimitExceeded': return 'これ以上ピン留めできひん';
			case 'intro': return 'Misskeyのインストールが完了したで！管理者アカウントを作ってや。';
			case 'done': return 'でけた';
			case 'processing': return '処理しとる';
			case 'preview': return 'プレビュー';
			case 'default_': return 'デフォルト';
			case 'defaultValueIs': return 'デフォルト: {value}';
			case 'noCustomEmojis': return '絵文字はあらへん';
			case 'noJobs': return 'ジョブはあらへん';
			case 'federating': return '連合しとる';
			case 'blocked': return 'ブロックしとる';
			case 'suspended': return '配信せぇへん';
			case 'all': return 'みんな';
			case 'subscribing': return '購読しとる';
			case 'publishing': return '配信しとる';
			case 'notResponding': return '応答してへんで';
			case 'instanceFollowing': return 'サーバーのフォロー';
			case 'instanceFollowers': return 'サーバーのフォロワー\n';
			case 'instanceUsers': return 'サーバーのユーザー';
			case 'changePassword': return 'パスワードをいじる';
			case 'security': return 'セキュリティ';
			case 'retypedNotMatch': return '入れたやつ合うてへんわ。';
			case 'currentPassword': return '今のパスワード';
			case 'newPassword': return '次のパスワード';
			case 'newPasswordRetype': return '今度のパスワード(もっぺん入れて)';
			case 'attachFile': return 'ファイルのっける';
			case 'more': return '他のん';
			case 'featured': return 'ハイライト';
			case 'usernameOrUserId': return 'ユーザー名かユーザーID';
			case 'noSuchUser': return 'ユーザーが見つからへんで';
			case 'lookup': return '見てきて';
			case 'announcements': return 'お知らせ';
			case 'imageUrl': return '画像URL';
			case 'remove': return 'ほかす';
			case 'removed': return 'ほかしたで！';
			case 'removeAreYouSure': return '「{x}」はほかしてええか？';
			case 'deleteAreYouSure': return '「{x}」はほかしてええか？';
			case 'resetAreYouSure': return 'リセットしてええん？';
			case 'saved': return '保存したで！';
			case 'messaging': return 'チャット';
			case 'upload': return 'アップロード';
			case 'keepOriginalUploading': return 'オリジナル画像のまんま';
			case 'keepOriginalUploadingDescription': return '画像を上げるときにオリジナル版のまんまにするで。オフにしたら、上げたときにブラウザでWeb公開用の画像を生成するで。 ';
			case 'fromDrive': return 'ドライブから';
			case 'fromUrl': return 'URLから';
			case 'uploadFromUrl': return 'URLアップロード';
			case 'uploadFromUrlDescription': return 'このURLのファイルをアップロードしたいねん';
			case 'uploadFromUrlRequested': return 'アップロードしたい言うといたで';
			case 'uploadFromUrlMayTakeTime': return 'アップロード終わるんにちょい時間かかるかもしれへんわ。';
			case 'explore': return 'みつける';
			case 'messageRead': return 'もう読んだ';
			case 'noMoreHistory': return 'これより昔のんはあらへんで';
			case 'startMessaging': return 'チャットやるで';
			case 'nUsersRead': return '{n}人が読んでもうた';
			case 'agreeTo': return '{x}に同意したで';
			case 'agree': return 'せやな';
			case 'agreeBelow': return '下記に同意したる';
			case 'basicNotesBeforeCreateAccount': return 'よう読んでやってや';
			case 'termsOfService': return '使うための決め事';
			case 'start': return '始める';
			case 'home': return 'ホーム';
			case 'remoteUserCaution': return 'リモートユーザーやから、足りひん情報あるかもしれへん。';
			case 'activity': return 'アクティビティ';
			case 'images': return '画像';
			case 'image': return '画像';
			case 'birthday': return '生まれた日';
			case 'yearsOld': return '{age}歳';
			case 'registeredDate': return '始めた日';
			case 'location': return '場所';
			case 'theme': return 'テーマ';
			case 'themeForLightMode': return 'ライトモードではこのテーマ使うて';
			case 'themeForDarkMode': return 'ダークモードではこのテーマ使うて';
			case 'light': return 'ライト';
			case 'dark': return 'ダーク';
			case 'lightThemes': return 'デイゲーム';
			case 'darkThemes': return 'ナイトゲーム';
			case 'syncDeviceDarkMode': return 'デバイスのダークモードと一緒にする';
			case 'drive': return 'ドライブ';
			case 'fileName': return 'ファイル名';
			case 'selectFile': return 'ファイル選んでや';
			case 'selectFiles': return 'ファイル選んでや';
			case 'selectFolder': return 'フォルダ選んでや';
			case 'selectFolders': return 'フォルダ選んでや';
			case 'renameFile': return 'ファイル名をいらう';
			case 'folderName': return 'フォルダー名';
			case 'createFolder': return 'フォルダー作る';
			case 'renameFolder': return 'フォルダー名を変える';
			case 'deleteFolder': return 'フォルダーをほかす';
			case 'addFile': return 'ファイルを追加';
			case 'emptyDrive': return 'ドライブは空っぽや';
			case 'emptyFolder': return 'このフォルダーは空や';
			case 'unableToDelete': return '消せんかったわ';
			case 'inputNewFileName': return '今度のファイル名は何にするん？';
			case 'inputNewDescription': return '新しいキャプションを入れてや';
			case 'inputNewFolderName': return '今度のフォルダ名は何にするん？';
			case 'circularReferenceFolder': return '移動先のフォルダーは、移動するフォルダーのサブフォルダーや。';
			case 'hasChildFilesOrFolders': return 'このフォルダは空っぽちゃうから消されへん';
			case 'copyUrl': return 'URLをコピー';
			case 'rename': return '名前を変えるで';
			case 'avatar': return 'アイコン';
			case 'banner': return 'バナー';
			case 'nsfw': return '見るんは気いつけてな';
			case 'whenServerDisconnected': return 'サーバーとの接続が失くなってしもうたとき';
			case 'disconnectedFromServer': return 'サーバーが機嫌悪いねん';
			case 'reload': return 'リロード';
			case 'doNothing': return '何もせんとく';
			case 'reloadConfirm': return 'リロードしてええか？';
			case 'watch': return 'ウォッチ';
			case 'unwatch': return 'ウォッチやめる';
			case 'accept': return 'ええで';
			case 'reject': return 'あかん';
			case 'normal': return 'ええ感じ';
			case 'instanceName': return 'サーバー名';
			case 'instanceDescription': return 'サーバーの紹介';
			case 'maintainerName': return '管理者はんの名前';
			case 'maintainerEmail': return '管理者はんのメールアドレス';
			case 'tosUrl': return '使うための決め事のURL';
			case 'thisYear': return '今年';
			case 'thisMonth': return '今月';
			case 'today': return '今日';
			case 'dayX': return '{day}日';
			case 'monthX': return '{month}月';
			case 'yearX': return '{year}年';
			case 'pages': return 'ページ';
			case 'integration': return '連携';
			case 'connectService': return 'つなげるで';
			case 'disconnectService': return '切るで';
			case 'enableLocalTimeline': return 'ローカルタイムラインを使えるようにするわ';
			case 'enableGlobalTimeline': return 'グローバルタイムラインを使えるようにするわ';
			case 'disablingTimelinesInfo': return 'ここらへんのタイムラインを使えんようにしてしもても、管理者とモデレーターは使えるままになってるで、そうやなかったら不便やからな。';
			case 'registration': return '登録';
			case 'enableRegistration': return '一見さんでも誰でもいらっしゃ～い';
			case 'invite': return '来てや';
			case 'driveCapacityPerLocalAccount': return 'ローカルユーザーはんひとりあたりのドライブ容量';
			case 'driveCapacityPerRemoteAccount': return 'リモートユーザーはんひとりあたりのドライブ容量';
			case 'inMb': return 'メガバイト単位';
			case 'iconUrl': return 'アイコン画像のURL';
			case 'bannerUrl': return 'バナー画像のURL';
			case 'backgroundImageUrl': return '背景画像のURL';
			case 'basicInfo': return '基本情報';
			case 'pinnedUsers': return 'ピン留めしたユーザー';
			case 'pinnedUsersDescription': return '「みつける」ページとかにピン留めしたいユーザーをここに書けばええんやで。ユーザー毎に改行してや。';
			case 'pinnedPages': return 'ピン留めページ';
			case 'pinnedPagesDescription': return 'サーバーのいっちゃん上にピン留めしたいページのパスを改行で区切って記述してな';
			case 'pinnedClipId': return 'ピン留めするクリップのID';
			case 'pinnedNotes': return 'ピン留めされとるノート';
			case 'hcaptcha': return 'hCaptcha（キャプチャ）';
			case 'enableHcaptcha': return 'hCaptcha（キャプチャ）をつけとく';
			case 'hcaptchaSiteKey': return 'サイトキー';
			case 'hcaptchaSecretKey': return 'シークレットキー';
			case 'recaptcha': return 'reCAPTCHA';
			case 'enableRecaptcha': return 'reCAPTCHA（リキャプチャ）を有効にする';
			case 'recaptchaSiteKey': return 'サイトキー';
			case 'recaptchaSecretKey': return 'シークレットキー';
			case 'turnstile': return 'Turnstile';
			case 'enableTurnstile': return 'Turnstileを有効にするで';
			case 'turnstileSiteKey': return 'サイトキー';
			case 'turnstileSecretKey': return 'シークレットキー';
			case 'avoidMultiCaptchaConfirm': return 'ぎょうさんのCaptchaをつこてしまうと、仲良うせんことがあるんや。他のCaptchaをなおしとこか？別にキャンセルしてもろうたらCaptchaは消されへんで済むけど知らんで。';
			case 'antennas': return 'アンテナ';
			case 'manageAntennas': return 'アンテナいじる';
			case 'name': return '名前';
			case 'antennaSource': return '受信ソース(このソースは食われへん)';
			case 'antennaKeywords': return '受信キーワード';
			case 'antennaExcludeKeywords': return '除外キーワード';
			case 'antennaKeywordsDescription': return 'スペースで区切ったるとAND指定で、改行で区切ったるとOR指定や';
			case 'notifyAntenna': return '新しいノートを通知すんで';
			case 'withFileAntenna': return 'なんか添付されたノートだけ';
			case 'enableServiceworker': return 'ブラウザにプッシュ通知が行くようにする';
			case 'antennaUsersDescription': return 'ユーザー名を改行で区切ったってな';
			case 'caseSensitive': return '大文字と小文字は別もんや';
			case 'withReplies': return '返信も入れたって';
			case 'connectedTo': return '次のアカウントに繋がっとるで';
			case 'notesAndReplies': return '投稿と返信';
			case 'withFiles': return 'ファイル付いとる';
			case 'silence': return 'サイレンス';
			case 'silenceConfirm': return 'サイレンスしよか？';
			case 'unsilence': return 'サイレンスやめるで';
			case 'unsilenceConfirm': return 'サイレンスやめよか？';
			case 'popularUsers': return '人気のユーザー';
			case 'recentlyUpdatedUsers': return 'ちょっと前に投稿したばっかりのユーザー';
			case 'recentlyRegisteredUsers': return 'ちょっと前に始めたばっかりのユーザー';
			case 'recentlyDiscoveredUsers': return '最近見っけたユーザー';
			case 'exploreUsersCount': return '{count}もユーザーおるで';
			case 'exploreFediverse': return 'Fediverseを探ってみる';
			case 'popularTags': return '人気のタグ';
			case 'userList': return 'リスト';
			case 'about': return '情報';
			case 'aboutMisskey': return 'Misskeyってなんや？';
			case 'administrator': return '管理者';
			case 'token': return 'トークン';
			case 'twofa': return '二要素認証';
			case 'totp': return '認証アプリ';
			case 'totpDescription': return '認証アプリ使うてワンタイムパスワードを入れる';
			case 'moderator': return 'モデレーター';
			case 'moderation': return 'モデレーション';
			case 'nUsersMentioned': return '{n}人が投稿';
			case 'securityKeyAndPasskey': return 'セキュリティキー・パスキー';
			case 'securityKey': return 'セキュリティキー';
			case 'lastUsed': return '最後につこうた日';
			case 'lastUsedAt': return '最後に使うたんは: {t}';
			case 'unregister': return '登録やめる';
			case 'passwordLessLogin': return 'パスワード無くてもログインできるようにする';
			case 'passwordLessLoginDescription': return 'パスワードなんかいらん、セキュリティキーとかパスキーだけでログインするわ';
			case 'resetPassword': return 'パスワードをリセット';
			case 'newPasswordIs': return '今度のパスワードは「{password}」や';
			case 'reduceUiAnimation': return 'UIの動きやアニメーションを少なする';
			case 'share': return 'わけわけ';
			case 'notFound': return '見つからへんね';
			case 'notFoundDescription': return '言われたURLにはまるページはなかったで。';
			case 'uploadFolder': return 'とりあえずアップロードしたやつ置いとく所';
			case 'cacheClear': return 'キャッシュをほかす';
			case 'markAsReadAllNotifications': return '通知はもう全て読んだわっ';
			case 'markAsReadAllUnreadNotes': return '投稿は全て読んだわっ';
			case 'markAsReadAllTalkMessages': return 'チャットはもうぜんぶ読んだわっ';
			case 'help': return 'ヘルプ';
			case 'inputMessageHere': return 'ここにメッセージ書いてや';
			case 'close': return 'さいなら';
			case 'invites': return '来てや';
			case 'members': return 'メンバーはん';
			case 'transfer': return '譲渡';
			case 'title': return 'タイトル';
			case 'text': return 'テキスト';
			case 'enable': return '有効にするで';
			case 'next': return '次';
			case 'retype': return 'もっかい入力';
			case 'noteOf': return '{user}はんのノート';
			case 'quoteAttached': return '引用付いとるで';
			case 'quoteQuestion': return '引用として添付してもええか？';
			case 'noMessagesYet': return 'まだチャットはあらへんで';
			case 'newMessageExists': return '新しいメッセージがきたで';
			case 'onlyOneFileCanBeAttached': return 'ごめんな、メッセージに添付できるファイルはひとつだけなんよ。';
			case 'signinRequired': return 'ログインしてくれへん？';
			case 'invitations': return '来てや';
			case 'invitationCode': return '招待コード';
			case 'checking': return '確認しとるで';
			case 'available': return '使えるで';
			case 'unavailable': return '利用できん';
			case 'usernameInvalidFormat': return 'a~z、A~Z、0~9、_が使えるで';
			case 'tooShort': return '短すぎやろ！';
			case 'tooLong': return '長すぎやろ！';
			case 'weakPassword': return 'へぼいパスワード';
			case 'normalPassword': return 'ぼちぼちのパスワード';
			case 'strongPassword': return 'ええ感じのパスワード';
			case 'passwordMatched': return 'よし！一致や！';
			case 'passwordNotMatched': return '一致しとらんで？';
			case 'signinWith': return '{x}でログイン';
			case 'signinFailed': return 'ログインできんかったで。もっかいユーザー名とパスワードを確認してみてや。';
			case 'or': return 'それか';
			case 'language': return '言語';
			case 'uiLanguage': return 'UIの表示言語';
			case 'aboutX': return '{x}について';
			case 'emojiStyle': return '絵文字のスタイル';
			case 'native': return 'ネイティブ';
			case 'disableDrawer': return 'メニューをドロワーで表示せえへん';
			case 'showNoteActionsOnlyHover': return 'ノートの操作部をホバー時のみ表示するで';
			case 'noHistory': return '履歴はないわ。';
			case 'signinHistory': return 'ログイン履歴';
			case 'enableAdvancedMfm': return 'ややこしいMFMもありにする';
			case 'enableAnimatedMfm': return '動きがやかましいMFMも許したる';
			case 'doing': return 'やっとるがな';
			case 'category': return 'カテゴリ';
			case 'tags': return 'タグ';
			case 'docSource': return 'このドキュメントのソース';
			case 'createAccount': return 'アカウントを作るで';
			case 'existingAccount': return '前に作ったアカウント';
			case 'regenerate': return 'もっぺん生成するで';
			case 'fontSize': return '字の大きさ';
			case 'mediaListWithOneImageAppearance': return '画像が1枚のみのメディアリストの高さ';
			case 'limitTo': return '{x}をいっぱいに';
			case 'noFollowRequests': return 'フォロー申請はあらへんで';
			case 'openImageInNewTab': return '画像を新しいタブで開くで';
			case 'dashboard': return 'ダッシュボード';
			case 'local': return 'ローカル';
			case 'remote': return 'リモート';
			case 'total': return '合計';
			case 'weekOverWeekChanges': return '前週比';
			case 'dayOverDayChanges': return '前日比';
			case 'appearance': return '見た目';
			case 'clientSettings': return 'クライアントの設定';
			case 'accountSettings': return 'アカウントの設定';
			case 'promotion': return '宣伝';
			case 'promote': return '宣伝';
			case 'numberOfDays': return '日数';
			case 'hideThisNote': return 'このノートは表示せんでいい';
			case 'showFeaturedNotesInTimeline': return 'タイムラインにおすすめのノートを表示してや';
			case 'objectStorage': return 'オブジェクトストレージ';
			case 'useObjectStorage': return 'オブジェクトストレージを使う';
			case 'objectStorageBaseUrl': return 'Base URL';
			case 'objectStorageBaseUrlDesc': return '参照に使うにURLやで。CDNやProxyを使用してるんならそのURL、S3: \'https://<bucket>.s3.amazonaws.com\'、GCSとかなら: \'https://storage.googleapis.com/<bucket>\'。';
			case 'objectStorageBucket': return 'Bucket';
			case 'objectStorageBucketDesc': return '使ってるサービスのbucket名を選んでな';
			case 'objectStoragePrefix': return 'Prefix';
			case 'objectStoragePrefixDesc': return 'このprefixのディレクトリ下に格納されるで';
			case 'objectStorageEndpoint': return 'Endpoint';
			case 'objectStorageEndpointDesc': return 'S3のときは空、それ以外は各サービスのendpointを指定してなー。\'<host>\'ってやるか\'<host>:<port>\'みたいに指定するんやで。';
			case 'objectStorageRegion': return 'Region';
			case 'objectStorageRegionDesc': return '\'xx-east-1\'みたいなregionを指定したってやー。使ってるサービスにregionの概念がないときは、空か\'us-east-1\'にするんやで。';
			case 'objectStorageUseSSL': return 'SSLを使う';
			case 'objectStorageUseSSLDesc': return 'API接続にhttpsを使わん場合はオフにするんやで';
			case 'objectStorageUseProxy': return 'Proxyを使う';
			case 'objectStorageUseProxyDesc': return 'API接続にproxy使わんのやったら切ってくれへん？';
			case 'objectStorageSetPublicRead': return 'アップロードした時に\'public-read\'を設定してや';
			case 's3ForcePathStyleDesc': return 's3ForcePathStyleを使たらバケット名をURLのホスト名やなくてパスの一部として必ず指定させるようになるで。セルフホストされたMinioとかを使うてるんやったら有効にせなあかん場合があるで。';
			case 'serverLogs': return 'サーバーログ';
			case 'deleteAll': return '全部ほかす';
			case 'showFixedPostForm': return 'タイムラインの上の方で投稿できるようにやってくれへん？';
			case 'showFixedPostFormInChannel': return 'タイムラインの上の方で投稿できるようにするわ(チャンネル)';
			case 'newNoteRecived': return '新しいノートがあるで';
			case 'sounds': return 'サウンド';
			case 'sound': return 'サウンド';
			case 'listen': return '聴く';
			case 'none': return 'なし';
			case 'showInPage': return 'ページで表示';
			case 'popout': return 'ポップアウト';
			case 'volume': return 'やかましさ';
			case 'masterVolume': return '全体のやかましさ';
			case 'details': return 'もっと';
			case 'chooseEmoji': return '絵文字を選ぶ';
			case 'unableToProcess': return 'なんか奥の方で詰まってもうた';
			case 'recentUsed': return '最近使ったやつ';
			case 'install': return 'インストール';
			case 'uninstall': return 'アンインストール';
			case 'installedApps': return 'インストールされとるアプリ';
			case 'nothing': return 'あらへん';
			case 'installedDate': return 'インストールした日時';
			case 'lastUsedDate': return '最後に使った日時';
			case 'state': return '状態';
			case 'sort': return '仕分ける';
			case 'ascendingOrder': return '小さい順';
			case 'descendingOrder': return '大きい順';
			case 'scratchpad': return 'スクラッチパッド';
			case 'scratchpadDescription': return 'スクラッチパッドではAiScriptを色々試すことができるんや。Misskeyに対して色々できるコードを書いて動かしてみたり、結果を見たりできるで。';
			case 'output': return '出力';
			case 'script': return 'スクリプト';
			case 'disablePagesScript': return 'Pagesのスクリプトを無効にしてや';
			case 'updateRemoteUser': return 'リモートユーザー情報の更新してくれん？';
			case 'deleteAllFiles': return 'ファイルを全部ほかす';
			case 'deleteAllFilesConfirm': return 'ホンマにファイル全部ほかすんか？消したもんはもう戻ってこんのやで？';
			case 'removeAllFollowing': return 'フォローを全解除';
			case 'removeAllFollowingDescription': return '{host}からのフォローをすべて解除するで。そのインスタンスが消えて無くなった時とかには便利な機能やで。';
			case 'userSuspended': return 'このユーザーは...凍結されとる。';
			case 'userSilenced': return 'このユーザーは...サイレンスされとる。';
			case 'yourAccountSuspendedTitle': return 'あんたのアカウント凍結されとるで';
			case 'yourAccountSuspendedDescription': return 'あんたのアカウントは、サーバーの使うための決め事に違反したとかの理由で、凍結されとるで。細かいことは管理者までお問い合わせたってなー。絶対に新しいアカウント作ったらあかんで。絶対やで。';
			case 'tokenRevoked': return 'トークンが無効やで';
			case 'tokenRevokedDescription': return 'ログイントークンが失効しとるで。もっかいログインしてもろてもええか？';
			case 'accountDeleted': return 'アカウントは削除されとるで';
			case 'accountDeletedDescription': return 'このアカウントは削除されとるで。';
			case 'menu': return 'メニュー';
			case 'divider': return '分割線';
			case 'addItem': return '項目を追加';
			case 'rearrange': return '並び替え';
			case 'relays': return 'リレー';
			case 'addRelay': return 'リレーの追加';
			case 'inboxUrl': return 'inboxのURL';
			case 'addedRelays': return '追加済みのリレー';
			case 'serviceworkerInfo': return 'プッシュ通知をするんなら有効にせなあかんで。';
			case 'deletedNote': return '消された投稿';
			case 'invisibleNote': return '非公開の投稿';
			case 'enableInfiniteScroll': return '自動でもっと見る';
			case 'visibility': return '公開範囲';
			case 'poll': return 'アンケート';
			case 'useCw': return '内容を隠す';
			case 'enablePlayer': return 'プレイヤーを開く';
			case 'disablePlayer': return 'プレイヤーを閉じる';
			case 'expandTweet': return 'ツイートを展開する';
			case 'themeEditor': return 'テーマエディター';
			case 'description': return '説明';
			case 'describeFile': return 'キャプションを付ける';
			case 'enterFileDescription': return 'キャプションを入力';
			case 'author': return '作者';
			case 'leaveConfirm': return 'あんた、いじったのにまだ保存してないで！ほかしてええか？';
			case 'manage': return '管理';
			case 'plugins': return 'プラグイン';
			case 'preferencesBackups': return '設定のバックアップ';
			case 'deck': return 'デッキ';
			case 'undeck': return 'デッキ解除';
			case 'useBlurEffectForModal': return 'モーダルにぼかし効果を使用';
			case 'useFullReactionPicker': return 'フル機能の突っ込みピッカーを使用';
			case 'width': return '幅';
			case 'height': return '高さ';
			case 'large': return '大';
			case 'medium': return '中';
			case 'small': return '小';
			case 'generateAccessToken': return 'アクセストークンの発行';
			case 'permission': return '権限';
			case 'enableAll': return '全部使えるようにする';
			case 'disableAll': return '全部使えへんようにする';
			case 'tokenRequested': return 'アカウントへのアクセス許してやったらどうや';
			case 'pluginTokenRequestedDescription': return 'このプラグインはここで設定した権限を使えるようになるで。';
			case 'notificationType': return '通知の種類';
			case 'edit': return '編集';
			case 'emailServer': return 'メールサーバー';
			case 'enableEmail': return 'メール配信を受け取る';
			case 'emailConfigInfo': return 'メールアドレスの確認とかパスワードリセットの時に使うで';
			case 'email': return 'メール';
			case 'emailAddress': return 'メールアドレス';
			case 'smtpConfig': return 'SMTP サーバーの設定';
			case 'smtpHost': return 'ホスト';
			case 'smtpPort': return 'ポート';
			case 'smtpUser': return 'ユーザー名';
			case 'smtpPass': return 'パスワード';
			case 'emptyToDisableSmtpAuth': return 'ユーザー名とパスワードになんも入れんかったら、SMTP認証を無効化するで';
			case 'smtpSecure': return 'SMTP 接続に暗黙的なSSL/TLSを使用する';
			case 'smtpSecureInfo': return 'STARTTLS使っとる時はオフにしてや。';
			case 'testEmail': return '配信テスト';
			case 'wordMute': return 'ワードミュート';
			case 'regexpError': return '正規表現エラー';
			case 'regexpErrorDescription': return '{tab}ワードミュートの{line}行目の正規表現にエラーが出てきたで:';
			case 'instanceMute': return 'サーバーミュート';
			case 'userSaysSomething': return '{name}が何か言うとるわ';
			case 'makeActive': return '使うで';
			case 'display': return '表示';
			case 'copy': return 'コピー';
			case 'metrics': return 'メトリクス';
			case 'overview': return '概要';
			case 'logs': return 'ログ';
			case 'delayed': return '遅延';
			case 'database': return 'データベース';
			case 'channel': return 'チャンネル';
			case 'create': return '作成';
			case 'notificationSetting': return '通知設定';
			case 'notificationSettingDesc': return '表示する通知の種類えらんでや。';
			case 'useGlobalSetting': return 'グローバル設定を使ってや';
			case 'useGlobalSettingDesc': return 'オンにすると、アカウントの通知設定が使われるで。オフにすると、別々に設定できるようになるで。';
			case 'other': return 'その他';
			case 'regenerateLoginToken': return 'ログイントークンを再生成';
			case 'regenerateLoginTokenDescription': return 'ログインに使われる内部トークンをもっかい作るで。いつもならこれをやる必要はないで。もっかい作ると、全部のデバイスでログアウトされるで気ぃつけてなー。';
			case 'setMultipleBySeparatingWithSpace': return 'スペースで区切って何個でも設定できるで。';
			case 'fileIdOrUrl': return 'ファイルIDかURL';
			case 'behavior': return '動作';
			case 'sample': return 'サンプル';
			case 'abuseReports': return '通報';
			case 'reportAbuse': return '通報';
			case 'reportAbuseOf': return '{name}を通報する';
			case 'fillAbuseReportDescription': return '細かい通報理由を書いてなー。対象ノートがある時はそのURLも書いといてなー。';
			case 'abuseReported': return '無事内容が送信されたみたいやで。おおきに〜。';
			case 'reporter': return '通報者';
			case 'reporteeOrigin': return '通報先';
			case 'reporterOrigin': return '通報元';
			case 'forwardReport': return 'リモートサーバーに通報を転送するで';
			case 'forwardReportIsAnonymous': return 'リモートサーバーからはあんたの情報は見えんなって、匿名のシステムアカウントとして表示されるで。';
			case 'send': return '送信';
			case 'abuseMarkAsResolved': return '対応したで';
			case 'openInNewTab': return '新しいタブで開く';
			case 'openInSideView': return 'サイドビューで開く';
			case 'defaultNavigationBehaviour': return 'デフォルトのナビゲーション';
			case 'editTheseSettingsMayBreakAccount': return 'このへんの設定をようわからんままイジるとアカウントが壊れて使えんくなるかも知れへんで？';
			case 'instanceTicker': return 'ノートのサーバー情報';
			case 'waitingFor': return '{x}を待っとるで';
			case 'random': return 'ランダム';
			case 'system': return 'システム';
			case 'switchUi': return 'UI切り替え';
			case 'desktop': return 'デスクトップ';
			case 'clip': return 'クリップ';
			case 'createNew': return '新しく作るで';
			case 'optional': return '任意';
			case 'createNewClip': return '新しいクリップを作るで';
			case 'unclip': return 'クリップ解除するで';
			case 'confirmToUnclipAlreadyClippedNote': return 'このノートはすでにクリップ「{name}」に含まれとるで。ノートをこのクリップから除外しよか？';
			case 'public': return 'パブリック';
			case 'i18nInfo': return 'Misskeyは有志によっていろんな言語に翻訳されとるで。{link}で翻訳に協力したってやー。';
			case 'manageAccessTokens': return 'アクセストークンの管理';
			case 'accountInfo': return 'アカウント情報';
			case 'notesCount': return 'ノートの数やで';
			case 'repliesCount': return '返信した数やで';
			case 'renotesCount': return 'Renoteした数やで';
			case 'repliedCount': return '返信された数やで';
			case 'renotedCount': return 'Renoteされた数やで';
			case 'followingCount': return 'フォロー数やで';
			case 'followersCount': return 'フォロワー数やで';
			case 'sentReactionsCount': return 'ツッコんだ数';
			case 'receivedReactionsCount': return 'ツッコまれた数';
			case 'pollVotesCount': return 'アンケートに投票した数';
			case 'pollVotedCount': return 'アンケートに投票された数';
			case 'yes': return 'ええで';
			case 'no': return 'あかん';
			case 'driveFilesCount': return 'ドライブのファイル数';
			case 'driveUsage': return 'ドライブ使用量やで';
			case 'noCrawle': return 'クローラーによるインデックスを拒否するで';
			case 'noCrawleDescription': return '検索エンジンにあんたのユーザーページ、ノート、Pagesとかのコンテンツを登録(インデックス)せぇへんように頼むで。';
			case 'lockedAccountInfo': return 'フォローを承認制にしとっても、ノートの公開範囲を「フォロワー」にせぇへん限り、誰でもあんたのノートを見れるで。';
			case 'alwaysMarkSensitive': return 'デフォルトでメディアを閲覧注意にするで';
			case 'loadRawImages': return '添付画像のサムネイルをオリジナル画質にするで';
			case 'disableShowingAnimatedImages': return 'アニメーション画像を再生せんとくで';
			case 'verificationEmailSent': return '無事確認のメールを送れたで。メールに書いてあるリンクにアクセスして、設定を完了してなー。';
			case 'notSet': return '未設定';
			case 'emailVerified': return 'メールアドレスは確認されたで';
			case 'noteFavoritesCount': return 'お気に入りノートの数やで';
			case 'pageLikesCount': return 'Pageにええやんと思った数';
			case 'pageLikedCount': return 'Pageにええやんと思ってくれた数';
			case 'contact': return '連絡先';
			case 'useSystemFont': return 'システムのデフォルトのフォントを使うで';
			case 'clips': return 'クリップ';
			case 'experimentalFeatures': return 'おためし機能やで';
			case 'experimental': return '実験的';
			case 'thisIsExperimentalFeature': return 'これは実験的な機能やで。仕様が変更になったりちゃんと動かなかったりするかもやで。';
			case 'developer': return '開発者やで';
			case 'makeExplorable': return 'アカウントを見つけやすくするで';
			case 'makeExplorableDescription': return 'オフにすると、「みつける」にアカウントが載らんくなるで。';
			case 'showGapBetweenNotesInTimeline': return 'タイムラインのノートを離して表示するで';
			case 'duplicate': return '複製';
			case 'left': return '左';
			case 'center': return '真ん中';
			case 'wide': return '広い';
			case 'narrow': return '狭い';
			case 'reloadToApplySetting': return '設定はページリロード後に反映されるで。今リロードしとくか？';
			case 'needReloadToApply': return '反映には再起動せなあかんで';
			case 'showTitlebar': return 'タイトルバーを見せる';
			case 'clearCache': return 'キャッシュをほかす';
			case 'onlineUsersCount': return '{n}人が起きとるで';
			case 'nUsers': return '{n}ユーザー';
			case 'nNotes': return '{n}ノート';
			case 'sendErrorReports': return 'エラーリポートを送る';
			case 'sendErrorReportsDescription': return 'オンにしたら、変なことが起きたときにエラーの詳細がMisskeyに送られて、ソフトウェアの品質向上に使えるようになるで。エラー情報には、OSのバージョン、ブラウザの種類、行動履歴なんかが含まれるで。';
			case 'myTheme': return 'マイテーマ';
			case 'backgroundColor': return '背景';
			case 'accentColor': return 'アクセント';
			case 'textColor': return '文字';
			case 'saveAs': return '名前を付けて保存';
			case 'advanced': return '高度';
			case 'advancedSettings': return '高度な設定';
			case 'value': return '値';
			case 'createdAt': return '作成した日';
			case 'updatedAt': return '更新日時';
			case 'saveConfirm': return '保存するで？';
			case 'deleteConfirm': return 'ホンマに削除するで？';
			case 'invalidValue': return '有効な値じゃないみたいやで。';
			case 'registry': return 'レジストリ';
			case 'closeAccount': return 'アカウントを閉鎖する';
			case 'currentVersion': return '現在のバージョン';
			case 'latestVersion': return '最新のバージョン';
			case 'youAreRunningUpToDateClient': return '今使ってるクライアントが最新やで！';
			case 'newVersionOfClientAvailable': return '新しいバージョンのクライアントが使えるで。';
			case 'usageAmount': return '使用量';
			case 'capacity': return '容量';
			case 'inUse': return '使用中';
			case 'editCode': return 'コードを編集';
			case 'apply': return '適用';
			case 'receiveAnnouncementFromInstance': return 'サーバーからのお知らせを受け取る';
			case 'emailNotification': return 'メール通知';
			case 'publish': return '公開';
			case 'inChannelSearch': return 'チャンネル内検索';
			case 'useReactionPickerForContextMenu': return '右クリックでツッコミピッカーを開くようにする';
			case 'typingUsers': return '{users}が今書きよるで';
			case 'jumpToSpecifiedDate': return '特定の日付にジャンプ';
			case 'showingPastTimeline': return '過去のタイムラインを表示してるで';
			case 'clear': return 'クリア';
			case 'markAllAsRead': return 'もうみな読んでもうたわ';
			case 'goBack': return '戻る';
			case 'unlikeConfirm': return 'いいね解除するんか？';
			case 'fullView': return 'フルビュー';
			case 'quitFullView': return 'フルビュー解除';
			case 'addDescription': return '説明を追加するで';
			case 'userPagePinTip': return '個々のノートのメニューから「ピン留め」を選んどくと、ここにノートを表示しておけるで。';
			case 'notSpecifiedMentionWarning': return '宛先に含まれてへんメンションがあるで';
			case 'info': return '情報';
			case 'userInfo': return 'ユーザー情報やで';
			case 'unknown': return '不明';
			case 'onlineStatus': return 'オンライン状態';
			case 'hideOnlineStatus': return 'オンライン状態を隠すで';
			case 'hideOnlineStatusDescription': return 'オンライン状態を隠すと、検索とかの一部の機能で使いにくくなるかもしれんよ。';
			case 'online': return 'オンライン';
			case 'active': return 'アクティブ';
			case 'offline': return 'オフライン';
			case 'notRecommended': return 'あんま推奨しやんで';
			case 'botProtection': return 'Botプロテクション';
			case 'instanceBlocking': return 'サーバーブロック';
			case 'selectAccount': return 'アカウントを選んでなー';
			case 'switchAccount': return 'アカウントを変えるで';
			case 'enabled': return '有効';
			case 'disabled': return '無効';
			case 'quickAction': return 'クイックアクション';
			case 'user': return 'ユーザー';
			case 'administration': return '管理';
			case 'accounts': return 'アカウント';
			case 'switch_': return '切り替え';
			case 'noMaintainerInformationWarning': return '管理者情報が設定されてへんで';
			case 'noBotProtectionWarning': return 'Botプロテクションが設定されてへんで。';
			case 'configure': return '設定する';
			case 'postToGallery': return 'ギャラリーへ投稿';
			case 'gallery': return 'ギャラリー';
			case 'recentPosts': return '最近の投稿';
			case 'popularPosts': return '人気の投稿';
			case 'shareWithNote': return 'ノートで共有';
			case 'ads': return '広告';
			case 'expiration': return '期限';
			case 'startingperiod': return '始めた期間';
			case 'memo': return 'メモ';
			case 'priority': return '優先度';
			case 'high': return '高い';
			case 'middle': return '中';
			case 'low': return '低い';
			case 'emailNotConfiguredWarning': return 'メアドの設定がされてへんで。';
			case 'ratio': return '比率';
			case 'previewNoteText': return '本文を下見するで';
			case 'customCss': return 'カスタムCSS';
			case 'customCssWarn': return 'この設定は必ず知識のある人がやらなあかんで。あんま良くない設定をしたるとクライアントがちゃんと使えへんくなってくで。';
			case 'global': return 'グローバル';
			case 'squareAvatars': return 'アイコンを四角形で表示するで';
			case 'sent': return '送信';
			case 'received': return '受信';
			case 'searchResult': return '検索結果やで';
			case 'hashtags': return 'ハッシュタグ';
			case 'troubleshooting': return 'トラブルシューティング';
			case 'useBlurEffect': return 'UIにぼかし効果を使うで';
			case 'learnMore': return '詳しく';
			case 'misskeyUpdated': return 'Misskeyが更新されたで！\nモデレーターの人らに感謝せなあかんで';
			case 'whatIsNew': return '更新情報を見るで';
			case 'translate': return '翻訳';
			case 'translatedFrom': return '{x}から翻訳するで';
			case 'accountDeletionInProgress': return 'アカウント削除しとるで待っとってなー';
			case 'usernameInfo': return 'サーバー上であんたのアカウントをあんたやと分かるようにするための名前やで。アルファベット(a~z, A~Z)、数字(0~9)、それとアンダーバー(_)が使って考えてな。この名前は後から変更することはできへんからちゃんと考えるんやで。';
			case 'aiChanMode': return '藍モードやで';
			case 'keepCw': return 'CWを維持するで';
			case 'pubSub': return 'Pub/Subのアカウント';
			case 'lastCommunication': return '直近の通信';
			case 'resolved': return '解決したで';
			case 'unresolved': return 'まだ解決してないで';
			case 'breakFollow': return 'フォロワーを解除するで';
			case 'breakFollowConfirm': return 'フォロワー解除してもええか？';
			case 'itsOn': return 'オンになっとるよ';
			case 'itsOff': return 'オフになってるで';
			case 'emailRequiredForSignup': return 'アカウント登録にメールアドレスを必須にするで';
			case 'unread': return '未読';
			case 'filter': return 'フィルタ';
			case 'controlPanel': return 'コントロールパネル';
			case 'manageAccounts': return 'アカウントを管理';
			case 'makeReactionsPublic': return 'ツッコミ一覧を公開するで';
			case 'makeReactionsPublicDescription': return 'あんたがしたツッコミ一覧を誰でも見れるようにするで。';
			case 'classic': return 'クラシック';
			case 'muteThread': return 'スレッドをミュート';
			case 'unmuteThread': return 'スレッドのミュートを解除';
			case 'ffVisibility': return 'つながりの公開範囲';
			case 'ffVisibilityDescription': return 'あんたのフォロー/フォロワー情報の公開範囲を設定できるで。';
			case 'continueThread': return 'さらにスレッドを見るで';
			case 'deleteAccountConfirm': return 'アカウントを消すで？ええんか？';
			case 'incorrectPassword': return 'パスワードがちゃうで。';
			case 'voteConfirm': return '「{choice}」に投票するんか？';
			case 'hide': return '隠す';
			case 'useDrawerReactionPickerForMobile': return 'ケータイとかのときドロワーで表示するで';
			case 'welcomeBackWithName': return 'まいど、{name}はん';
			case 'clickToFinishEmailVerification': return '[{ok}]を押してメアドの確認を終わらせてなー';
			case 'overridedDeviceKind': return 'デバイスタイプ';
			case 'smartphone': return 'スマホ';
			case 'tablet': return 'タブレット';
			case 'auto': return '自動';
			case 'themeColor': return 'テーマカラー';
			case 'size': return '大きさ';
			case 'numberOfColumn': return '列の数';
			case 'searchByGoogle': return '探す';
			case 'instanceDefaultLightTheme': return 'サーバーおすすめの明るいテーマ';
			case 'instanceDefaultDarkTheme': return 'サーバーおすすめのの暗いテーマ';
			case 'instanceDefaultThemeDescription': return 'オブジェクト形式のテーマコードを記入するで。';
			case 'mutePeriod': return 'ミュートする期間';
			case 'period': return '期限';
			case 'indefinitely': return '無期限';
			case 'tenMinutes': return '10分';
			case 'oneHour': return '1時間';
			case 'oneDay': return '1日';
			case 'oneWeek': return '1週間';
			case 'oneMonth': return '1ヶ月';
			case 'reflectMayTakeTime': return '反映されるまで時間がかかることがあるで';
			case 'failedToFetchAccountInformation': return 'アカウントの取得に失敗したみたいや…';
			case 'rateLimitExceeded': return 'レート制限が超えたみたいやで';
			case 'cropImage': return '画像のクロップ';
			case 'cropImageAsk': return '画像をクロップしてもええか？';
			case 'cropYes': return '切り抜いたる';
			case 'cropNo': return '切り抜かへん';
			case 'file': return 'ファイル';
			case 'recentNHours': return '直近{n}時間';
			case 'recentNDays': return '直近{n}日';
			case 'noEmailServerWarning': return 'メールサーバーの設定がされてへんで。';
			case 'thereIsUnresolvedAbuseReportWarning': return '未対応の通報があるみたいやで';
			case 'recommended': return '推奨';
			case 'check': return 'チェック';
			case 'driveCapOverrideLabel': return 'このユーザーのドライブ容量上限を変更するで';
			case 'driveCapOverrideCaption': return '0以下を指定すると解除されるで。';
			case 'requireAdminForView': return 'これを見るには管理者アカウントでログインしとらなあかんで。';
			case 'isSystemAccount': return 'システムが自動で作成・管理しとるアカウントやで。';
			case 'typeToConfirm': return 'この操作をやるんなら {x} と入力してなー';
			case 'deleteAccount': return 'アカウント削除するで';
			case 'document': return 'ドキュメント';
			case 'numberOfPageCache': return 'ページ、どんだけキャッシュすんの？';
			case 'numberOfPageCacheDescription': return '増やすと使いやすくなる、負荷とメモリ使用量が増えてくで。一長一短やな。';
			case 'logoutConfirm': return 'ログアウトしまっか？';
			case 'lastActiveDate': return '最後に使った日時';
			case 'statusbar': return 'ステータスバー';
			case 'pleaseSelect': return '選択したってやー';
			case 'reverse': return '反転';
			case 'colored': return '色付き';
			case 'refreshInterval': return '更新間隔';
			case 'label': return 'ラベル';
			case 'type': return 'タイプ';
			case 'speed': return '速度';
			case 'slow': return '遅い';
			case 'fast': return '速い';
			case 'sensitiveMediaDetection': return 'センシティブなメディアの検出';
			case 'localOnly': return 'ローカルのみ';
			case 'remoteOnly': return 'リモートのみ';
			case 'failedToUpload': return 'アップロードに失敗してもうたわ…';
			case 'cannotUploadBecauseInappropriate': return '不適切な内容を含むかもしれへんって判定されたからアップロードできへんわ。';
			case 'cannotUploadBecauseNoFreeSpace': return 'ドライブの空き容量が無いからアップロードできへんわ。';
			case 'cannotUploadBecauseExceedsFileSizeLimit': return 'ファイルが思うたよりも大きいさかいアップロードできへんでこれ。';
			case 'beta': return 'ベータ';
			case 'enableAutoSensitive': return '自動NSFW判定';
			case 'enableAutoSensitiveDescription': return '使える時は、機械学習を使って自動でメディアにNSFWフラグを設定するで。この機能をオフにしても、サーバーによっては自動で設定されることがあるで。';
			case 'activeEmailValidationDescription': return 'ユーザーのメールアドレスのバリデーションを、捨てアドかどうかや実際に通信可能かどうかとかを判定して積極的に行うで。オフにすると単に文字列として正しいかどうかだけチェックするで。';
			case 'navbar': return 'ナビゲーションバー';
			case 'shuffle': return 'シャッフルするで';
			case 'account': return 'アカウント';
			case 'move': return '移動するで';
			case 'pushNotification': return 'プッシュ通知';
			case 'subscribePushNotification': return 'プッシュ通知をオンにするで';
			case 'unsubscribePushNotification': return 'プッシュ通知を止めるで';
			case 'pushNotificationAlreadySubscribed': return 'プッシュ通知はオンになってるで';
			case 'pushNotificationNotSupported': return 'ブラウザかサーバーがプッシュ通知に対応してないみたいやで。';
			case 'sendPushNotificationReadMessage': return '通知やメッセージが既読になったらプッシュ通知を消すで';
			case 'sendPushNotificationReadMessageCaption': return '「{emptyPushNotificationMessage}」っていう表示が一瞬表示されるようになるで。端末の電池使用量が増える可能性があるで。';
			case 'windowMaximize': return '最大化';
			case 'windowMinimize': return '最小化';
			case 'windowRestore': return '元に戻す';
			case 'caption': return 'キャプション';
			case 'loggedInAsBot': return 'Botアカウントでログイン中やで';
			case 'tools': return 'ツール';
			case 'cannotLoad': return '読み込めへんで';
			case 'numberOfProfileView': return 'プロフィール表示回数';
			case 'like': return 'ええやん！';
			case 'unlike': return 'いいねを解除';
			case 'numberOfLikes': return 'いいね数';
			case 'show': return '表示';
			case 'neverShow': return '今後表示しない';
			case 'remindMeLater': return 'また後で';
			case 'didYouLikeMisskey': return 'Misskey気に入ってくれた？';
			case 'pleaseDonate': return 'Misskeyは{host}が使用している無料のソフトウェアやで。これからも開発を続けれるように、寄付したってな～。';
			case 'roles': return 'ロール';
			case 'role': return 'ロール';
			case 'noRole': return 'ロールはありまへん';
			case 'normalUser': return '一般ユーザー';
			case 'undefined': return '未定義';
			case 'assign': return 'アサイン';
			case 'unassign': return 'アサインを解除';
			case 'color': return '色';
			case 'manageCustomEmojis': return 'カスタム絵文字の管理';
			case 'youCannotCreateAnymore': return 'これ以上作れなさそうやわ';
			case 'cannotPerformTemporary': return '一時的に利用できへんで';
			case 'cannotPerformTemporaryDescription': return '操作回数が制限を超えたから一時的に利用できへんくなったで。ちょっと時間置いてからもう一回やってやー。';
			case 'invalidParamError': return 'パラメータがエラー言うとりますわ';
			case 'invalidParamErrorDescription': return 'リクエストパラメータに問題があんねん。普通はバグやねんけど、もしかすると入力した文字数が多すぎるとかの可能性もあるから確認してや〜';
			case 'permissionDeniedError': return '操作が拒否されてもうた。';
			case 'permissionDeniedErrorDescription': return '自分のアカウントにはこの操作を行う権限があらへんねん';
			case 'preset': return 'プリセット';
			case 'selectFromPresets': return 'プリセットから選ぶ';
			case 'achievements': return '実績';
			case 'gotInvalidResponseError': return 'サーバー黙っとるわ、知らんけど';
			case 'gotInvalidResponseErrorDescription': return 'サーバーいま日曜日。またきて月曜日。';
			case 'thisPostMayBeAnnoying': return 'この投稿は迷惑かもしらんで。';
			case 'thisPostMayBeAnnoyingHome': return 'ホームに投稿';
			case 'thisPostMayBeAnnoyingCancel': return 'やめとく';
			case 'thisPostMayBeAnnoyingIgnore': return 'このまま投稿';
			case 'collapseRenotes': return '見たことあるRenoteは飛ばして表示するで';
			case 'internalServerError': return 'サーバー内部エラー';
			case 'internalServerErrorDescription': return 'サーバー内部でよう分からんエラーやわ';
			case 'copyErrorInfo': return 'エラー情報をコピー';
			case 'joinThisServer': return 'このサーバーに登録するわ';
			case 'exploreOtherServers': return '他のサーバー見てみる';
			case 'letsLookAtTimeline': return 'タイムライン見てみーや';
			case 'disableFederationConfirm': return '連合なしにしとくか？';
			case 'disableFederationConfirmWarn': return '連合なしにしても投稿は非公開にはならへんで。大体の場合は連合なしにする必要はないで。';
			case 'disableFederationOk': return '連合なしにしとく';
			case 'invitationRequiredToRegister': return '今このサーバー招待制になってもうてんねん。招待コードを持っとるんやったら登録できるで。';
			case 'emailNotSupported': return 'このサーバーはメール配信がサポートされてへんみたいやわ';
			case 'postToTheChannel': return 'チャンネルに投稿';
			case 'cannotBeChangedLater': return '後からは変えられへんで。';
			case 'reactionAcceptance': return 'ツッコミの受け入れ';
			case 'likeOnly': return 'いいねだけ';
			case 'likeOnlyForRemote': return 'リモートからはいいねだけな';
			case 'rolesAssignedToMe': return '自分に割り当てられたロール';
			case 'resetPasswordConfirm': return 'パスワード作り直すんでええな？';
			case 'sensitiveWords': return 'けったいな単語';
			case 'sensitiveWordsDescription': return '設定した単語が入っとるノートの公開範囲をホームにしたるわ。改行で区切ったら複数設定できるで。';
			case 'sensitiveWordsDescription2': return 'スペースで区切るとAND指定、キーワードをスラッシュで囲んだら正規表現や。';
			case 'notesSearchNotAvailable': return 'ノート検索は使われへんで。';
			case 'license': return 'ライセンス';
			case 'unfavoriteConfirm': return 'ほんまに気に入らんの？';
			case 'myClips': return '自分のクリップ';
			case 'drivecleaner': return 'ドライブキレイキレイ';
			case 'retryAllQueuesNow': return 'キューを全部もっかいやり直す';
			case 'retryAllQueuesConfirmTitle': return 'もっかいやってみるか？';
			case 'retryAllQueuesConfirmText': return '一時的にサーバー重なるかもしれへんで。';
			case 'enableChartsForRemoteUser': return 'リモートユーザーのチャートを作る';
			case 'enableChartsForFederatedInstances': return 'リモートサーバーのチャートを作る';
			case 'showClipButtonInNoteFooter': return 'ノートのアクションにクリップを追加';
			case 'largeNoteReactions': return 'ノートのツッコミを大きする';
			case 'noteIdOrUrl': return 'ノートIDかURL';
			case 'video': return '動画';
			case 'videos': return '動画';
			case 'dataSaver': return 'データケチケチ';
			case 'accountMigration': return 'アカウントのお引っ越し';
			case 'accountMoved': return 'このユーザーはさらのアカウントに引っ越したで：';
			case 'accountMovedShort': return 'このアカウントは移行されとるで';
			case 'operationForbidden': return 'この操作はできまへん';
			case 'forceShowAds': return '常に広告を表示しとく';
			case 'addMemo': return 'メモを足す';
			case 'editMemo': return 'メモをいらう';
			case 'reactionsList': return 'ツッコミ一覧';
			case 'renotesList': return 'Renote一覧';
			case 'notificationDisplay': return '通知見せる';
			case 'leftTop': return '左上';
			case 'rightTop': return '右上';
			case 'leftBottom': return '左下';
			case 'rightBottom': return '右下';
			case 'stackAxis': return '重ねる方向';
			case 'vertical': return '縦';
			case 'horizontal': return '横';
			case 'position': return '位置';
			case 'serverRules': return 'サーバールール';
			case 'pleaseConfirmBelowBeforeSignup': return 'このサーバーに登録する前に、下に書いてること確認してな。';
			case 'pleaseAgreeAllToContinue': return '続けるんやったら、全ての「せやな」にチェック入れてる必要があるで。';
			case 'continue_': return '続けるで';
			case 'preservedUsernames': return '予約ユーザー名';
			case 'preservedUsernamesDescription': return '予約しとくユーザー名を行ごとに挙げるで。ここで指定されたユーザー名はアカウント作るときに使えへんくなるけど、管理者は例外や。あと、もうあるアカウントも例外やな。';
			case 'createNoteFromTheFile': return 'このファイル使うてノート作るで';
			case 'archive': return 'アーカイブ';
			case 'channelArchiveConfirmTitle': return '{name}をアーカイブしてええか？';
			case 'channelArchiveConfirmDescription': return 'アーカイブしたら、チャンネル一覧とか検索結果からなくなるし、新しく書き込みもできへんなるで。';
			case 'thisChannelArchived': return 'このチャンネル、アーカイブされとるで。';
			case 'displayOfNote': return 'ノートの表示';
			case 'initialAccountSetting': return '初期設定';
			case 'youFollowing': return 'フォロー中やで';
			case 'preventAiLearning': return '生成AIの学習に使わんといて';
			case 'preventAiLearningDescription': return '他の文章生成AIとか画像生成AIに、投稿したノートとか画像なんかを勝手に使わんように頼むで。具体的にはnoaiフラグをHTMLレスポンスに含めるんやけど、これ聞いてくれるんはAIの気分次第やから、使われる可能性もちょっとはあるな。';
			case 'options': return 'オプション';
			case 'specifyUser': return 'ユーザー指定';
			case 'rolesThatCanBeUsedThisEmojiAsReaction': return 'ツッコミとして使えるロール';
			case 'rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription': return 'ロールが一個も指定されてへんかったら、誰でもツッコミとして使えるで。';
			case 'cancelReactionConfirm': return 'ツッコむんをやっぱやめるか？';
			case 'changeReactionConfirm': return 'ツッコミを別のに変えるか？';
			case '_initialAccountSetting.accountCreated': return 'アカウント作り終わったで。';
			case '_initialAccountSetting.letsStartAccountSetup': return 'アカウントの初期設定をしよか。';
			case '_initialAccountSetting.letsFillYourProfile': return '最初はあんたのプロフィールを設定しよか。';
			case '_initialAccountSetting.profileSetting': return 'プロフィール設定';
			case '_initialAccountSetting.privacySetting': return 'プライバシー設定';
			case '_initialAccountSetting.theseSettingsCanEditLater': return 'この設定はあとから変えれるで。';
			case '_initialAccountSetting.youCanEditMoreSettingsInSettingsPageLater': return 'これ以外にもいろんな設定を「設定」ページからできるで。後で確認してみてな。';
			case '_initialAccountSetting.followUsers': return 'タイムラインを構築するために、気になるユーザーをフォローしてみ。';
			case '_initialAccountSetting.pushNotificationDescription': return 'プッシュ通知を有効にすると{name}の通知をあんたのデバイスで受け取れるで。';
			case '_initialAccountSetting.initialAccountSettingCompleted': return '初期設定が終わったで。';
			case '_initialAccountSetting.haveFun': return '{name}、楽しんでな～';
			case '_initialAccountSetting.ifYouNeedLearnMore': return '{name}(Misskey)の使い方とかをよー知りたいんやったら{link}をみてな。';
			case '_initialAccountSetting.skipAreYouSure': return '初期設定飛ばすか？';
			case '_serverRules.description': return '新規登録前に見せる、サーバーの簡潔なルールを設定すんで。内容は使うための決め事の要約とすることを推奨するわ。';
			case '_accountMigration.moveFrom': return '別のアカウントからこのアカウントに引っ越す';
			case '_accountMigration.moveFromSub': return '別のアカウントへエイリアスを作る';
			case '_accountMigration.moveFromLabel': return '引っ越し元のアカウント：#{n}';
			case '_accountMigration.moveFromDescription': return '別のアカウントからこのアカウントにフォロワーを引き継いで引っ越したかったら、ここでエイリアスを作っとく必要があるで。必ずお引っ越しを実行する前に作っとかなあかんで！引っ越し元のアカウントをこんな風に入力してくれへんか？：@person@instance.com';
			case '_accountMigration.moveTo': return 'このアカウントをさらのアカウントに引っ越すで';
			case '_accountMigration.moveToLabel': return '引っ越し先のアカウント：';
			case '_accountMigration.moveCannotBeUndone': return 'アカウントを移行すると、取り消すことはできへんくなります。';
			case '_accountMigration.moveAccountDescription': return 'おニューのアカウントに移行すんで。\n　・フォロワーがおニューの方を勝手にフォローすんで。\n　・このアカウントからのフォローはまるまる全部解除されんで。\n　・このアカウントでノート作れへんようになるで。\n\nフォロワーの移行は勝手にこっちでやっとくけど、フォローの移行は自分でしてや。移行前にこのアカウントでフォローエクスポートして、移行したあとすぐにおニューのところでインポートしてくれな。\nリストとかミュート、あとブロックもおんなじや。自分で移行してな。\n\n（この説明はこのサーバー、つまりMisskey v13.12.0から後の仕様や。Mastodonとか他のActivityPubソフトやとちょっと挙動が違うこともあんで。）';
			case '_accountMigration.moveAccountHowTo': return 'アカウントの引っ越しには、まず引っ越し先のアカウントで自分のアカウントに対しエイリアスを作成しなはれや。\nエイリアス作成した後、引っ越し先のアカウントを次のように入力してくれへんか？:@username@server.example.com';
			case '_accountMigration.startMigration': return '引っ越しする';
			case '_accountMigration.migrationConfirm': return 'ほんまにこのアカウントを {account} に引っ越すんか？一回引っ越してもうたら取り消されへんし、二度とこのアカウントを元に戻されへんくなるで。\nそれと、引っ越し先のアカウントでエイリアスが作れたかちゃ～んと確認しーや？';
			case '_accountMigration.movedAndCannotBeUndone': return '\nアカウントはもう引っ越されてます。\n引っ越しを取り消すことはできまへん。';
			case '_accountMigration.postMigrationNote': return 'このアカウントからのフォロー解除は移行操作から丸一日経ったら実行されんで。\nこのアカウントのフォロー・フォロワー数はどっちも0や。フォローの解除はされへんから、あんたのフォロワーはこのアカウントのフォロワー向けの投稿をこの後も見れるで。';
			case '_accountMigration.movedTo': return '引っ越し先のアカウント：';
			case '_achievements.earnedAt': return '貰った日ぃ';
			case '_achievements._types._notes1.title': return 'まいど！';
			case '_achievements._types._notes1.description': return '初めてノート投稿したった';
			case '_achievements._types._notes1.flavor': return 'Misskeyを楽しんでな～';
			case '_achievements._types._notes10.title': return 'ノートの天保山';
			case '_achievements._types._notes10.description': return 'ノートを10回投稿した';
			case '_achievements._types._notes100.title': return 'ノートの真田山';
			case '_achievements._types._notes100.description': return 'ノートを100回投稿した';
			case '_achievements._types._notes500.title': return 'ノートの生駒山';
			case '_achievements._types._notes500.description': return 'ノートを500回投稿した';
			case '_achievements._types._notes1000.title': return 'ノートの六甲山';
			case '_achievements._types._notes1000.description': return 'ノートを1,000回投稿した';
			case '_achievements._types._notes5000.title': return '箕面の滝からノート';
			case '_achievements._types._notes5000.description': return 'ノートを5,000回投稿した';
			case '_achievements._types._notes10000.title': return 'スーパーノート';
			case '_achievements._types._notes10000.description': return 'ノートを10,000回投稿した';
			case '_achievements._types._notes20000.title': return 'ニードモアノート';
			case '_achievements._types._notes20000.description': return 'ノートを20,000回投稿した';
			case '_achievements._types._notes30000.title': return 'ノートノートノート';
			case '_achievements._types._notes30000.description': return 'ノートを30,000回投稿した';
			case '_achievements._types._notes40000.title': return 'ノート工場';
			case '_achievements._types._notes40000.description': return 'ノートを40,000回投稿した';
			case '_achievements._types._notes50000.title': return 'ノートの惑星';
			case '_achievements._types._notes50000.description': return 'ノートを50,000回投稿した';
			case '_achievements._types._notes60000.title': return 'ノートクエーサー';
			case '_achievements._types._notes60000.description': return 'ノートを60,000回投稿した';
			case '_achievements._types._notes70000.title': return 'ブラックノートホール';
			case '_achievements._types._notes70000.description': return 'ノートを70,000回投稿した';
			case '_achievements._types._notes80000.title': return 'ノートギャラクシー';
			case '_achievements._types._notes80000.description': return 'ノートを80,000回投稿した';
			case '_achievements._types._notes90000.title': return 'ノートバース';
			case '_achievements._types._notes90000.description': return 'ノートを90,000回投稿した';
			case '_achievements._types._notes100000.title': return 'ALL YOUR NOTE ARE BELONG TO US';
			case '_achievements._types._notes100000.description': return 'ノートを100,000回投稿した';
			case '_achievements._types._notes100000.flavor': return 'そんなに書くことあるんか？';
			case '_achievements._types._login3.title': return 'ビギナーⅠ';
			case '_achievements._types._login3.description': return '通算3日ログインした';
			case '_achievements._types._login3.flavor': return '今日からワシはミスキストやで';
			case '_achievements._types._login7.title': return 'ビギナーⅡ';
			case '_achievements._types._login7.description': return '通算7日ログインした';
			case '_achievements._types._login7.flavor': return '慣れてきたんとちゃう？';
			case '_achievements._types._login15.title': return 'ビギナーⅢ';
			case '_achievements._types._login15.description': return '通算15日ログインした';
			case '_achievements._types._login30.title': return 'ミスキストⅠ';
			case '_achievements._types._login30.description': return '通算30日ログインした';
			case '_achievements._types._login60.title': return 'ミスキストⅡ';
			case '_achievements._types._login60.description': return '通算60日ログインした';
			case '_achievements._types._login100.title': return 'ミスキストⅢ';
			case '_achievements._types._login100.description': return '通算100日ログインした';
			case '_achievements._types._login100.flavor': return 'そのユーザー、ミスキストにつき';
			case '_achievements._types._login200.title': return '常連さんⅠ';
			case '_achievements._types._login200.description': return '通算200日ログインした';
			case '_achievements._types._login300.title': return '常連さんⅡ';
			case '_achievements._types._login300.description': return '通算300日ログインした';
			case '_achievements._types._login400.title': return '常連さんⅢ';
			case '_achievements._types._login400.description': return '通算400日ログインした';
			case '_achievements._types._login500.title': return 'ベテランさんⅠ';
			case '_achievements._types._login500.description': return '通算500日ログインした';
			case '_achievements._types._login500.flavor': return 'あんたら、うちはノートが好きや';
			case '_achievements._types._login600.title': return 'ベテランさんⅡ';
			case '_achievements._types._login600.description': return '通算600日ログインした';
			case '_achievements._types._login700.title': return 'ベテランさんⅢ';
			case '_achievements._types._login700.description': return '通算700日ログインした';
			case '_achievements._types._login800.title': return 'ノートマイスターⅠ';
			case '_achievements._types._login800.description': return '通算800日ログインした';
			case '_achievements._types._login900.title': return 'ノートマイスターⅡ';
			case '_achievements._types._login900.description': return '通算900日ログインした';
			case '_achievements._types._login1000.title': return 'ノートマイスターⅢ';
			case '_achievements._types._login1000.description': return '通算1,000日ログインした';
			case '_achievements._types._login1000.flavor': return 'Misskeyようさん使てもろておおきにな！';
			case '_achievements._types._noteClipped1.title': return 'アカンどれもクリップしたいわ';
			case '_achievements._types._noteClipped1.description': return '初めてノートをクリップした';
			case '_achievements._types._noteFavorited1.title': return '星ぃみるひと';
			case '_achievements._types._noteFavorited1.description': return '初めてノートをお気に入りに登録した';
			case '_achievements._types._myNoteFavorited1.title': return '星ぃ欲しい';
			case '_achievements._types._myNoteFavorited1.description': return 'ワレのノートが他のひとにお気に入り登録されたで';
			case '_achievements._types._profileFilled.title': return '準備万端や';
			case '_achievements._types._profileFilled.description': return 'プロフィールを設定した';
			case '_achievements._types._markedAsCat.title': return '吾輩は猫やねん';
			case '_achievements._types._markedAsCat.description': return 'アカウントをCatにしたった';
			case '_achievements._types._markedAsCat.flavor': return '名前はまだないねん。';
			case '_achievements._types._following1.title': return 'はじめてのフォロー';
			case '_achievements._types._following1.description': return '初めてフォローした';
			case '_achievements._types._following10.title': return 'ついてく、ついてく';
			case '_achievements._types._following10.description': return 'フォローが10人超えた';
			case '_achievements._types._following50.title': return '友達ぎょうさん';
			case '_achievements._types._following50.description': return 'フォローが50人超えた';
			case '_achievements._types._following100.title': return '友達100人';
			case '_achievements._types._following100.description': return 'フォローが100人超えた';
			case '_achievements._types._following300.title': return 'いや友達多すぎやろ';
			case '_achievements._types._following300.description': return 'フォローが300人超えた';
			case '_achievements._types._followers1.title': return 'はじめてのフォロワー';
			case '_achievements._types._followers1.description': return '初めてフォローされた';
			case '_achievements._types._followers10.title': return 'フォローみぃ！';
			case '_achievements._types._followers10.description': return 'フォロワーが10人超えた';
			case '_achievements._types._followers50.title': return 'ぞろぞろ';
			case '_achievements._types._followers50.description': return 'フォロワーが50人超えた';
			case '_achievements._types._followers100.title': return '人気もん';
			case '_achievements._types._followers100.description': return 'フォロワーが100人超えた';
			case '_achievements._types._followers300.title': return 'ほらそこ一列に並んで！';
			case '_achievements._types._followers300.description': return 'フォロワーが300人超えた';
			case '_achievements._types._followers500.title': return '基地局';
			case '_achievements._types._followers500.description': return 'フォロワーが500人超えた';
			case '_achievements._types._followers1000.title': return 'インフルエンサー';
			case '_achievements._types._followers1000.description': return 'フォロワーが1,000人超えた';
			case '_achievements._types._collectAchievements30.title': return '実績コレクター';
			case '_achievements._types._collectAchievements30.description': return '実績を30個以上獲得した';
			case '_achievements._types._viewAchievements3min.title': return '実績好き';
			case '_achievements._types._viewAchievements3min.description': return '実績一覧を3分以上眺め続けた';
			case '_achievements._types._iLoveMisskey.title': return 'Misskey好きやねん';
			case '_achievements._types._iLoveMisskey.description': return '"I ❤ #Misskey"を投稿した';
			case '_achievements._types._iLoveMisskey.flavor': return 'Misskeyを使ってくれておおきにな～　by 開発チーム';
			case '_achievements._types._foundTreasure.title': return 'なんでも鑑定団';
			case '_achievements._types._foundTreasure.description': return '隠されたお宝を発見した';
			case '_achievements._types._client30min.title': return 'ねんね';
			case '_achievements._types._client30min.description': return 'クライアントを起動してから30分以上経過した';
			case '_achievements._types._client60min.title': return 'Misskeyの見過ぎや！';
			case '_achievements._types._client60min.description': return 'クライアント付けてから１時間経ってもうたで。';
			case '_achievements._types._noteDeletedWithin1min.title': return '＊おおっと＊';
			case '_achievements._types._noteDeletedWithin1min.description': return '投稿してから1分以内にその投稿を消した';
			case '_achievements._types._postedAtLateNight.title': return '夜行性';
			case '_achievements._types._postedAtLateNight.description': return '深夜にノートを投稿した';
			case '_achievements._types._postedAtLateNight.flavor': return 'そろそろ寝よか';
			case '_achievements._types._postedAt0min0sec.title': return '時報';
			case '_achievements._types._postedAt0min0sec.description': return '0分0秒にノートを投稿した';
			case '_achievements._types._postedAt0min0sec.flavor': return 'ポッ ポッ ポッ ピーン';
			case '_achievements._types._selfQuote.title': return '自己言及';
			case '_achievements._types._selfQuote.description': return '自分のノートを引用した';
			case '_achievements._types._htl20npm.title': return '流れるTL';
			case '_achievements._types._htl20npm.description': return 'ホームタイムラインの流速が20npmを超す';
			case '_achievements._types._viewInstanceChart.title': return 'アナリスト';
			case '_achievements._types._viewInstanceChart.description': return 'サーバーのチャートを表示した';
			case '_achievements._types._outputHelloWorldOnScratchpad.title': return 'Hello, world!';
			case '_achievements._types._outputHelloWorldOnScratchpad.description': return 'スクラッチパッドで hello worldを出力した';
			case '_achievements._types._open3windows.title': return 'マド開けすぎ';
			case '_achievements._types._open3windows.description': return 'ウィンドウを3つ以上開いた状態にした';
			case '_achievements._types._driveFolderCircularReference.title': return '環状線';
			case '_achievements._types._driveFolderCircularReference.description': return 'ドライブのフォルダを再帰的な入れ子にしようとした';
			case '_achievements._types._reactWithoutRead.title': return 'ちゃんと読んだんか？';
			case '_achievements._types._reactWithoutRead.description': return '100文字以上のテキストを含むノートに投稿されてから3秒以内にツッコんだ';
			case '_achievements._types._clickedClickHere.title': return 'ここをクリック';
			case '_achievements._types._clickedClickHere.description': return 'ここをクリックした';
			case '_achievements._types._justPlainLucky.title': return '単なるラッキー';
			case '_achievements._types._justPlainLucky.description': return '10秒ごとに0.005％の確率で獲得';
			case '_achievements._types._setNameToSyuilo.title': return '神様コンプレックス';
			case '_achievements._types._setNameToSyuilo.description': return '名前を syuilo に設定した';
			case '_achievements._types._passedSinceAccountCreated1.title': return '一周年';
			case '_achievements._types._passedSinceAccountCreated1.description': return 'アカウント作成から1年経過した';
			case '_achievements._types._passedSinceAccountCreated2.title': return '二周年';
			case '_achievements._types._passedSinceAccountCreated2.description': return 'アカウント作成から2年経過した';
			case '_achievements._types._passedSinceAccountCreated3.title': return '三周年';
			case '_achievements._types._passedSinceAccountCreated3.description': return 'アカウント作成から3年経過した';
			case '_achievements._types._loggedInOnBirthday.title': return 'ハッピーバースデー！';
			case '_achievements._types._loggedInOnBirthday.description': return '誕生日にログインした';
			case '_achievements._types._loggedInOnNewYearsDay.title': return 'あけましておめでとうございます！';
			case '_achievements._types._loggedInOnNewYearsDay.description': return '元旦にログインした';
			case '_achievements._types._loggedInOnNewYearsDay.flavor': return '今年も弊サーバーをよろしゅう頼みますわ';
			case '_achievements._types._cookieClicked.title': return 'クッキー叩くやつ';
			case '_achievements._types._cookieClicked.description': return 'クッキー叩いてもうた';
			case '_achievements._types._cookieClicked.flavor': return '兄ちゃんソフト間違っとんで';
			case '_achievements._types._brainDiver.title': return 'Brain Diver';
			case '_achievements._types._brainDiver.description': return 'Brain Diverへのリンクを投稿したった';
			case '_achievements._types._brainDiver.flavor': return 'Misskey-Misskey La-Tu-Ma';
			case '_role.new_': return 'ロールの作成';
			case '_role.edit': return 'ロールの編集';
			case '_role.name': return 'ロール名';
			case '_role.description': return 'ロールの説明';
			case '_role.permission': return 'ロールの権限';
			case '_role.descriptionOfPermission': return '<b>モデレーター</b>は基本的なモデレーションに関わる操作を行えるで。\n<b>管理者</b>はサーバーの全ての設定を変更できるで。';
			case '_role.assignTarget': return 'アサイン';
			case '_role.descriptionOfAssignTarget': return '<b>マニュアル</b>は誰がこのロールに含まれてるかを手動で管理するで。\n<b>コンディショナル</b>は条件を設定して、それに合うユーザーが自動で含まれるようになるで。';
			case '_role.manual': return 'マニュアル';
			case '_role.conditional': return 'コンディショナル';
			case '_role.condition': return '条件';
			case '_role.isConditionalRole': return 'これはコンディショナルロールやで';
			case '_role.isPublic': return 'ロールを公開';
			case '_role.descriptionOfIsPublic': return 'ロールにアサインされたユーザーを誰でも見ることができるで。そんで、ユーザーのプロフィールでこのロールが表示されるで。';
			case '_role.options': return 'オプション';
			case '_role.policies': return 'ポリシー';
			case '_role.baseRole': return 'ベースロール';
			case '_role.useBaseValue': return 'ベースロールの値を使用';
			case '_role.chooseRoleToAssign': return 'アサインするロールを選択';
			case '_role.iconUrl': return 'アイコン画像のURL';
			case '_role.asBadge': return 'バッジとして見せる';
			case '_role.descriptionOfAsBadge': return 'オンにすると、ユーザー名の横んとこにロールのアイコンが表示されるで。';
			case '_role.isExplorable': return 'ロールタイムラインを公開するで〜';
			case '_role.descriptionOfIsExplorable': return 'オンにしたらロールのタイムラインを公開するで〜。でもロールの公開をオフにしたら公開されへんよ。';
			case '_role.displayOrder': return '表示順';
			case '_role.descriptionOfDisplayOrder': return '数がでかいほど、UI上で先に表示されるで。';
			case '_role.canEditMembersByModerator': return 'モデレーターのメンバー編集を許可';
			case '_role.descriptionOfCanEditMembersByModerator': return 'オンにすると、管理者に加えてモデレーターもこのロールへユーザーをアサイン/アサイン解除できるようになるで。オフにすると管理者のみが行えるで。';
			case '_role.priority': return '優先度';
			case '_role._priority.low': return '低い';
			case '_role._priority.middle': return '中';
			case '_role._priority.high': return '高い';
			case '_role._options.gtlAvailable': return 'グローバルタイムラインの閲覧';
			case '_role._options.ltlAvailable': return 'ローカルタイムラインの閲覧';
			case '_role._options.canPublicNote': return 'パブリック投稿の許可';
			case '_role._options.canInvite': return 'サーバー招待コードの発行';
			case '_role._options.canManageCustomEmojis': return 'カスタム絵文字の管理';
			case '_role._options.driveCapacity': return 'ドライブ容量';
			case '_role._options.alwaysMarkNsfw': return '勝手にファイルにNSFWをくっつける';
			case '_role._options.pinMax': return 'ノートのピン留めの最大数';
			case '_role._options.antennaMax': return 'アンテナの作成可能数';
			case '_role._options.wordMuteMax': return 'ワードミュートの最大文字数';
			case '_role._options.webhookMax': return 'Webhockの作成可能数';
			case '_role._options.clipMax': return 'クリップの作成可能数';
			case '_role._options.noteEachClipsMax': return 'クリップ内のノートの最大数';
			case '_role._options.userListMax': return 'ユーザーリストの作成可能数';
			case '_role._options.userEachUserListsMax': return 'ユーザーリスト内のユーザーの最大数';
			case '_role._options.rateLimitFactor': return 'レートリミット';
			case '_role._options.descriptionOfRateLimitFactor': return 'ちっちゃいほど制限が緩なって、大きいほど制限されるで。';
			case '_role._options.canHideAds': return '広告を表示させへん';
			case '_role._options.canSearchNotes': return 'ノート検索を使わすかどうか';
			case '_role._condition.isLocal': return 'ローカルユーザー';
			case '_role._condition.isRemote': return 'リモートユーザー';
			case '_role._condition.createdLessThan': return 'アカウント作成から～以内';
			case '_role._condition.createdMoreThan': return 'アカウント作成から～経過';
			case '_role._condition.followersLessThanOrEq': return 'フォロワー数が～以下';
			case '_role._condition.followersMoreThanOrEq': return 'フォロワー数が～以上';
			case '_role._condition.followingLessThanOrEq': return 'フォロー数が～以下';
			case '_role._condition.followingMoreThanOrEq': return 'フォロー数が～以上';
			case '_role._condition.notesLessThanOrEq': return '投稿数が～以下しかない';
			case '_role._condition.notesMoreThanOrEq': return '投稿を～以上しとる';
			case '_role._condition.and': return '～かつ～';
			case '_role._condition.or': return '～または～';
			case '_role._condition.not': return '～ではない';
			case '_sensitiveMediaDetection.description': return '機械学習を使って自動でセンシティブなメディアを検出して、モデレーションに役立てることができるで。サーバーの負荷が少し増えてまうなあ。';
			case '_sensitiveMediaDetection.sensitivity': return '検出感度やで';
			case '_sensitiveMediaDetection.sensitivityDescription': return '感度を低くすると、誤検知(偽陽性)が減るで。感度を高くすると、検知漏れ(偽陰性)が減るで。';
			case '_sensitiveMediaDetection.setSensitiveFlagAutomatically': return 'NSFWフラグを設定するで';
			case '_sensitiveMediaDetection.setSensitiveFlagAutomaticallyDescription': return 'この設定をオフにしても内部的に判定結果は保持されるで。';
			case '_sensitiveMediaDetection.analyzeVideos': return '動画の解析をオンにするで';
			case '_sensitiveMediaDetection.analyzeVideosDescription': return '画像に加えて動画も解析するようにするで。鯖の負荷が少し増えるで。';
			case '_emailUnavailable.used': return 'もう使われとるで';
			case '_emailUnavailable.format': return '形式がおかしいで';
			case '_emailUnavailable.disposable': return '永久に使えるアドレスじゃないみたいやで';
			case '_emailUnavailable.mx': return '正しいメールサーバーじゃない見たいやで';
			case '_emailUnavailable.smtp': return 'メールサーバーが応答してないみたいや';
			case '_ffVisibility.public': return '公開';
			case '_ffVisibility.followers': return 'フォロワーだけに公開';
			case '_ffVisibility.private': return '非公開';
			case '_signup.almostThere': return 'ほぼ完了やで';
			case '_signup.emailAddressInfo': return 'あんたが使っとるメアドを入力してなー。入れたメアドが公開されることはないで。';
			case '_signup.emailSent': return 'さっき入れたメールアドレス({email})宛に確認のメールが送られたで。メールに書かれたリンクにアクセスすれば、アカウントの作成が完了や！';
			case '_accountDelete.accountDelete': return 'アカウントの削除';
			case '_accountDelete.mayTakeTime': return 'アカウントの削除は負荷がかかる処理やねんて。やから作ったコンテンツの数や上げたファイルの数が多いと削除が終わるまでに時間がかかることがあるんやって。';
			case '_accountDelete.sendEmail': return 'アカウントの削除が終わるときは、登録してたメールアドレス宛に通知を送るで。';
			case '_accountDelete.requestAccountDelete': return 'アカウント削除をリクエスト';
			case '_accountDelete.started': return '削除処理が始まったで。';
			case '_accountDelete.inProgress': return '削除が進んでるで';
			case '_ad.back': return '戻る';
			case '_ad.reduceFrequencyOfThisAd': return 'この広告の表示頻度を下げるで';
			case '_ad.hide': return '表示せん';
			case '_forgotPassword.enterEmail': return 'アカウントに登録したメールアドレスをここに入力してや。そのアドレス宛に、パスワードリセット用のリンクが送られるから待っててな～。';
			case '_forgotPassword.ifNoEmail': return 'メールアドレスを登録してへんのやったら、管理者まで教えてな～。';
			case '_forgotPassword.contactAdmin': return 'このサーバーはメールに対応してへんから、パスワードリセットをしたいときは管理者まで教えてな～。';
			case '_gallery.my': return 'あんたの投稿';
			case '_gallery.liked': return 'いいねした投稿';
			case '_gallery.like': return 'ええやん！';
			case '_gallery.unlike': return '良くないわ';
			case '_email._follow.title': return 'フォローされたで';
			case '_email._receiveFollowRequest.title': return 'フォローリクエストを受け取ったで';
			case '_plugin.install': return 'プラグインのインストール';
			case '_plugin.installWarn': return '信頼できへんプラグインはインストールせんとってな';
			case '_plugin.manage': return 'プラグインの管理';
			case '_preferencesBackups.list': return '作ったバックアップ';
			case '_preferencesBackups.saveNew': return '新しく保存';
			case '_preferencesBackups.loadFile': return 'ファイルを読み込む';
			case '_preferencesBackups.apply': return 'このデバイスに使う';
			case '_preferencesBackups.save': return '上書き保存';
			case '_preferencesBackups.inputName': return 'バックアップ名を入力してや';
			case '_preferencesBackups.cannotSave': return '保存できへん';
			case '_preferencesBackups.nameAlreadyExists': return '「{name}」って名前のバックアップはもうあんねん。やから違う名前を入れてや。';
			case '_preferencesBackups.applyConfirm': return 'バックアップ「{name}」をこのデバイスに使うん？今のデバイス設定は消えるで？ええの？';
			case '_preferencesBackups.saveConfirm': return '{name}に上書き保存するん？';
			case '_preferencesBackups.deleteConfirm': return '{name}を消すん？';
			case '_preferencesBackups.renameConfirm': return '「{old}」を「{new_}」に変えるん？';
			case '_preferencesBackups.noBackups': return 'バックアップはないで。「新しく保存」ってとこでこのクライアント設定を鯖に保存できるで。';
			case '_preferencesBackups.createdAt': return '作った日時:{date}{time}';
			case '_preferencesBackups.updatedAt': return '更新日時:{date}{time}';
			case '_preferencesBackups.cannotLoad': return '読み込みできへん...';
			case '_preferencesBackups.invalidFile': return 'ファイル形式が違うで？';
			case '_registry.scope': return 'スコープ';
			case '_registry.key': return 'キー';
			case '_registry.keys': return 'キー';
			case '_registry.domain': return 'ドメイン';
			case '_registry.createKey': return 'キーを作る';
			case '_aboutMisskey.about': return 'Misskeyはsyuiloが2014年からずっと作ってはる、オープンソースなソフトウェアや。';
			case '_aboutMisskey.contributors': return '主な貢献者';
			case '_aboutMisskey.allContributors': return '全ての貢献者';
			case '_aboutMisskey.source': return 'ソースコード';
			case '_aboutMisskey.translation': return 'Misskeyを翻訳';
			case '_aboutMisskey.donate': return 'Misskeyに寄付';
			case '_aboutMisskey.morePatrons': return '他にもぎょうさんの人からサポートしてもろてんねん。ほんまおおきに🥰';
			case '_aboutMisskey.patrons': return '支援者';
			case '_nsfw.respect': return '閲覧注意のメディアは隠すで';
			case '_nsfw.ignore': return '閲覧注意のメディアは隠さへんで';
			case '_nsfw.force': return '常にメディアを隠すで';
			case '_instanceTicker.none': return '表示せん';
			case '_instanceTicker.remote': return 'リモートユーザーに表示';
			case '_instanceTicker.always': return '常に表示';
			case '_serverDisconnectedBehavior.reload': return '自動でリロード';
			case '_serverDisconnectedBehavior.dialog': return 'ダイアログで警告';
			case '_serverDisconnectedBehavior.quiet': return '控えめに警告';
			case '_channel.create': return 'チャンネルを作る';
			case '_channel.edit': return 'チャンネルを編集';
			case '_channel.setBanner': return 'バナーを設定';
			case '_channel.removeBanner': return 'バナーを削除';
			case '_channel.featured': return 'トレンド';
			case '_channel.owned': return '管理中';
			case '_channel.following': return 'フォロー中やで';
			case '_channel.usersCount': return '{n}人が参加中やで';
			case '_channel.notesCount': return '{n}こ投稿があるで';
			case '_channel.nameAndDescription': return '名前と説明';
			case '_channel.nameOnly': return '名前だけ';
			case '_menuDisplay.sideFull': return '横';
			case '_menuDisplay.sideIcon': return '横(アイコン)';
			case '_menuDisplay.top': return '上';
			case '_menuDisplay.hide': return '隠す';
			case '_wordMute.muteWords': return 'ミュートするワード';
			case '_wordMute.muteWordsDescription': return 'スペースで区切るとAND指定になって、改行で区切るとOR指定になるで。';
			case '_wordMute.muteWordsDescription2': return 'キーワードをスラッシュで囲むと正規表現になるで。';
			case '_wordMute.softDescription': return '指定した条件のノートをタイムラインから隠すで。';
			case '_wordMute.hardDescription': return '指定した条件のノートをタイムラインに追加しないようにするで。追加せーへんかったかったノートは、条件を変えても除外されたままになるで。';
			case '_wordMute.soft': return 'ソフト';
			case '_wordMute.hard': return 'ハード';
			case '_wordMute.mutedNotes': return 'ミュートされたノート';
			case '_instanceMute.instanceMuteDescription': return 'ミュートしたサーバーのユーザーへの返信を含めて、設定したインスタンスの全てのノートとRenoteをミュートにするで。';
			case '_instanceMute.instanceMuteDescription2': return '改行で区切って設定するんやで';
			case '_instanceMute.title': return '設定したサーバーのノートを隠すで。';
			case '_instanceMute.heading': return 'ミュートするサーバー';
			case '_theme.explore': return 'テーマを探す';
			case '_theme.install': return 'テーマのインストール';
			case '_theme.manage': return 'テーマの管理';
			case '_theme.code': return 'テーマコード';
			case '_theme.description': return '説明';
			case '_theme.installed': return '{name}をインストールしたで。';
			case '_theme.installedThemes': return 'インストールされとるテーマ';
			case '_theme.builtinThemes': return '標準のテーマ';
			case '_theme.alreadyInstalled': return 'そのテーマはもうインストールされとるで？';
			case '_theme.invalid': return 'テーマの形式が間違ってるみたいや';
			case '_theme.make': return 'テーマを作る';
			case '_theme.base': return 'ベース';
			case '_theme.addConstant': return '定数を追加';
			case '_theme.constant': return '定数';
			case '_theme.defaultValue': return 'デフォルト値';
			case '_theme.color': return '色';
			case '_theme.refProp': return 'プロパティを参照';
			case '_theme.refConst': return '定数を参照';
			case '_theme.key': return 'キー';
			case '_theme.func': return '関数';
			case '_theme.funcKind': return '関数の種類';
			case '_theme.argument': return '引数';
			case '_theme.basedProp': return '元にするプロパティの名前';
			case '_theme.alpha': return '不透明度';
			case '_theme.darken': return '暗さ';
			case '_theme.lighten': return '明るさ';
			case '_theme.inputConstantName': return '定数名を入力してな';
			case '_theme.importInfo': return 'ここにテーマコードを張り付けて、エディターにインポートすることができるで';
			case '_theme.deleteConstantConfirm': return '定数 {const_} を削除してもええか？';
			case '_theme.keys.accent': return 'アクセント';
			case '_theme.keys.bg': return '背景';
			case '_theme.keys.fg': return '文字';
			case '_theme.keys.focus': return 'フォーカス';
			case '_theme.keys.indicator': return 'インジケーター';
			case '_theme.keys.panel': return 'パネル';
			case '_theme.keys.shadow': return '影';
			case '_theme.keys.header': return 'ヘッダー';
			case '_theme.keys.navBg': return 'サイドバーの背景';
			case '_theme.keys.navFg': return 'サイドバーの文字';
			case '_theme.keys.navHoverFg': return 'サイドバー文字(ホバー)';
			case '_theme.keys.navActive': return 'サイドバー文字(アクティブ)';
			case '_theme.keys.navIndicator': return 'サイドバーのインジケーター';
			case '_theme.keys.link': return 'リンク';
			case '_theme.keys.hashtag': return 'ハッシュタグ';
			case '_theme.keys.mention': return 'メンション';
			case '_theme.keys.mentionMe': return 'うち宛てのメンション';
			case '_theme.keys.renote': return 'Renote';
			case '_theme.keys.modalBg': return 'モーダルの背景';
			case '_theme.keys.divider': return '分割線';
			case '_theme.keys.scrollbarHandle': return 'スクロールバーの取っ手';
			case '_theme.keys.scrollbarHandleHover': return 'スクロールバーの取っ手（ホバー)';
			case '_theme.keys.dateLabelFg': return '日付ラベルの文字';
			case '_theme.keys.infoBg': return '情報の背景';
			case '_theme.keys.infoFg': return '情報の文字';
			case '_theme.keys.infoWarnBg': return '警告の背景';
			case '_theme.keys.infoWarnFg': return '警告の文字';
			case '_theme.keys.cwBg': return 'CW ボタンの背景';
			case '_theme.keys.cwFg': return 'CW ボタンの文字';
			case '_theme.keys.cwHoverBg': return 'CW ボタンの背景 (ホバー)';
			case '_theme.keys.toastBg': return '通知トーストの背景';
			case '_theme.keys.toastFg': return '通知トーストの文字';
			case '_theme.keys.buttonBg': return 'ボタンの背景';
			case '_theme.keys.buttonHoverBg': return 'ボタンの背景 (ホバー)';
			case '_theme.keys.inputBorder': return '入力ボックスの縁取り';
			case '_theme.keys.listItemHoverBg': return 'リスト項目の背景 (ホバー)';
			case '_theme.keys.driveFolderBg': return 'ドライブフォルダーの背景';
			case '_theme.keys.wallpaperOverlay': return '壁紙のオーバーレイ';
			case '_theme.keys.badge': return 'バッジ';
			case '_theme.keys.messageBg': return 'チャットの背景';
			case '_theme.keys.accentDarken': return 'アクセント (暗め)';
			case '_theme.keys.accentLighten': return 'アクセント (明るめ)';
			case '_theme.keys.fgHighlighted': return '強調されとる文字';
			case '_sfx.note': return 'ノート';
			case '_sfx.noteMy': return 'ノート(自分)';
			case '_sfx.notification': return '通知';
			case '_sfx.chat': return 'チャット';
			case '_sfx.chatBg': return 'チャット(バックグラウンド)';
			case '_sfx.antenna': return 'アンテナ受信';
			case '_sfx.channel': return 'チャンネル通知';
			case '_ago.future': return '未来';
			case '_ago.justNow': return 'ついさっき';
			case '_ago.secondsAgo': return '{n}秒前';
			case '_ago.minutesAgo': return '{n}分前';
			case '_ago.hoursAgo': return '{n}時間前';
			case '_ago.daysAgo': return '{n}日前';
			case '_ago.weeksAgo': return '{n}週間前';
			case '_ago.monthsAgo': return '{n}ヶ月前';
			case '_ago.yearsAgo': return '{n}年前';
			case '_ago.invalid': return 'あらへん';
			case '_time.second': return '秒';
			case '_time.minute': return '分';
			case '_time.hour': return '時間';
			case '_time.day': return '日';
			case '_timelineTutorial.title': return 'Misskeyってなんや？';
			case '_timelineTutorial.step1_1': return 'これは「タイムライン」や。{name}に投稿された「ノート」が順番に表示されるで。';
			case '_timelineTutorial.step1_2': return 'タイムラインには何個か種類があってな、例えば「ホームタイムライン」だったらあんたのフォローしてる人のノート、「ローカルタイムライン」には{name}全部のノートが流れてくるで。';
			case '_timelineTutorial.step2_1': return '試しに、何かノートを投稿してみ。画面の鉛筆マークのボタンでフォームが開くで。';
			case '_timelineTutorial.step2_2': return '最初のノートは、自己紹介とか「{name}始めてみたんや」とかがええと思うで。';
			case '_timelineTutorial.step3_1': return '投稿できた？';
			case '_timelineTutorial.step3_2': return 'あんたのノートがタイムラインに出てきたら成功や。';
			case '_timelineTutorial.step4_1': return 'ノートには、「ツッコミ」を付けれるで。';
			case '_timelineTutorial.step4_2': return 'ツッコむんやったら、ノートの「+」マークを押して、好きな絵文字を選ぶで。';
			case '_2fa.alreadyRegistered': return 'もう設定終わっとるわ。';
			case '_2fa.registerTOTP': return '認証アプリの設定はじめる';
			case '_2fa.passwordToTOTP': return 'パスワードを入れてーや';
			case '_2fa.step1': return 'ほんなら、{a}や{b}とかの認証アプリを使っとるデバイスにインストールしてな。';
			case '_2fa.step2': return '次に、ここにあるQRコードをアプリでスキャンしてな～。';
			case '_2fa.step2Click': return 'QRコードをクリックすると、今使とる端末に入っとる認証アプリとかキーリングに登録できるで。';
			case '_2fa.step2Url': return 'デスクトップアプリやったら次のURLを入力してや:';
			case '_2fa.step3Title': return '確認コードを入れてーや';
			case '_2fa.step3': return 'アプリに表示されているトークンを入力して終わりや。';
			case '_2fa.step4': return 'これからログインするときも、同じようにトークンを入力するんやで';
			case '_2fa.securityKeyNotSupported': return '今使とるブラウザはセキュリティキーに対応してへんのやってさ。';
			case '_2fa.registerTOTPBeforeKey': return 'セキュリティキー・パスキーを登録するんやったら、まず認証アプリを設定してーな。';
			case '_2fa.securityKeyInfo': return 'FIDO2をサポートするハードウェアセキュリティキーか端末の指紋認証やPINを使ってログインするように設定できるで。';
			case '_2fa.chromePasskeyNotSupported': return 'Chromeのパスキーは今んとこ対応してないねん。';
			case '_2fa.registerSecurityKey': return 'セキュリティキー・パスキーを登録するわ';
			case '_2fa.securityKeyName': return 'キーの名前を入れてーや';
			case '_2fa.tapSecurityKey': return 'ブラウザが言うこと聞いて、セキュリティキーとかパスキー登録しといでや';
			case '_2fa.removeKey': return 'セキュリティキーをほかす';
			case '_2fa.removeKeyConfirm': return '{name}を消すん？';
			case '_2fa.whyTOTPOnlyRenew': return 'セキュリティキーが登録されとったら、認証アプリの設定は解除できへんで。';
			case '_2fa.renewTOTP': return '認証アプリをもっかい設定';
			case '_2fa.renewTOTPConfirm': return '今までの人称アプリの確認コードは使えんくなるけどええか？';
			case '_2fa.renewTOTPOk': return 'もっかい設定する';
			case '_2fa.renewTOTPCancel': return 'やめとく';
			case '_auth.shareAccessTitle': return 'アプリへのアクセス許してやったらどうや';
			case '_auth.shareAccess': return '「{name}」がアカウントにアクセスすることを許可してええか？';
			case '_auth.shareAccessAsk': return 'アカウントのアクセスを許可してもええか？';
			case '_auth.permission': return '{name}に次の権限つけたってやって';
			case '_auth.permissionAsk': return 'このアプリは次の権限を要求しとるで';
			case '_auth.pleaseGoBack': return 'アプリケーションに戻ってええよ';
			case '_auth.callback': return 'アプリケーションに戻っとるで';
			case '_auth.denied': return 'アクセスを拒否ったで';
			case '_auth.pleaseLogin': return 'アプリにアクセスさせるんやったら、ログインしてや。';
			case '_antennaSources.all': return 'みんなのノート';
			case '_antennaSources.homeTimeline': return 'フォローしとるユーザーのノート';
			case '_antennaSources.users': return '選らんだ一人か複数のユーザーのノート';
			case '_antennaSources.userList': return '選んだリストのユーザーのノート';
			case '_weekday.sunday': return '日曜日';
			case '_weekday.monday': return '月曜日';
			case '_weekday.tuesday': return '火曜日';
			case '_weekday.wednesday': return '水曜日';
			case '_weekday.thursday': return '木曜日';
			case '_weekday.friday': return '金曜日';
			case '_weekday.saturday': return '土曜日';
			case '_widgets.profile': return 'プロフィール';
			case '_widgets.instanceInfo': return 'サーバー情報';
			case '_widgets.memo': return '付箋';
			case '_widgets.notifications': return '通知';
			case '_widgets.timeline': return 'タイムライン';
			case '_widgets.calendar': return 'カレンダー';
			case '_widgets.trends': return 'トレンド';
			case '_widgets.clock': return '時計';
			case '_widgets.rss': return 'RSSリーダー';
			case '_widgets.rssTicker': return 'RSSティッカー';
			case '_widgets.activity': return 'アクティビティ';
			case '_widgets.photos': return 'フォト';
			case '_widgets.digitalClock': return 'デジタル時計';
			case '_widgets.unixClock': return 'UNIX時計';
			case '_widgets.federation': return '連合';
			case '_widgets.instanceCloud': return 'サーバークラウド';
			case '_widgets.postForm': return '投稿フォーム';
			case '_widgets.slideshow': return 'スライドショー';
			case '_widgets.button': return 'ボタン';
			case '_widgets.onlineUsers': return 'オンラインユーザー';
			case '_widgets.jobQueue': return 'ジョブキュー';
			case '_widgets.serverMetric': return 'サーバーメトリクス';
			case '_widgets.aiscript': return 'AiScriptコンソール';
			case '_widgets.aiscriptApp': return 'AiScript App';
			case '_widgets.aichan': return '藍';
			case '_widgets.userList': return 'ユーザーリスト';
			case '_widgets._userList.chooseList': return 'リストを選ぶ';
			case '_widgets.clicker': return 'クリッカー';
			case '_cw.hide': return '隠す';
			case '_cw.show': return '続き見して！';
			case '_cw.chars': return '{count}文字';
			case '_cw.files': return '{count}ファイル';
			case '_poll.noOnlyOneChoice': return '選択肢は最低2つ必要やで';
			case '_poll.choiceN': return '選択肢{n}';
			case '_poll.noMore': return 'これ以上追加でけへん';
			case '_poll.canMultipleVote': return '複数回答可';
			case '_poll.expiration': return '期限';
			case '_poll.infinite': return '無期限';
			case '_poll.at': return '日時指定';
			case '_poll.after': return '経過指定';
			case '_poll.deadlineDate': return '期日';
			case '_poll.deadlineTime': return '時間';
			case '_poll.duration': return '期間';
			case '_poll.votesCount': return '{n}票';
			case '_poll.totalVotes': return '計{n}票';
			case '_poll.vote': return '投票する';
			case '_poll.showResult': return '結果を見るで';
			case '_poll.voted': return '投票済みやで';
			case '_poll.closed': return '終了済みやで';
			case '_poll.remainingDays': return '終了まであと{d}日{h}時間や';
			case '_poll.remainingHours': return '終了まであと{h}時間{m}分や';
			case '_poll.remainingMinutes': return '終了まであと{m}分{s}秒や';
			case '_poll.remainingSeconds': return '終了まであと{s}秒や';
			case '_visibility.public': return 'パブリック';
			case '_visibility.publicDescription': return 'みんなに公開';
			case '_visibility.home': return 'ホーム';
			case '_visibility.homeDescription': return 'ホームタイムラインのみに公開するで';
			case '_visibility.followers': return 'フォロワー';
			case '_visibility.followersDescription': return '自分のフォロワーのみに公開するで';
			case '_visibility.specified': return 'ダイレクト';
			case '_visibility.specifiedDescription': return '選んだユーザーのみに公開するで';
			case '_visibility.disableFederation': return '連合なし';
			case '_visibility.disableFederationDescription': return '他サーバーへは送らんとくわ';
			case '_postForm.replyPlaceholder': return 'このノートに返信...';
			case '_postForm.quotePlaceholder': return 'このノートを引用...';
			case '_postForm.channelPlaceholder': return 'チャンネルに投稿...';
			case '_postForm._placeholders.a': return 'いまどないしとるん？';
			case '_postForm._placeholders.b': return '何かあったん？';
			case '_postForm._placeholders.c': return '何か考えとるん？';
			case '_postForm._placeholders.d': return '何か言いたいことあるん？';
			case '_postForm._placeholders.e': return 'ここに書いてーなー';
			case '_postForm._placeholders.f': return 'あんたが書くの待っとるで';
			case '_profile.name': return '名前';
			case '_profile.username': return 'ユーザー名';
			case '_profile.description': return '自己紹介';
			case '_profile.youCanIncludeHashtags': return 'ハッシュタグを含めることができるで。';
			case '_profile.metadata': return '追加情報';
			case '_profile.metadataEdit': return '追加情報を編集するで';
			case '_profile.metadataDescription': return 'プロフィールに表として追加情報を表示することができるで';
			case '_profile.metadataLabel': return 'ラベル';
			case '_profile.metadataContent': return '内容';
			case '_profile.changeAvatar': return 'アバター画像を変更するで';
			case '_profile.changeBanner': return 'バナー画像を変更するで';
			case '_exportOrImport.allNotes': return '全てのノート';
			case '_exportOrImport.favoritedNotes': return 'お気に入りにしたノート';
			case '_exportOrImport.followingList': return 'フォロー';
			case '_exportOrImport.muteList': return 'ミュート';
			case '_exportOrImport.blockingList': return 'ブロック';
			case '_exportOrImport.userLists': return 'リスト';
			case '_exportOrImport.excludeMutingUsers': return 'ミュートしてるユーザーは入れんとくわ';
			case '_exportOrImport.excludeInactiveUsers': return '使われてなさそうなアカウントは入れんとくわ';
			case '_charts.federation': return '連合';
			case '_charts.apRequest': return 'リクエスト';
			case '_charts.usersIncDec': return 'ユーザーの増減';
			case '_charts.usersTotal': return 'ユーザーの合計';
			case '_charts.activeUsers': return 'いまおるユーザー数';
			case '_charts.notesIncDec': return 'ノートの増減';
			case '_charts.localNotesIncDec': return 'ローカルのノートの増減';
			case '_charts.remoteNotesIncDec': return 'リモートのノートの増減';
			case '_charts.notesTotal': return 'ノートの合計';
			case '_charts.filesIncDec': return 'ファイルの増減';
			case '_charts.filesTotal': return 'ファイルの合計';
			case '_charts.storageUsageIncDec': return 'ストレージ使用量の増減';
			case '_charts.storageUsageTotal': return 'ストレージ使用量の合計';
			case '_instanceCharts.requests': return 'リクエスト';
			case '_instanceCharts.users': return 'ユーザーの増減';
			case '_instanceCharts.usersTotal': return 'ユーザーの累積';
			case '_instanceCharts.notes': return 'ノートの増減';
			case '_instanceCharts.notesTotal': return 'ノートの累積';
			case '_instanceCharts.ff': return 'フォロー/フォロワーの増減';
			case '_instanceCharts.ffTotal': return 'フォロー/フォロワーの累積';
			case '_instanceCharts.cacheSize': return 'キャッシュサイズの増減';
			case '_instanceCharts.cacheSizeTotal': return 'キャッシュサイズの累積';
			case '_instanceCharts.files': return 'ファイル数の増減';
			case '_instanceCharts.filesTotal': return 'ファイル数の累積';
			case '_timelines.home': return 'ホーム';
			case '_timelines.local': return 'ローカル';
			case '_timelines.social': return 'ソーシャル';
			case '_timelines.global': return 'グローバル';
			case '_play.new_': return 'Playの作成';
			case '_play.edit': return 'Playの編集';
			case '_play.created': return 'Playを作ったで';
			case '_play.updated': return 'Playを更新したで';
			case '_play.deleted': return 'Playを消したで';
			case '_play.pageSetting': return 'Play設定';
			case '_play.editThisPage': return 'このPlayを編集';
			case '_play.viewSource': return 'ソースを表示';
			case '_play.my': return '自分のPlay';
			case '_play.liked': return 'いいねしたPlay';
			case '_play.featured': return '人気';
			case '_play.title': return 'タイトル';
			case '_play.script': return 'スクリプト';
			case '_play.summary': return '説明';
			case '_pages.newPage': return 'ページを作る';
			case '_pages.editPage': return 'ページの編集';
			case '_pages.readPage': return 'ソースを表示中';
			case '_pages.created': return 'ページを作成したで';
			case '_pages.updated': return 'ページを更新したで';
			case '_pages.deleted': return 'ページを削除したで';
			case '_pages.pageSetting': return 'ページ設定';
			case '_pages.nameAlreadyExists': return '指定されたページURLはもうあるみたいや';
			case '_pages.invalidNameTitle': return '正しくないページURLみたいやで';
			case '_pages.invalidNameText': return '空白になってないか確認してや～';
			case '_pages.editThisPage': return 'このページを編集';
			case '_pages.viewSource': return 'ソースを表示';
			case '_pages.viewPage': return 'ページを見る';
			case '_pages.like': return 'ええやん';
			case '_pages.unlike': return '良くないわ';
			case '_pages.my': return '自分のページ';
			case '_pages.liked': return 'ええと思ったページ';
			case '_pages.featured': return '人気';
			case '_pages.inspector': return 'インスペクター';
			case '_pages.contents': return 'コンテンツ';
			case '_pages.content': return 'ページブロック';
			case '_pages.variables': return '変数';
			case '_pages.title': return 'タイトル';
			case '_pages.url': return 'ページURL';
			case '_pages.summary': return 'ページの要約';
			case '_pages.alignCenter': return '中央寄せ';
			case '_pages.hideTitleWhenPinned': return 'ピン止めされてるときにタイトルを表示';
			case '_pages.font': return 'フォント';
			case '_pages.fontSerif': return 'セリフ';
			case '_pages.fontSansSerif': return 'サンセリフ';
			case '_pages.eyeCatchingImageSet': return 'アイキャッチ画像を設定';
			case '_pages.eyeCatchingImageRemove': return 'アイキャッチ画像を削除';
			case '_pages.chooseBlock': return 'ブロックを追加';
			case '_pages.selectType': return '種類を選択';
			case '_pages.contentBlocks': return 'コンテンツ';
			case '_pages.inputBlocks': return '入力';
			case '_pages.specialBlocks': return '特殊';
			case '_pages.blocks.text': return 'テキスト';
			case '_pages.blocks.textarea': return 'テキストエリア';
			case '_pages.blocks.section': return 'セクション';
			case '_pages.blocks.image': return '画像';
			case '_pages.blocks.button': return 'ボタン';
			case '_pages.blocks.note': return 'ノート埋め込み';
			case '_pages.blocks._note.id': return 'ノートID';
			case '_pages.blocks._note.idDescription': return 'ノートURLをペーストして設定することもできるで。';
			case '_pages.blocks._note.detailed': return '詳細な表示';
			case '_relayStatus.requesting': return '承認待ち';
			case '_relayStatus.accepted': return '承認済み';
			case '_relayStatus.rejected': return '拒否済み';
			case '_notification.fileUploaded': return 'ファイルが無事アップロードされたで。';
			case '_notification.youGotMention': return '{name}からのメンション';
			case '_notification.youGotReply': return '{name}からのリプライ';
			case '_notification.youGotQuote': return '{name}による引用';
			case '_notification.youRenoted': return '{name}がRenoteしたみたいやで';
			case '_notification.youWereFollowed': return 'フォローされたで';
			case '_notification.youReceivedFollowRequest': return 'フォロー許可してほしいみたいやな';
			case '_notification.yourFollowRequestAccepted': return 'フォローさせてもろたで';
			case '_notification.pollEnded': return 'アンケートの結果が出たみたいや';
			case '_notification.unreadAntennaNote': return 'アンテナ {name}';
			case '_notification.emptyPushNotificationMessage': return 'プッシュ通知の更新をしといたで';
			case '_notification.achievementEarned': return '実績を獲得しとるで';
			case '_notification._types.all': return 'すべて';
			case '_notification._types.follow': return 'フォロー';
			case '_notification._types.mention': return 'メンション';
			case '_notification._types.reply': return 'リプライ';
			case '_notification._types.renote': return 'Renote';
			case '_notification._types.quote': return '引用';
			case '_notification._types.reaction': return 'ツッコミ';
			case '_notification._types.pollEnded': return 'アンケートが終了したで';
			case '_notification._types.receiveFollowRequest': return 'フォロー許可してほしいみたいやで';
			case '_notification._types.followRequestAccepted': return 'フォローが受理されたで';
			case '_notification._types.achievementEarned': return '実績の獲得';
			case '_notification._types.app': return '連携アプリからの通知や';
			case '_notification._actions.followBack': return 'フォローバック';
			case '_notification._actions.reply': return '返事';
			case '_notification._actions.renote': return 'Renote';
			case '_deck.alwaysShowMainColumn': return 'いつもメインカラムを表示';
			case '_deck.columnAlign': return 'カラムの寄せ';
			case '_deck.addColumn': return 'カラムを追加';
			case '_deck.configureColumn': return 'カラムの設定';
			case '_deck.swapLeft': return '左に移動';
			case '_deck.swapRight': return '右に移動';
			case '_deck.swapUp': return '上に移動';
			case '_deck.swapDown': return '下に移動';
			case '_deck.stackLeft': return '左に重ねる';
			case '_deck.popRight': return '右に出す';
			case '_deck.profile': return 'プロファイル';
			case '_deck.newProfile': return '新規プロファイル';
			case '_deck.deleteProfile': return 'プロファイルを削除';
			case '_deck.introduction': return 'カラムを組み合わせて自分だけのインターフェイスを作りましょ！';
			case '_deck.introduction2': return '画面の右にある + を押して、いつでもカラムを追加できるで。';
			case '_deck.widgetsIntroduction': return 'カラムのメニューから、「ウィジェットの編集」を選んでウィジェットを追加してなー';
			case '_deck._columns.main': return 'メイン';
			case '_deck._columns.widgets': return 'ウィジェット';
			case '_deck._columns.notifications': return '通知';
			case '_deck._columns.tl': return 'タイムライン';
			case '_deck._columns.antenna': return 'アンテナ';
			case '_deck._columns.list': return 'リスト';
			case '_deck._columns.channel': return 'チャンネル';
			case '_deck._columns.mentions': return 'あんた宛て';
			case '_deck._columns.direct': return 'ダイレクト';
			case '_deck._columns.roleTimeline': return 'ロールタイムライン';
			case '_dialog.charactersExceeded': return '最大の文字数を上回っとるで！今は {current} / 最大でも {max}';
			case '_dialog.charactersBelow': return '最小の文字数を下回っとるで！今は {current} / 最低でも {min}';
			case '_disabledTimeline.title': return '使われへんタイムライン';
			case '_disabledTimeline.description': return 'あんたの今のロールやったら、このタイムラインは使われへんで。';
			case '_drivecleaner.orderBySizeDesc': return 'サイズのでかい順';
			case '_drivecleaner.orderByCreatedAtAsc': return '追加日の古い順';
			case '_webhookSettings.createWebhook': return 'Webhookをつくる';
			case '_webhookSettings.name': return '名前';
			case '_webhookSettings.secret': return 'シークレット';
			case '_webhookSettings.events': return 'Webhookを投げるタイミング';
			case '_webhookSettings.active': return '有効';
			case '_webhookSettings._events.follow': return 'フォローしたとき～！';
			case '_webhookSettings._events.followed': return 'フォローもらったとき～！';
			case '_webhookSettings._events.note': return 'ノートを投稿したとき～！';
			case '_webhookSettings._events.reply': return '返信があるとき～！';
			case '_webhookSettings._events.renote': return 'Renoteされるとき～！';
			case '_webhookSettings._events.reaction': return 'ツッコミがあるとき～！';
			case '_webhookSettings._events.mention': return 'メンションがあるとき～！';
			default: return null;
		}
	}
}
