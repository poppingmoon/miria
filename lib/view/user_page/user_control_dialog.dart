import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/user_extension.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/note_search_condition.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/error_detail.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:miria/view/user_page/antenna_modal_sheet.dart';
import 'package:miria/view/user_page/users_list_modal_sheet.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher/url_launcher.dart';

class UserControlDialog extends ConsumerWidget {
  final Account account;
  final String userId;

  const UserControlDialog({
    super.key,
    required this.account,
    required this.userId,
  });

  Future<void> addToList(BuildContext context, User user) async {
    return showModalBottomSheet(
      context: context,
      builder: (context) => UsersListModalSheet(
        account: account,
        user: user,
      ),
    );
  }

  Future<void> addToAntenna(BuildContext context, User user) async {
    return showModalBottomSheet(
      context: context,
      builder: (context) => AntennaModalSheet(
        account: account,
        user: user,
      ),
    );
  }

  Future<Expire?> getExpire(BuildContext context) async {
    return await showDialog<Expire?>(
      context: context,
      builder: (context) => const ExpireSelectDialog(),
    );
  }

  Future<void> renoteMuteCreate(BuildContext context, WidgetRef ref) async {
    await ref
        .read(userDetailedNotifierProvider((account, userId)).notifier)
        .createRenoteMute();
    if (!context.mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> renoteMuteDelete(BuildContext context, WidgetRef ref) async {
    await ref
        .read(userDetailedNotifierProvider((account, userId)).notifier)
        .deleteRenoteMute();
    if (!context.mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> muteCreate(BuildContext context, WidgetRef ref) async {
    final expires = await getExpire(context);
    if (expires == null) return;
    await ref
        .read(userDetailedNotifierProvider((account, userId)).notifier)
        .createMute(expires.expires);
    if (!context.mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> muteDelete(BuildContext context, WidgetRef ref) async {
    await ref
        .read(
          userDetailedNotifierProvider((account, userId)).notifier,
        )
        .deleteMute();
    if (!context.mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> blockingCreate(BuildContext context, WidgetRef ref) async {
    if (await SimpleConfirmDialog.show(
          context: context,
          message: S.of(context).confirmCreateBlock,
          primary: S.of(context).createBlock,
          secondary: S.of(context).cancel,
        ) ??
        false) {
      return;
    }

    await ref
        .read(userDetailedNotifierProvider((account, userId)).notifier)
        .createBlock();
    if (!context.mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> blockingDelete(BuildContext context, WidgetRef ref) async {
    await ref
        .read(userDetailedNotifierProvider((account, userId)).notifier)
        .deleteBlock();
    if (!context.mounted) return;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDetailedNotifierProvider((account, userId)));
    return user.when(
      data: (user) => ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.copy),
            title: Text(S.of(context).copyName),
            onTap: () {
              Clipboard.setData(
                ClipboardData(
                  text: user.name ?? user.username,
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).doneCopy)),
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.alternate_email),
            title: Text(S.of(context).copyUserScreenName),
            onTap: () {
              Clipboard.setData(ClipboardData(text: user.acct));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).doneCopy)),
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.link),
            title: Text(S.of(context).copyLinks),
            onTap: () {
              Clipboard.setData(
                ClipboardData(
                  text: Uri(
                    scheme: "https",
                    host: account.host,
                    path: user.acct,
                  ).toString(),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).doneCopy)),
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.open_in_browser),
            title: Text(S.of(context).openBrowsers),
            onTap: () {
              launchUrl(
                Uri(
                  scheme: "https",
                  host: account.host,
                  path: user.acct,
                ),
                mode: LaunchMode.inAppWebView,
              );
              Navigator.of(context).pop();
            },
          ),
          if (user.host != null)
            ListTile(
              leading: const Icon(Icons.rocket_launch),
              title: Text(S.of(context).openBrowsersAsRemote),
              onTap: () {
                final uri = user.uri ?? user.url;
                if (uri == null) return;
                launchUrl(uri, mode: LaunchMode.inAppWebView);
                Navigator.of(context).pop();
              },
            ),
          ListTile(
            leading: const Icon(Icons.open_in_new),
            title: Text(S.of(context).openInAnotherAccount),
            onTap: () => ref
                .read(misskeyNoteNotifierProvider(account).notifier)
                .openUserInOtherAccount(context, user)
                .expectFailure(context),
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: Text(S.of(context).searchNotes),
            onTap: () => context.pushRoute(
              SearchRoute(
                account: account,
                initialNoteSearchCondition: NoteSearchCondition(
                  user: user,
                ),
              ),
            ),
          ),
          if (account.hasToken) ...[
            ListTile(
              leading: const Icon(Icons.list),
              title: Text(S.of(context).addToList),
              onTap: () => addToList(context, user),
            ),
            ListTile(
              leading: const Icon(Icons.settings_input_antenna),
              title: Text(S.of(context).addToAntenna),
              onTap: () => addToAntenna(context, user),
            ),
            if (user is UserDetailedNotMeWithRelations) ...[
              if (user.isRenoteMuted)
                ListTile(
                  leading: const Icon(Icons.repeat_rounded),
                  title: Text(S.of(context).deleteRenoteMute),
                  onTap: () =>
                      renoteMuteDelete(context, ref).expectFailure(context),
                )
              else
                ListTile(
                  leading: const Icon(Icons.repeat_rounded),
                  title: Text(S.of(context).createRenoteMute),
                  onTap: () =>
                      renoteMuteCreate(context, ref).expectFailure(context),
                ),
              if (user.isMuted)
                ListTile(
                  leading: const Icon(Icons.visibility),
                  title: Text(S.of(context).deleteMute),
                  onTap: () => muteDelete(context, ref).expectFailure(context),
                )
              else
                ListTile(
                  leading: const Icon(Icons.visibility_off),
                  title: Text(S.of(context).createMute),
                  onTap: () => muteCreate(context, ref).expectFailure(context),
                ),
              if (user.isBlocking)
                ListTile(
                  leading: const Icon(Icons.block),
                  title: Text(S.of(context).deleteBlock),
                  onTap: () =>
                      blockingDelete(context, ref).expectFailure(context),
                )
              else
                ListTile(
                  leading: const Icon(Icons.block),
                  title: Text(S.of(context).createBlock),
                  onTap: () =>
                      blockingCreate(context, ref).expectFailure(context),
                ),
            ],
          ],
        ],
      ),
      error: (e, st) => Center(child: ErrorDetail(error: e, stackTrace: st)),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class ExpireSelectDialog extends StatefulWidget {
  const ExpireSelectDialog({super.key});

  @override
  State<StatefulWidget> createState() => ExpireSelectDialogState();
}

enum Expire {
  indefinite(null),
  minutes_10(Duration(minutes: 10)),
  hours_1(Duration(hours: 1)),
  day_1(Duration(days: 1)),
  week_1(Duration(days: 7));

  final Duration? expires;

  const Expire(this.expires);

  String displayName(BuildContext context) {
    return switch (this) {
      Expire.indefinite => S.of(context).unlimited,
      Expire.minutes_10 => S.of(context).minutes10,
      Expire.hours_1 => S.of(context).hours1,
      Expire.day_1 => S.of(context).day1,
      Expire.week_1 => S.of(context).week1,
    };
  }
}

class ExpireSelectDialogState extends State<ExpireSelectDialog> {
  Expire? selectedExpire = Expire.indefinite;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).selectDuration),
      content: DropdownButton<Expire>(
        items: [
          for (final value in Expire.values)
            DropdownMenuItem<Expire>(
              value: value,
              child: Text(value.name),
            ),
        ],
        onChanged: (value) => setState(() => selectedExpire = value),
        value: selectedExpire,
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(selectedExpire);
          },
          child: Text(S.of(context).done),
        ),
      ],
    );
  }
}
