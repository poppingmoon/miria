import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/extensions/date_time_extension.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';
import 'package:miria/view/common/pushable_listview.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:misskey_dart/misskey_dart.dart';

class FederationAnnouncements extends ConsumerStatefulWidget {
  final String host;
  const FederationAnnouncements({
    super.key,
    required this.host,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      FederationAnnouncementsState();
}

class FederationAnnouncementsState
    extends ConsumerState<FederationAnnouncements> {
  var isActive = true;

  @override
  Widget build(BuildContext context) {
    final account = AccountScope.of(context);
    final isCurrentServer = widget.host == AccountScope.of(context).host;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Center(
                child: ToggleButtons(
                  isSelected: [
                    isActive,
                    !isActive,
                  ],
                  onPressed: (value) {
                    setState(() {
                      switch (value) {
                        case 0:
                          isActive = true;
                        case 1:
                          isActive = false;
                      }
                    });
                  },
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("いまの")),
                    Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("前の")),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: PushableListView(
              listKey: isActive,
              initializeFuture: () async {
                final Iterable<AnnouncementsResponse> response;
                final request =
                    AnnouncementsRequest(isActive: isActive, limit: 10);
                if (isCurrentServer) {
                  response = await ref
                      .read(misskeyProvider(account))
                      .announcements(request);
                } else {
                  response =
                      await MisskeyServer().announcements(widget.host, request);
                }
                return response.toList();
              },
              nextFuture: (lastItem, offset) async {
                final Iterable<AnnouncementsResponse> response;
                // 互換性のためにuntilIdとoffsetを両方いれる
                final request = AnnouncementsRequest(
                    untilId: lastItem.id,
                    isActive: isActive,
                    limit: 30,
                    offset: offset);
                if (isCurrentServer) {
                  response = await ref
                      .read(misskeyProvider(account))
                      .announcements(request);
                } else {
                  response =
                      await MisskeyServer().announcements(widget.host, request);
                }
                return response.toList();
              },
              itemBuilder: (context, data) =>
                  Announcement(data: data, host: widget.host)),
        ),
      ],
    );
  }
}

class Announcement extends ConsumerStatefulWidget {
  final AnnouncementsResponse data;
  final String host;

  const Announcement({
    super.key,
    required this.data,
    required this.host,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => AnnouncementState();
}

class AnnouncementState extends ConsumerState<Announcement> {
  late AnnouncementsResponse data;

  @override
  void initState() {
    super.initState();
    data = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    final icon = data.icon;
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (data.forYou == true)
                  Text("あなた宛",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Theme.of(context).primaryColor)),
                Row(
                  children: [
                    if (icon != null) AnnouncementIcon(iconType: icon),
                    Expanded(
                      child: Text(
                        data.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(data.createdAt.format),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                MfmText(
                  mfmText: data.text,
                  host: AccountScope.of(context).host == widget.host
                      ? null
                      : widget.host,
                ),
                if (AccountScope.of(context).host == widget.host &&
                    data.isRead == false)
                  ElevatedButton(
                      onPressed: () async {
                        final account = AccountScope.of(context);
                        if (data.needConfirmationToRead == true) {
                          final isConfirmed = await SimpleConfirmDialog.show(
                              context: context,
                              message: "「${data.title}」の内容ちゃんと読んだか？",
                              primary: "読んだ",
                              secondary: "もうちょい待って");
                          if (isConfirmed != true) return;
                        }

                        await ref
                            .read(misskeyProvider(account))
                            .i
                            .readAnnouncement(IReadAnnouncementRequest(
                                announcementId: data.id));
                        setState(() {
                          data = data.copyWith(isRead: true);
                        });
                      },
                      child: const Text("ほい"))
              ],
            ),
          ),
        ));
  }
}

class AnnouncementIcon extends StatelessWidget {
  final AnnouncementIconType iconType;

  const AnnouncementIcon({
    super.key,
    required this.iconType,
  });

  @override
  Widget build(BuildContext context) {
    switch (iconType) {
      case AnnouncementIconType.info:
        return const Icon(Icons.info);
      case AnnouncementIconType.warning:
        return const Icon(
          Icons.warning,
          color: Colors.yellow,
        );
      case AnnouncementIconType.error:
        return const Icon(Icons.error, color: Colors.red);
      case AnnouncementIconType.success:
        return const Icon(Icons.check, color: Colors.blue);
      default:
        return const SizedBox.shrink();
    }
  }
}
