import 'package:flutter_test/flutter_test.dart';
import 'package:miria/model/tab_type.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:mockito/mockito.dart';
import '../../test_util/mock.mocks.dart';
import '../../test_util/test_datas.dart';
import 'timeline_page_test_util.dart';

void main() {
  group("ロールタイムライン", () {
    testWidgets("ロールタイムラインを表示できること", (tester) async {
      final timelineTester =
          TimelinePageTest(tabType: TabType.roleTimeline, roleId: "abcdefg");
      when(
        timelineTester.mockMisskey.roleTimelineStream(
          roleId: anyNamed("roleId"),
          onNoteReceived: anyNamed("onNoteReceived"),
          onReacted: anyNamed("onReacted"),
          onUnreacted: anyNamed("onUnreacted"),
          onDeleted: anyNamed("onDeleted"),
          onVoted: anyNamed("onVoted"),
          //onUpdated: anyNamed("onUpdated"),
        ),
      ).thenReturn(timelineTester.mockSocketController);
      final mockMisskeyRoles = MockMisskeyRoles();
      when(mockMisskeyRoles.notes(any))
          .thenAnswer((_) async => [TestData.note1]);
      when(timelineTester.mockMisskey.roles).thenReturn(mockMisskeyRoles);

      await tester.pumpWidget(timelineTester.buildWidget());
      await tester.pumpAndSettle(const Duration(seconds: 1));

      verify(
        mockMisskeyRoles.notes(
          argThat(equals(const RolesNotesRequest(roleId: "abcdefg"))),
        ),
      );
    });
  });
}
