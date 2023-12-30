import 'package:auto_route/auto_route.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/extensions/users_show_response_extension.dart';
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
          message: "フォロー解除してもええか？",
          primary: "解除する",
          secondary: "やっぱりやめる",
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

  Widget buildContent(UsersShowResponse response) {
    final account = AccountScope.of(context);
    final host = response.host;
    final memo = response.memo;

    return Column(
      children: [
        if (account.hasToken) ...[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    if (response.isRenoteMuted ?? false)
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Renoteのミュート中"),
                        ),
                      ),
                    if (response.isMuted ?? false)
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("ミュート中"),
                        ),
                      ),
                    if (response.isBlocking ?? false)
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("ブロック中"),
                        ),
                      ),
                    if (response.isFollowed ?? false)
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("フォローされています"),
                          ),
                        ),
                      ),
                    if (!isFollowEditing)
                      (response.isFollowing ?? false)
                          ? ElevatedButton(
                              onPressed: followDelete.expectFailure(context),
                              child: const Text("フォロー解除"),
                            )
                          : (response.hasPendingFollowRequestFromYou ?? false)
                              ? ElevatedButton(
                                  onPressed: followRequestCancel
                                      .expectFailure(context),
                                  child: const Text("フォロー許可待ち"),
                                )
                              : OutlinedButton(
                                  onPressed:
                                      followCreate.expectFailure(context),
                                  child: Text(
                                    response.isLocked ? "フォロー申請" : "フォローする",
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
                          label: const Text("更新中"),
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
                  AvatarIcon.fromUserResponse(
                    response,
                    height: 80,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MfmText(
                            mfmText: response.name ?? response.username,
                            style: Theme.of(context).textTheme.headlineSmall,
                            emoji: response.emojis ?? {},
                          ),
                          Text(
                            response.acct,
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
                                : "なんかメモることあったら書いとき",
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
                                userId: response.id,
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
                  for (final role in response.roles ?? <UserRole>[])
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
                        const Row(
                          children: [
                            Icon(Icons.warning_amber_rounded),
                            Text("リモートユーザーのため、情報が不完全です。"),
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
                                "サーバー情報を表示",
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
                                          response.toUser(),
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
                  mfmText: response.description ?? "",
                  emoji: response.emojis ?? {},
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
                      const TableCell(
                        child: Text(
                          "場所",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TableCell(child: Text(response.location ?? "")),
                    ],
                  ),
                  TableRow(
                    children: [
                      const TableCell(
                        child: Text(
                          "登録日",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TableCell(child: Text(response.createdAt.format)), //FIXME
                    ],
                  ),
                  TableRow(
                    children: [
                      const TableCell(
                        child: Text(
                          "誕生日",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TableCell(child: Text(response.birthday?.format ?? "")),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              if (response.fields?.isNotEmpty == true) ...[
                Table(
                  columnWidths: const {
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(3),
                  },
                  children: [
                    for (final field in response.fields ?? <UserField>[])
                      TableRow(
                        children: [
                          TableCell(
                            child: MfmText(
                              mfmText: field.name,
                              emoji: response.emojis ?? {},
                            ),
                          ),
                          TableCell(
                            child: MfmText(
                              mfmText: field.value,
                              emoji: response.emojis ?? {},
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
                        response.notesCount.format(),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "ノート",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () => context.pushRoute(
                      UserFolloweeRoute(userId: response.id, account: account),
                    ),
                    child: Column(
                      children: [
                        Text(
                          response.followingCount.format(),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "フォロー",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => context.pushRoute(
                      UserFollowerRoute(userId: response.id, account: account),
                    ),
                    child: Column(
                      children: [
                        Text(
                          response.followersCount.format(),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "フォロワー",
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
  final UsersShowResponse response;
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
