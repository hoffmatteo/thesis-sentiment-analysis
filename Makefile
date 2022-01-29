all: Bachelorarbeit.pdf

targets := $(wildcard Teil*/*.tex) Header/Header.tex Versicherung/Versicherung.tex Literaturverzeichnis/literatur.bib Titelseite/Titelseite.tex Zusammenfassung/Zusammenfassung.tex

Bachelorarbeit.pdf: Bachelorarbeit.tex $(targets)
	pdflatex Bachelorarbeit.tex
	bibtex Bachelorarbeit.aux
	pdflatex Bachelorarbeit.tex
	pdflatex Bachelorarbeit.tex

clean: 
	rm -f *.aux *.bbl *.blg *.dvi *.ilg *.lof *.log *.lot *.nlo *.nls *.pdf *.thm *.toc *~ */*.aux svn-commit*.tmp Appendix/Code.tex
