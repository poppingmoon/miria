import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/futable_list_builder.dart';
import 'package:misskey_dart/misskey_dart.dart';

class AntennaList extends ConsumerWidget {
  const AntennaList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureListView<Antenna>(
      future:
          ref.read(misskeyProvider(AccountScope.of(context))).antennas.list(),
      builder: (context, element) {
        return ListTile(
          onTap: () => context.pushRoute(
            AntennaNotesRoute(
              antenna: element,
              account: AccountScope.of(context),
            ),
          ),
          title: Text(element.name),
        );
      },
    );
  }
}
