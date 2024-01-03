import 'package:auto_route/auto_route.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/extensions/user_extension.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/avatar_icon.dart';
import 'package:miria/view/common/constants.dart';
import 'package:miria/view/common/error_detail.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';
import 'package:miria/view/common/misskey_notes/misskey_note.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:miria/view/themes/app_theme.dart';
import 'package:miria/view/user_page/update_memo_dialog.dart';
import 'package:misskey_dart/misskey_dart.dart';

class UserDetail extends ConsumerStatefulWidget {
  final String userId;

  const UserDetail({super.key, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => UserDetailState();
}

class UserDetailState extends ConsumerState<UserDetail> {
  bool isFollowEditing = false;

  Future<void> followCreate() async {
    if (isFollowEditing) return;

    if (ref.read(generalSettingsRepositoryProvider).settings.isChicken) {
      final result = await SimpleConfirmDialog.show(
        context: context,
        message: S.of(context).confirmCreateFollow,
        primary: S.of(context).createFollow,
        secondary: S.of(context).cancel,
      );
      if (!(result ?? false)) {
        return;
      }
    }
    if (!mounted) return;
    setState(() {
      isFollowEditing = true;
    });
    try {
      await ref
          .read(
            userDetailedNotifierProvider(
              (AccountScope.of(context), widget.userId),
            ).notifier,
          )
          .createFollow();
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
      rethrow;
    }
  }

  Future<void> followDelete() async {
    if (isFollowEditing) return;

    final account = AccountScope.of(context);
    if (await SimpleConfirmDialog.show(
          context: context,
          message: S.of(context).confirmUnfollow,
          primary: S.of(context).deleteFollow,
          secondary: S.of(context).cancel,
        ) !=
        true) {
      return;
    }
    setState(() {
      isFollowEditing = true;
    });
    try {
      await ref
          .read(
            userDetailedNotifierProvider(
              (account, widget.userId),
            ).notifier,
          )
          .deleteFollow();
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
      rethrow;
    }
  }

  Future<void> followRequestCancel() async {
    if (isFollowEditing) return;

    setState(() {
      isFollowEditing = true;
    });
    try {
      await ref
          .read(
            userDetailedNotifierProvider(
              (AccountScope.of(context), widget.userId),
            ).notifier,
          )
          .cancelFollowRequest();
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
      rethrow;
    }
  }

  Widget buildContent(UserDetailed user) {
    final account = AccountScope.of(context);
    final host = user.host;
    final memo = user.memo;

    return Column(
      children: [
        if (user is UserDetailedNotMeWithRelations) ...[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    if (user.isRenoteMuted)
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(S.of(context).renoteMuting),
                        ),
                      ),
                    if (user.isMuted)
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(S.of(context).muting),
                        ),
                      ),
                    if (user.isBlocking)
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(S.of(context).blocking),
                        ),
                      ),
                    if (user.isFollowed)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(S.of(context).followed),
                          ),
                        ),
                      ),
                    if (!isFollowEditing)
                      if (user.isFollowing)
                        ElevatedButton(
                          onPressed: followDelete.expectFailure(context),
                          child: Text(S.of(context).unfollow),
                        )
                      else if (user.hasPendingFollowRequestFromYou)
                        ElevatedButton(
                          onPressed: followRequestCancel.expectFailure(context),
                          child: Text(
                            S.of(context).followRequestPending,
                          ),
                        )
                      else
                        OutlinedButton(
                          onPressed: followCreate.expectFailure(context),
                          child: Text(
                            user.isLocked
                                ? S.of(context).followRequest
                                : S.of(context).createFollow,
                          ),
                        )
                    else
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: SizedBox(
                            width: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize ??
                                22,
                            height: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize ??
                                22,
                            child: const CircularProgressIndicator(),
                          ),
                          label: Text(S.of(context).refreshing),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(),
        ],
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
          child: Column(
            children: [
              Row(
                children: [
                  AvatarIcon(
                    user: user,
                    height: 80,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MfmText(
                            mfmText: user.name ?? user.username,
                            style: Theme.of(context).textTheme.headlineSmall,
                            emoji: user.emojis,
                          ),
                          Text(
                            user.acct,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              if (account.hasToken)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            memo != null && memo.isNotEmpty
                                ? memo
                                : S.of(context).memoDescription,
                            style: memo != null && memo.isNotEmpty
                                ? null
                                : Theme.of(context)
                                    .inputDecorationTheme
                                    .hintStyle,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog<void>(
                              context: context,
                              builder: (context) => UpdateMemoDialog(
                                account: account,
                                initialMemo: memo ?? "",
                                userId: user.id,
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ),
                ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  for (final role in user.roles ?? <UserRole>[])
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).dividerColor),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Text(role.name),
                    ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              if (host != null)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.warning_amber_rounded),
                            Text(S.of(context).remoteUserCaution),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => context.pushRoute(
                                FederationRoute(
                                  account: account,
                                  host: host,
                                ),
                              ),
                              child: Text(
                                S.of(context).showServerInformation,
                                style: AppTheme.of(context).linkStyle,
                              ),
                            ),
                            FutureBuilder(
                              future: Future(() async {
                                // 絵文字を取得することでソフトウェアの判定を行う
                                await ref
                                    .read(
                                      emojiRepositoryProvider(
                                        Account.demoAccount(host, null),
                                      ),
                                    )
                                    .loadFromSourceIfNeed();
                                return true;
                              }),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return TextButton(
                                    onPressed: () => ref
                                        .read(
                                          misskeyNoteNotifierProvider(account)
                                              .notifier,
                                        )
                                        .navigateToUserPage(
                                          context,
                                          user,
                                          Account.demoAccount(host, null),
                                        )
                                        .expectFailure(context),
                                    child: const Text("リモートで表示"),
                                  );
                                } else {
                                  return const SizedBox.shrink();
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              Align(
                child: MfmText(
                  mfmText: user.description ?? "",
                  emoji: user.emojis,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Table(
                columnWidths: const {
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          S.of(context).location,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TableCell(child: Text(user.location ?? "")),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          S.of(context).registeredDate,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TableCell(
                        child: Text(user.createdAt.format(context)),
                      ), //FIXME
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          S.of(context).birthday,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TableCell(
                        child: Text(user.birthday?.format(context) ?? ""),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              if (user.fields?.isNotEmpty == true) ...[
                Table(
                  columnWidths: const {
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(3),
                  },
                  children: [
                    for (final field in user.fields ?? <UserField>[])
                      TableRow(
                        children: [
                          TableCell(
                            child: MfmText(
                              mfmText: field.name,
                              emoji: user.emojis,
                            ),
                          ),
                          TableCell(
                            child: MfmText(
                              mfmText: field.value,
                              emoji: user.emojis,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        user.notesCount.format(),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        S.of(context).note,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  if (user.isFollowingVisibleForMe)
                    InkWell(
                      onTap: () => context.pushRoute(
                        UserFolloweeRoute(
                          userId: user.id,
                          account: AccountScope.of(context),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            user.followingCount.format(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            S.of(context).follow,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  if (user.isFollowersVisibleForMe)
                    InkWell(
                      onTap: () => context.pushRoute(
                        UserFollowerRoute(
                          userId: user.id,
                          account: AccountScope.of(context),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            user.followersCount.format(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            S.of(context).follower,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final account = AccountScope.of(context);
    final user =
        ref.watch(userDetailedNotifierProvider((account, widget.userId)));
    return user.when(
      data: (user) => SingleChildScrollView(
        child: BirthdayConfetti(
          response: user,
          child: Column(
            children: [
              if (user.bannerUrl != null)
                Image.network(user.bannerUrl.toString()),
              Align(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: buildContent(user),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    for (final note in user.pinnedNotes ?? <Note>[])
                      MisskeyNote(note: note),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      error: (e, st) => Center(child: ErrorDetail(error: e, stackTrace: st)),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class BirthdayConfetti extends StatefulWidget {
  final UserDetailed response;
  final Widget child;

  const BirthdayConfetti({
    super.key,
    required this.response,
    required this.child,
  });

  @override
  State<StatefulWidget> createState() => BirthdayConfettiState();
}

class BirthdayConfettiState extends State<BirthdayConfetti> {
  final confettiController = ConfettiController();

  @override
  void initState() {
    super.initState();
    confettiController.play();
  }

  @override
  void dispose() {
    super.dispose();
    confettiController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    if (now.month == widget.response.birthday?.month &&
        now.day == widget.response.birthday?.day) {
      return ConfettiWidget(
        confettiController: confettiController,
        blastDirection: 0,
        numberOfParticles: 40,
        child: widget.child,
      );
    }

    return widget.child;
  }
}
