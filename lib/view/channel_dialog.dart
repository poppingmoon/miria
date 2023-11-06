import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/view/channels_page/channel_detail_info.dart';
import 'package:miria/view/common/account_scope.dart';

class ChannelDialog extends ConsumerWidget {
  final String channelId;
  final Account account;
  const ChannelDialog({
    super.key,
    required this.channelId,
    required this.account,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AccountScope(
      account: account,
      child: AlertDialog(
        titlePadding: EdgeInsets.zero,
        title: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
          child: const Text(
            "チャンネル情報",
            style: TextStyle(color: Colors.white),
          ),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            child: ChannelDetailInfo(
              channelId: channelId,
            ),
          ),
        ),
      ),
    );
  }
}
