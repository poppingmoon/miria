import 'package:auto_route/auto_route.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/extensions/user_extension.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/avatar_icon.dart';
import 'package:miria/view/common/constants.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';
import 'package:miria/view/common/misskey_notes/misskey_note.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:miria/view/themes/app_theme.dart';
import 'package:miria/view/user_page/update_memo_dialog.dart';
import 'package:miria/view/user_page/user_control_dialog.dart';
import 'package:misskey_dart/misskey_dart.dart';

class UserDetail extends ConsumerStatefulWidget {
  final Account account;
  final Account? controlAccount;
  final UserDetailed response;

  const UserDetail({
    super.key,
    required this.response,
    required this.account,
    required this.controlAccount,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => UserDetailState();
}

class UserDetailState extends ConsumerState<UserDetail> {
  late UserDetailed response;
  bool isFollowEditing = false;
  String memo = "";

  Future<void> followCreate() async {
    if (isFollowEditing) return;

    final user = response;
    if (user is! UserDetailedNotMeWithRelations) {
      return;
    }

    if (ref.read(generalSettingsRepositoryProvider).settings.isChicken) {
      final result = await SimpleConfirmDialog.show(
        context: context,
        message: "フォローしてもええか？",
        primary: "する",
        secondary: "やっぱりやめる",
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
          .read(misskeyProvider(AccountScope.of(context)))
          .following
          .create(FollowingCreateRequest(userId: user.id));
      if (!mounted) return;
      final requiresFollowRequest = user.isLocked && !user.isFollowed;
      setState(() {
        isFollowEditing = false;
        response = user.copyWith(
          isFollowing: !requiresFollowRequest,
          hasPendingFollowRequestFromYou: requiresFollowRequest,
        );
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

    final user = response;
    if (user is! UserDetailedNotMeWithRelations) {
      return;
    }

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
          .read(misskeyProvider(account))
          .following
          .delete(FollowingDeleteRequest(userId: user.id));
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
        response = user.copyWith(isFollowing: false);
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

    final user = response;
    if (user is! UserDetailedNotMeWithRelations) {
      return;
    }

    setState(() {
      isFollowEditing = true;
    });
    try {
      await ref
          .read(misskeyProvider(AccountScope.of(context)))
          .following
          .requests
          .cancel(FollowingRequestsCancelRequest(userId: user.id));
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
        response = user.copyWith(hasPendingFollowRequestFromYou: false);
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        isFollowEditing = false;
      });
      rethrow;
    }
  }

  Future<void> userControl() async {
    final result = await showModalBottomSheet<UserControl?>(
      context: context,
      builder: (context) => UserControlDialog(
        account: widget.account,
        response: response,
      ),
    );
    if (result == null) return;

    final user = response;
    if (user is! UserDetailedNotMeWithRelations) {
      return;
    }

    switch (result) {
      case UserControl.createMute:
        setState(() {
          response = user.copyWith(isMuted: true);
        });
      case UserControl.deleteMute:
        setState(() {
          response = user.copyWith(isMuted: false);
        });
      case UserControl.createRenoteMute:
        setState(() {
          response = user.copyWith(isRenoteMuted: true);
        });
      case UserControl.deleteRenoteMute:
        setState(() {
          response = user.copyWith(isRenoteMuted: false);
        });
      case UserControl.createBlock:
        setState(() {
          response = user.copyWith(isBlocking: true);
        });
      case UserControl.deleteBlock:
        setState(() {
          response = user.copyWith(isBlocking: false);
        });
    }
  }

  @override
  void initState() {
    super.initState();
    response = widget.response;
    memo = response.memo ?? "";
  }

  Widget buildContent() {
    final user = response;

    return Column(
      children: [
        if (widget.controlAccount == null)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (user is UserDetailedNotMeWithRelations)
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            if (user.isRenoteMuted)
                              const Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("Renoteのミュート中"),
                                ),
                              ),
                            if (user.isMuted)
                              const Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("ミュート中"),
                                ),
                              ),
                            if (user.isBlocking)
                              const Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("ブロック中"),
                                ),
                              ),
                            if (user.isFollowed)
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
                              if (user.isFollowing)
                                ElevatedButton(
                                  onPressed:
                                      followDelete.expectFailure(context),
                                  child: const Text("フォロー解除"),
                                )
                              else if (user.hasPendingFollowRequestFromYou)
                                ElevatedButton(
                                  onPressed: followRequestCancel
                                      .expectFailure(context),
                                  child: const Text("フォロー許可待ち"),
                                )
                              else
                                OutlinedButton(
                                  onPressed:
                                      followCreate.expectFailure(context),
                                  child: Text(
                                    user.isLocked ? "フォロー申請" : "フォローする",
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
                  )
                else
                  const Spacer(),
                Align(
                  child: IconButton(
                    onPressed: userControl,
                    icon: const Icon(Icons.more_vert),
                  ),
                ),
              ],
            ),
          ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
          child: Column(
            children: [
              Row(
                children: [
                  AvatarIcon(
                    user: response,
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
                            emoji: response.emojis,
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
              if (widget.controlAccount == null)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            memo.isNotEmpty ? memo : "なんかメモることあったら書いとき",
                            style: memo.isNotEmpty
                                ? null
                                : Theme.of(context)
                                    .inputDecorationTheme
                                    .hintStyle,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final result = await showDialog<String>(
                              context: context,
                              builder: (context) => UpdateMemoDialog(
                                account: widget.account,
                                initialMemo: memo,
                                userId: response.id,
                              ),
                            );
                            if (result != null) {
                              setState(() {
                                memo = result;
                              });
                            }
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
              if (response.host != null)
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
                        GestureDetector(
                          onTap: () => context.pushRoute(
                            FederationRoute(
                              account: AccountScope.of(context),
                              host: response.host!,
                            ),
                          ),
                          child: Text(
                            "サーバー情報を表示",
                            style: AppTheme.of(context).linkStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Align(
                child: MfmText(
                  mfmText: response.description ?? "",
                  emoji: response.emojis,
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
                              emoji: response.emojis,
                            ),
                          ),
                          TableCell(
                            child: MfmText(
                              mfmText: field.value,
                              emoji: response.emojis,
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
                  if (widget.response.isFfVisibleForMe) ...[
                    InkWell(
                      onTap: () => context.pushRoute(
                        UserFolloweeRoute(
                          userId: response.id,
                          account: AccountScope.of(context),
                        ),
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
                        UserFollowerRoute(
                          userId: response.id,
                          account: AccountScope.of(context),
                        ),
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
    return BirthdayConfetti(
      response: widget.response,
      child: Column(
        children: [
          if (response.bannerUrl != null)
            Image.network(response.bannerUrl.toString()),
          Align(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: buildContent(),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for (final note in response.pinnedNotes ?? <Note>[])
                  MisskeyNote(
                    note: note,
                    loginAs: widget.controlAccount,
                  ),
              ],
            ),
          ),
        ],
      ),
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
