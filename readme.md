# 公立はこだて未来大学・修士論文テンプレートファイル(バグ修正版)

本リポジトリは，テンプレートファイルに以下の問題があったため修正したものです．

- 公式で配布されているテンプレートでは，`funstyle_master.tex` がコメントアウトされて適用されていない．
- `funstyle_master.tex` を適用するといくつかの不備によってコンパイルエラーが発生する．

オリジナルの README は[こちら](./readme.txt)からどうぞ．

## オリジナルファイルから修正を加えた点

- `main.tex`
  - `\input{funstyle_master.tex}` のコメントアウトを解除．
  - `cover.tex` の input 後に `funstyle_master.tex` を input．
  - 参考文献の出力後に `\addcontentsline` を追加．
  - `title.tex` にタイトルページの記述を分割．
- `funstyle_master.tex`
  - 参考文献の設定において，`\addcontentsline` の設定が原因でエラーが発生していたため，`main.tex` に移動．（おそらく設定箇所が適切ではない．）
  - 参考文献の設定において，`\newblock` の定義が原因でエラーが発生したため削除．
  - `pdftitle`,`pdfauthor`, `pdfsubject`, `pdfkeywords` を `cover.tex` から読み込み．
- `acknowledgment.tex`
  - 目次に，「謝辞」を追加．
- `publications.tex`
  - 目次に，「発表・採録実績」を追加．

## コンパイル方法

PC に TeX Live をインストールしてから，以下の手順を選択してコンパイルしてください．

Docker を使用する場合は各自でセットアップしてください．

### with command line

#### bibTeX 無しの場合

```.shell
$ make build
```

#### bibTeX 有りの場合

```.shell
$ make build-with-bib
```

### with VSCode

#### bibTeX 無しの場合の `.vscode/settings.json`

```.json
{
  ...,
  "latex-workshop.latex.recipes": [
    {
      "name": "toolchain",
      "tools": [
        "uplatex2pdf",
        "uplatex2pdf"
      ]
    }
  ],
  ...
}
```

#### bibTeX 有りの場合の `.vscode/settings.json`

```.json
{
  ...,
  "latex-workshop.latex.recipes": [
    {
      "name": "toolchain",
      "tools": [
        "uplatex2pdf",
        "pbibtex",
        "uplatex2pdf",
        "uplatex2pdf"
      ]
    }
  ],
  ...
}
```

#### `.vscode/settings.json` の設定後

1. [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) をインストールする．
2. `main.tex` に input されているファイルを更新すると自動でコンパイルされる．
