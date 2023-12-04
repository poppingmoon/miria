import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/account_settings.dart';
import 'package:miria/providers.dart';

@RoutePage()
class CacheManagementPage extends ConsumerStatefulWidget {
  final Account account;

  const CacheManagementPage({super.key, required this.account});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      CacheManagementPageState();
}

class CacheManagementPageState extends ConsumerState<CacheManagementPage> {
  @override
  void dispose() {
    super.dispose();
  }

  CacheStrategy iCacheStrategy = CacheStrategy.whenTabChange;
  CacheStrategy emojisCacheStrategy = CacheStrategy.whenLaunch;
  CacheStrategy metaCacheStrategy = CacheStrategy.whenOneDay;

  List<DropdownMenuItem<CacheStrategy>> get buildCacheStrategyItems => const [
        DropdownMenuItem(
          value: CacheStrategy.whenTabChange,
          child: Text("タブ切替時に毎回読み込む"),
        ),
        DropdownMenuItem(
          value: CacheStrategy.whenLaunch,
          child: Text("起動時に毎回読み込む"),
        ),
        DropdownMenuItem(
          value: CacheStrategy.whenOneDay,
          child: Text("1日に1回読み込む"),
        ),
      ];
  Future<void> save() async {
    await ref.read(accountSettingsRepositoryProvider).save(
          ref
              .read(accountSettingsRepositoryProvider)
              .fromAccount(widget.account)
              .copyWith(
                iCacheStrategy: iCacheStrategy,
                metaChacheStrategy: metaCacheStrategy,
                emojiCacheStrategy: emojisCacheStrategy,
              ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("キャッシュ管理")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "自分自身の情報（通知などを含みます）",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              DropdownButton(
                items: buildCacheStrategyItems,
                value: iCacheStrategy,
                isExpanded: true,
                onChanged: (value) => setState(() {
                  iCacheStrategy = value!;
                  save();
                }),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "絵文字の情報",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              DropdownButton(
                items: buildCacheStrategyItems,
                value: emojisCacheStrategy,
                isExpanded: true,
                onChanged: (value) => setState(() {
                  emojisCacheStrategy = value!;
                  save();
                }),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "サーバーの情報",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              DropdownButton(
                items: buildCacheStrategyItems,
                value: metaCacheStrategy,
                isExpanded: true,
                onChanged: (value) => setState(() {
                  metaCacheStrategy = value!;
                  save();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
