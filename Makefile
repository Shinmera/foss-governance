LATEX = lualatex
BIBTEX = biber
MAKE = make
OUTPUT = DigiSus-ETH-2016-Gruppe-10-Bericht
TEX = $(wildcard *.tex)
BIB = $(wildcard *.bib)

all:
	$(MAKE) tex
	$(MAKE) bib
	$(MAKE) tex

tex: $(TEX) $(BIB) $(OUTPUT).bbl
	$(LATEX) --jobname=$(OUTPUT) foss-governance.tex

bib: $(OUTPUT).bcf
	$(BIBTEX) $(OUTPUT)
