
ALL=$(wildcard *.sty *.tex figures/*.svg)
PAPER=main.tex
SUPPLEMENT=supplement.tex
SHELL=/usr/bin/bash

paper:
	rubber --pdf $(PAPER)

supplement:
	rubber --pdf $(SUPPLEMENT)

clean:
	rubber --clean $(PAPER)
	rubber --clean $(SUPPLEMENT)

#watch:  ## Recompile on any update of LaTeX or SVG sources
#    @while [ 1 ]; do; inotifywait $(ALL); sleep 0.01; make all; done
