build-with-bib: # bibTeX有り
	ptex2pdf -l -u -ot "-kanji=utf8 -synctex=1 -interaction=nonstopmode" main.tex; \
	pbibtex "-kanji=utf8" main.tex; \
	ptex2pdf -l -u -ot "-kanji=utf8 -synctex=1 -interaction=nonstopmode" main.tex; \
	ptex2pdf -l -u -ot "-kanji=utf8 -synctex=1 -interaction=nonstopmode" main.tex; \

build: # bibTeX無し
	ptex2pdf -l -u -ot "-kanji=utf8 -synctex=1 -interaction=nonstopmode" main.tex; \
	ptex2pdf -l -u -ot "-kanji=utf8 -synctex=1 -interaction=nonstopmode" main.tex; \
