|  |内容 | 
|:-----------:|:------------:|
| アプリケーション名      | review   |
| アプリケーション概要 |お店に対して星をつけてレビューを投稿することができます。そして、他ユーザーが投稿したレビューに対していいねができる機能も実装しました。|
| URL |https://review30561.herokuapp.com/|
| テスト用アカウント  | Email：s@s<br>パスワード：ssssss <br>Email2：d@d<br>パスワード2：dddddd |
| 利用方法   | ショップの相対的な評価が閲覧できます。新規登録、ログインすることで自身でもショップのレビューを投稿できます。そして、他ユーザーが投稿したレビューに対していいねをすることができます。 |
| 目指した課題解決 | お店選びの選択肢に迷っている時、誰かの意見を参考にできるようユーザーがお店の口コミを投稿・シェアができることでお店の相対的な評価が見られるサービスを想定して作成しました。 |
| 洗い出した要件|ユーザー管理・レビュー投稿・レビュー一覧表示・ショップ一覧表示・いいね機能・テスト機能|
| 実装した機能 |<h4>ユーザー管理・ショップ一覧表示機能</h4>![user](https://gyazo.com/776ced402995380baf1a72f193b1502a.gif)ログイン機能、ユーザー認証機能、アクセス制限を設けるためdevise導入。新規登録の際、追加でusernameが必要であるよう実装。フラッシュメッセージとして、サクセスメッセージアラートメッセージ追加。deviseの機能を使いログインの有無でログイン・ログアウト・サインインページへのリンクボタンを状態に応じて表示。<br><br><h4>投稿するレビューを星数で表現できる機能</h4>![star](https://gyazo.com/0ad411169f35f3ba934ef62a12212753.gif)星を選択する際にマウスの動作に合わせて星を選択できるよう実装。<br>レビューの平均値を計算する新たなメソッドを作成し、レビューの平均値をビューに反映。<br><br><h4>レビュー一覧・いいね機能</h4>![favorite](https://gyazo.com/1d6b02beaeef8eca57af78f3f6a7b1bf.gif)いいねの存在の有無を判定するメソッドを作成、そのメソッドを使用しいいねが存在する場合ならいいねを外し、存在しない場合はいいねを付ける条件分岐でビューを実装。<br>いいねがどれだけついているのか表示<br>ログインしていてなおかつ自分のレビュー以外にのみいいねができるよう実装。<br><br><h4>テスト機能</h4>再度アプリケーションの仕様を理解し、クオリティを担保するため単体テストを行いました。<br><br><h4>コードの自動整形機能</h4>コードの品質を担保するためRubocopを使用しコードを解析、整形を行いました。|
| データベース設計|	![ER図](https://gyazo.com/f08ae7eea06ea30a1cb4b2eb28d7ec60.png)|
| ローカルでの動作方法|`% git clone git@github.com:hayashihiroaki/review30561.git`<br>  `%bundle install` <br>`rails db:migrate` <br>`rails db:seed` <br>ruby: 2.6.5 <br>rails: 5.2.4|