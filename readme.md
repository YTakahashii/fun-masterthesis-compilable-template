# 公立はこだて未来大学・修士論文テンプレートファイル(unicode)

# 利用法ガイド

## 改訂履歴：

- 2019/11/26 初版 作成者：三上貞芳
- 2020/12/12 修正版 作成者：髙橋佑太
  - `funstyle_master.tex` を適用するとエラーが発生したため，下記のファイルを修正した．
    - `funstyle_master.tex`
      - `pdfkeywords` で使用されている `\ekeywords` が使用できないため，テキストに修正した．
      - 参考文献の設定において，`\addcontentsline` の設定が原因でエラーが発生していたため，`main.tex` に移動した．
      - 参考文献の設定において，`\newblock` の定義が原因でエラーが発生したため，削除した．
    - `main.tex`
      - 参考文献の出力後に `\addcontentsline` を追加した．

## 論文作成の手順

1. 以下の tex ファイルを作成してください

- cover.tex 氏名・タイトル等の表紙情報
- eabstract.tex 英語アブストラクト
- jabstract.tex 日本語アブストラクト
- chapterX.tex 本文第 X 章
- publications.tex 発表・採録等の実績（確定分も含む）
- acknowledgment.tex 謝辞
- bibliography.tex 参考文献

2. main.tex の「TODO: 本文」以下に，作成した章に対応する\input{chapterX.tex}文を追記してください(X は章番号)

3. main.tex と funstyle_master.tex と合わせて uplatex 環境でコンパイルし，PDF を作成します．
