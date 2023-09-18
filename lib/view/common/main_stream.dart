import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';

class MainStream extends ConsumerStatefulWidget {
  const MainStream({required this.child, super.key});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MainStreamState();
}

class MainStreamState extends ConsumerState<MainStream> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    final accounts = ref.watch(accountRepositoryProvider);

    if (isConnected) {
      for (final account in accounts) {
        ref.read(mainStreamRepositoryProvider(account)).reconnect();
      }
    } else {
      for (final account in accounts) {
        ref.read(mainStreamRepositoryProvider(account)).connect();
      }
    }

    return widget.child;
  }
}
