import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/licenses.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SplashPageState();
}

class SplashPageState extends ConsumerState<SplashPage> {
  static bool _isFirst = true;

  List<String> initialSharingMedias = [];
  String initialSharingText = "";

  Future<void> initialize() async {
    await ref.read(accountRepository).load();
    await ref.read(tabSettingsRepositoryProvider).load();
    await ref.read(accountSettingsRepositoryProvider).load();
    await ref.read(generalSettingsRepositoryProvider).load();

    for (final account in ref.read(accountRepository).account) {
      await ref.read(emojiRepositoryProvider(account)).loadFromLocalCache();
    }

    if (_isFirst) {
      if (Platform.isAndroid || Platform.isIOS) {
        initialSharingMedias = (await ReceiveSharingIntent.getInitialMedia())
            .map((e) => e.path)
            .toList();
        initialSharingText = await ReceiveSharingIntent.getInitialText() ?? "";
      }

      LicenseRegistry.addLicense(
        () => Stream.fromIterable(miriaInheritedLicenses),
      );
    }

    _isFirst = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final isSigned = ref.read(accountRepository).account.isNotEmpty;
            final hasTabSetting =
                ref.read(tabSettingsRepositoryProvider).tabSettings.isNotEmpty;

            if (isSigned && hasTabSetting) {
              context.replaceRoute(TimelineRoute());
              if (initialSharingMedias.isNotEmpty ||
                  initialSharingText.isNotEmpty) {
                final accounts = ref.read(accountRepository).account;
                if (accounts.length == 1) {
                  context.pushRoute(
                    NoteCreateRoute(
                      initialMediaFiles: initialSharingMedias,
                      initialText: initialSharingText,
                      initialAccount: accounts.first,
                    ),
                  );
                } else {
                  context.pushRoute(
                    SharingAccountSelectRoute(
                      filePath: initialSharingMedias,
                      sharingText: initialSharingText,
                    ),
                  );
                }
              }
            } else if (isSigned && !hasTabSetting) {
              // KeyChainに保存したデータだけアンインストールしても残るので
              // この状況が発生する
              Future(() async {
                final accounts = ref.read(accountRepository).account.toList();
                for (final account in accounts) {
                  await ref.read(accountRepository).remove(account);
                }
                if (!mounted) return;

                context.replaceRoute(const LoginRoute());
              });
            } else {
              context.replaceRoute(const LoginRoute());
            }
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
