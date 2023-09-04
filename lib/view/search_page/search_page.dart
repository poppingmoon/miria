import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/note_search_condition.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/view/search_page/note_search.dart';
import 'package:miria/view/user_select_dialog.dart';

@RoutePage()
class SearchPage extends ConsumerStatefulWidget {
  final NoteSearchCondition? initialNoteSearchCondition;
  final Account account;

  const SearchPage({
    super.key,
    this.initialNoteSearchCondition,
    required this.account,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AccountScope(
        account: widget.account,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("検索"),
            bottom: const TabBar(
              tabs: [
                Tab(text: "ノート"),
                Tab(text: "ユーザー"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              NoteSearch(
                initialCondition: widget.initialNoteSearchCondition,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: UserSelectContent(
                  onSelected: (item) => context.pushRoute(
                    UserRoute(
                      userId: item.id,
                      account: widget.account,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
