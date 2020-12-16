# 公立はこだて未来大学・修士論文テンプレートファイル(unicode)
# 利用法ガイド

## 改訂履歴：
- 2019/11/26 初版 作成者：三上貞芳

## 論文作成の手順

1. 以下のtexファイルを作成してください
- cover.tex           氏名・タイトル等の表紙情報
- eabstract.tex       英語アブストラクト
- jabstract.tex       日本語アブストラクト
- chapterX.tex        本文第X章
- publications.tex    発表・採録等の実績（確定分も含む）
- acknowledgment.tex  謝辞
- bibliography.tex    参考文献

2. main.texの「TODO: 本文」以下に，作成した章に対応する\input{chapterX.tex}文を追記してください(Xは章番号)

3. main.texとfunstyle_master.texと合わせてuplatex環境でコンパイルし，PDFを作成します．