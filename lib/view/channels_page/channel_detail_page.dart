import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/channels_page/channel_detail_info.dart';
import 'package:miria/view/channels_page/channel_highlight.dart';
import 'package:miria/view/channels_page/channel_timeline.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:misskey_dart/misskey_dart.dart';

@RoutePage()
class ChannelDetailPage extends ConsumerWidget {
  final Account account;
  final String channelId;

  const ChannelDetailPage({
    super.key,
    required this.account,
    required this.channelId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: AccountScope(
        account: account,
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).channel),
            bottom: TabBar(
              tabs: [
                Tab(text: S.of(context).channelInformation),
                Tab(text: S.of(context).timeline),
                Tab(text: S.of(context).highlight),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ChannelDetailInfo(channelId: channelId),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ChannelTimeline(channelId: channelId),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ChannelHighlight(channelId: channelId),
              ),
            ],
          ),
          floatingActionButton: account.hasToken
              ? FloatingActionButton(
                  child: const Icon(Icons.edit),
                  onPressed: () async {
                    final communityChannel = await ref
                        .read(misskeyProvider(account))
                        .channels
                        .show(ChannelsShowRequest(channelId: channelId));
                    if (!context.mounted) return;
                    context.pushRoute(
                      NoteCreateRoute(
                        initialAccount: account,
                        channel: communityChannel,
                      ),
                    );
                  },
                )
              : null,
        ),
      ),
    );
  }
}
