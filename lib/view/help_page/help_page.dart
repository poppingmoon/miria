import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';
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
      appBar: AppBar(title: const Text("ヘルプ")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: MfmText(mfmText: '''
\$[x2 Miriaで複数アカウント利用するときの使い方]

**○追加したアカウントのタイムラインを開く方法**
画面左のメニューリストから**設定**⇨**タブ設定**を開き、画面右上の**「+」**ボタンを押して、追加したいタブを設定することができます。

**○別のアカウントから投稿する方法**
ノートを投稿したいアカウントのタブを開き、画面下の入力窓や右下の**「>」**ボタンを押して開いたノートの投稿画面から投稿することができます。

\$[x2 その他]

上記のこと以外の内容については、**[MiriaのつかいかたWikiの「よくある質問」](https://github.com/shiosyakeyakini-info/miria/wiki/%E3%82%88%E3%81%8F%E3%81%82%E3%82%8B%E8%B3%AA%E5%95%8F)**で紹介しています（github.comを開きます）。

**バグの報告・機能要望**：[MiriaのGitHubリポジトリのIssue](https://github.com/shiosyakeyakini-info/miria/issues)

**開発者への支援**：[pixivFANBOX](https://shiosyakeyakini.fanbox.cc)
            '''),
        ),
      ),
    );
  }
}
