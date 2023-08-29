import 'package:miria/repository/timeline_repository.dart';
import 'package:misskey_dart/misskey_dart.dart';

class GlobalTimelineRepository extends TimelineRepository {
  SocketController? socketController;

  final Misskey misskey;

  GlobalTimelineRepository(
    this.misskey,
    super.noteRepository,
    super.globalNotificationRepository,
    super.generalSettingsRepository,
    super.tabSetting,
  );

  @override
  void startTimeline() {
    socketController = misskey.globalTimelineStream(
      onNoteReceived: (note) {
        newerNotes.add(note);

        notifyListeners();
      },
    );
    misskey.startStreaming();
  }

  @override
  void disconnect() {
    socketController?.disconnect();
  }

  @override
  void reconnect() {
    super.reconnect();
    socketController?.reconnect();
  }

  @override
  void dispose() {
    super.dispose();
    socketController?.disconnect();
    socketController = null;
  }
}
