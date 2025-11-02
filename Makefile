MAIN = IFAC_main
PDF = $(MAIN).pdf
LATEX = pdflatex
BIBTEX = bibtex

AUX_FILES = $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc $(MAIN).lof $(MAIN).lot $(MAIN).bbl $(MAIN).blg $(MAIN).fls $(MAIN).fdb_latexmk $(MAIN).synctex.gz

.PHONY: all
all: $(PDF)

$(PDF): $(MAIN).tex
	@echo "--- 1. LaTeX Compilation Pass (Generating .aux, .toc, etc.) ---"
	$(LATEX) $(MAIN)

	@echo "--- 2. Bibliography Compilation (BibTeX/Biber) ---"
	$(BIBTEX) $(MAIN)

	@echo "--- 3. Second LaTeX Pass (Resolving citations) ---"
	$(LATEX) $(MAIN)

	@echo "--- 4. Third LaTeX Pass (Fixing hyperref links and TOC) ---"
	$(LATEX) $(MAIN)

.PHONY: clean
clean:
	@echo "--- Cleaning auxiliary files ---"
	rm -f $(AUX_FILES)
	rm -f $(PDF)
	
.PHONY: fast
fast: $(MAIN).tex
	@echo "--- Fast Compilation (2 passes) ---"
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)
