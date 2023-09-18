import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/view/antenna_page/antenna_notes.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:misskey_dart/misskey_dart.dart';

@RoutePage()
class AntennaNotesPage extends ConsumerWidget {
  final Antenna antenna;
  final Account account;

  const AntennaNotesPage({
    super.key,
    required this.antenna,
    required this.account,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AccountScope(
      account: account,
      child: Scaffold(
        appBar: AppBar(
          title: Text(antenna.name),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: AntennaNotes(
            antennaId: antenna.id,
          ),
        ),
      ),
    );
  }
}
