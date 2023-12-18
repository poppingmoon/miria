import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/mfm_text.dart';

@RoutePage()
class HelpPage extends ConsumerStatefulWidget {
  const HelpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HelpPageState();
}

class HelpPageState extends ConsumerState<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).help)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: AccountScope(
            account: Account.demoAccount("", null),
            child: MfmText(
              mfmText: '''
\$[x2 ${S.of(context).howToUseMultipleAccounts}]

**○${S.of(context).howToOpenTimelinesWithAnotherAccount}**
${S.of(context).howToOpenTimelinesWithAnotherAccountDescription}

**○${S.of(context).howToCreateNoteFromAnotherAccount}**
${S.of(context).howToCreateNoteFromAnotherAccountDescription}

\$[x2 ${S.of(context).miscellaneous}]

${S.of(context).faqLink("https://github.com/shiosyakeyakini-info/miria/wiki/%E3%82%88%E3%81%8F%E3%81%82%E3%82%8B%E8%B3%AA%E5%95%8F")}

**${S.of(context).bugReportAndFeatureRequest}**：[${S.of(context).issueLinkLabel}](https://github.com/shiosyakeyakini-info/miria/issues)

**${S.of(context).supportDeveloper}**：[pixivFANBOX](https://shiosyakeyakini.fanbox.cc)
''',
            ),
          ),
        ),
      ),
    );
  }
}
