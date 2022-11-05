.PHONY: puml pdf

puml:
	plantuml -o ../images/ puml/*.puml

pdf:
	rm -f report.aux report.log report.out report.toc
	lualatex report.tex
	lualatex report.tex
	lualatex report.tex
	rm -f report.aux report.log report.out report.toc
