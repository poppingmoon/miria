import 'package:flutter_test/flutter_test.dart';
import 'package:miria/model/tab_type.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:mockito/mockito.dart';
import '../../test_util/test_datas.dart';
import 'timeline_page_test_util.dart';

void main() {
  group("ローカルタイムライン", () {
    testWidgets("ローカルタイムラインを表示できること", (tester) async {
      final timelineTester = TimelinePageTest(tabType: TabType.localTimeline);
      when(
        timelineTester.mockMisskey.localTimelineStream(
          parameter: anyNamed("parameter"),
          onNoteReceived: anyNamed("onNoteReceived"),
          onReacted: anyNamed("onReacted"),
          onUnreacted: anyNamed("onUnreacted"),
          onDeleted: anyNamed("onDeleted"),
          onVoted: anyNamed("onVoted"),
          onUpdated: anyNamed("onUpdated"),
        ),
      ).thenReturn(timelineTester.mockSocketController);
      when(timelineTester.mockMisskeyNotes.localTimeline(any))
          .thenAnswer((_) async => [TestData.note1]);

      await tester.pumpWidget(timelineTester.buildWidget());
      await tester.pumpAndSettle(const Duration(seconds: 1));

      verify(
        timelineTester.mockMisskeyNotes.localTimeline(
          argThat(
            equals(
              const NotesLocalTimelineRequest(
                withFiles: false,
                withRenotes: false,
                withReplies: false,
              ),
            ),
          ),
        ),
      );
    });
  });
}
