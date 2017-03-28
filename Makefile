print-%: ; @echo $*=$($*)

.PHONY: Report.pdf all clean

all: report.pdf

report.pdf: report.tex
	latexmk -dvi- -ps- -pdf -use-make report.tex

clean:
	latexmk -C

