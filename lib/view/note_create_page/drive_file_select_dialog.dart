import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/misskey_notes/network_image.dart';
import 'package:miria/view/common/pushable_listview.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFileSelectDialog extends ConsumerStatefulWidget {
  final Account account;
  const DriveFileSelectDialog({
    super.key,
    required this.account,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      DriveFileSelectDialogState();
}

class DriveFileSelectDialogState extends ConsumerState<DriveFileSelectDialog> {
  final List<DriveFolder> path = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          if (path.isNotEmpty)
            IconButton(
              onPressed: () {
                setState(() {
                  path.removeLast();
                });
              },
              icon: const Icon(Icons.arrow_back),
            ),
          Expanded(child: Text(path.map((e) => e.name).join("/"))),
        ],
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PushableListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                hideIsEmpty: true,
                initializeFuture: () async {
                  final misskey = ref.read(misskeyProvider(widget.account));
                  final response = await misskey.drive.folders.folders(
                    DriveFoldersRequest(
                      folderId: path.isEmpty ? null : path.last.id,
                    ),
                  );
                  return response.toList();
                },
                nextFuture: (lastItem, _) async {
                  final misskey = ref.read(misskeyProvider(widget.account));
                  final response = await misskey.drive.folders.folders(
                    DriveFoldersRequest(
                      untilId: lastItem.id,
                      folderId: path.isEmpty ? null : path.last.id,
                    ),
                  );
                  return response.toList();
                },
                listKey: path.map((e) => e.id).join("/"),
                itemBuilder: (context, item) {
                  return ListTile(
                    leading: const Icon(Icons.folder),
                    title: Text(item.name ?? ""),
                    onTap: () {
                      setState(() {
                        path.add(item);
                      });
                    },
                  );
                },
              ),
              PushableListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                initializeFuture: () async {
                  final misskey = ref.read(misskeyProvider(widget.account));
                  final response = await misskey.drive.files.files(
                    DriveFilesRequest(
                      folderId: path.isEmpty ? null : path.last.id,
                    ),
                  );
                  return response.toList();
                },
                nextFuture: (lastItem, _) async {
                  final misskey = ref.read(misskeyProvider(widget.account));
                  final response = await misskey.drive.files.files(
                    DriveFilesRequest(
                      untilId: lastItem.id,
                      folderId: path.isEmpty ? null : path.last.id,
                    ),
                  );
                  return response.toList();
                },
                listKey: path.map((e) => e.id).join("/"),
                itemBuilder: (context, item) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(item);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: item.thumbnailUrl == null
                                ? Container()
                                : NetworkImageView(
                                    fit: BoxFit.cover,
                                    url: item.thumbnailUrl!,
                                    type: ImageType.imageThumbnail,
                                  ),
                          ),
                          Text(item.name),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
