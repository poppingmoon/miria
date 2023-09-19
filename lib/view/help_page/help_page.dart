import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';
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
      appBar: AppBar(title: const Text("ヘルプ")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: AccountScope(
            account: ref.read(accountRepository).account.first,
            child: Column(
              children: [
                MfmText(mfmText: '''
\$[x3 MiriaのHowTo]
\$[x2 ○追加したアカウントのタイムラインを開く方法]
画面左のメニューリストから**設定**⇨**タブ設定**を開き、画面右上の**+**ボタンを押して、追加したいタブを設定することができます。
\$[x2 ○別のアカウントから投稿する方法]
ノートを投稿したいアカウントのタブを開き、画面下の入力窓や右下の**>**ボタンを押して開いたノートの投稿画面から投稿することができます。
\$[x2 ○リアクションデッキを編集・インポートする方法]
画面左のメニューリストから、リアクションデッキを編集したいアカウントの設定（**<ユーザー名>の設定**）⇨**リアクションデッキ**から編集することができます。
**+**ボタンからカスタム絵文字の追加、表示されているカスタム絵文字をタップして絵文字の削除が可能です。
また、右上のメニューボタンから**一括追加**を選択すると、ウェブクライアントのリアクションデッキをインポートできます。
\$[x2 ○サーバーからのお知らせを確認する方法]
HTL,LTL,STL,GTLにおいて、画面右上の📢ボタンから、サーバーからのお知らせを確認することができます。
\$[x2 ○サーバーの広告を閲覧する方法]
HTL,LTL,STL,GTLにおいて、画面右上の🤖⇨**>**⇨**広告**から、サーバーの広告を閲覧することができます。
\$[x2 ○文字の大きさを変える方法]
画面左のメニューリストから、**設定**⇨**全般設定**⇨**フォントサイズ**から変更できます。

\$[x3 Miriaでできないこと]
\$[x2 ○カスタムCSSや拡張機能の追加]
MiriaはFlutterを使い、独自の方法で作成したMFMの描画システムを使用しているため、ウェブ技術を使用したカスタムCSSなどは使用することができません。
\$[x2 ○システムの言語を標準語に切り替えること]
現在のMiriaは関西弁以外の言語はサポートされていません。今後、多言語対応をするときに標準語へ切り替えられるようになるかもしれません。
\$[x2 ○FirefishなどのMisskey派生やMastodonなど、他のSNSのサポート]
MisskeyとAPIのレスポンス形式が大きくことなるものについては、現在対応する予定はありません。

\$[x3 その他]
\$[x2 ○画面右上のblobcatは何？]
かわいいね。
                '''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
