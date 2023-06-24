import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/channels_page/channel_search.dart';
import 'package:miria/view/channels_page/channel_trend.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/futurable.dart';

enum FederationChannelsTab {
  search,
  featured;

  String get string {
    return switch (this) {
      FederationChannelsTab.search => "検索",
      FederationChannelsTab.featured => "トレンド",
    };
  }
}

final federationChannelsTabProvider =
    StateProvider.autoDispose<FederationChannelsTab>(
  (ref) => FederationChannelsTab.search,
);

class FederationChannels extends ConsumerWidget {
  const FederationChannels({
    super.key,
    required this.host,
  });

  final String host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountOfContext = AccountScope.of(context);
    final account = (accountOfContext.host == host)
        ? accountOfContext
        : Account.demoAccount(host);
    final selectedTab = ref.watch(federationChannelsTabProvider);

    return AccountScope(
      account: account,
      child: CommonFuture(
        future: ref.read(emojiRepositoryProvider(account)).loadFromSource(),
        complete: (_, __) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return ToggleButtons(
                      constraints: BoxConstraints.expand(
                        width: constraints.maxWidth / 2 -
                            Theme.of(context)
                                    .toggleButtonsTheme
                                    .borderWidth!
                                    .toInt() *
                                2,
                      ),
                      onPressed: (index) => ref
                          .read(federationChannelsTabProvider.notifier)
                          .state = FederationChannelsTab.values[index],
                      isSelected: FederationChannelsTab.values
                          .map((value) => value == selectedTab)
                          .toList(),
                      children: FederationChannelsTab.values
                          .map((value) => Text(value.string))
                          .toList(),
                    );
                  },
                ),
              ),
              if (selectedTab == FederationChannelsTab.search)
                const Expanded(child: ChannelSearch()),
              if (selectedTab == FederationChannelsTab.featured)
                const Expanded(child: ChannelTrend()),
            ],
          ),
        ),
      ),
    );
  }
}
