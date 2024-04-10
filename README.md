# print form without showing dialog
v20 ではForm コマンドが印刷コンテキストにおいてもサポートされるようになりました。
この例題では、テーブルのデータを、ダイアログを表示せずにフォームに印刷する方法を紹介しています。
印刷そのものはv19以前でも可能ですが、Form コマンドが印刷コンテキストで使用できないのでこの例題では空のデータが表示されます。

## 概要
PDF印刷は以前から4Dで可能ですが、普通にフォームをPDF印刷した場合にはファイルの箇所と名前を指定するダイアログが表示されます。
大量の印刷をしたい場合にはこれはあまり現実的ではありません。
ここではそう言った場合のためにダイアログを表示せずにPDF印刷する方法を紹介しています。

注意すべきことは、PDF印刷はv19以前でも可能ですが、印刷コンテキストでFormコマンドが使用できないのでデータが印刷されないことです。(フォームの入力の枠は印刷されます)

## 例題
このサンプルを開き、「PrintPDF」を実行してみて下さい。