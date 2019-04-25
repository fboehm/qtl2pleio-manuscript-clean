RMD_FILE = Rmd/2018-11-17_recla-figures-revised.Rmd

# Tools
LATEXMK = latexmk
RM = rm -f

# Project-specific settings
DOCNAME = overleaf-repo/main

# Targets
all: doc
doc: pdf
pdf: overleaf-repo/main.pdf
fig: R/power-curves.eps Rmd/scatter.eps Rmd/chr8-lods.eps Rmd/coefs.eps Rmd/profile.eps Rmd/genomewide_lod_trait10.eps Rmd/genomewide_lod_trait22.eps overleaf-repo/figs/profile-lod305.eps overleaf-repo/figs/profile-lod63.eps overleaf-repo/figs/profile-lod106.eps overleaf-repo/figs/profile-lod304.eps overleaf-repo/figs/profile-lod190.eps overleaf-repo/figs/profile-lod265.eps overleaf-repo/figs/profile-lod332.eps overleaf-repo/figs/profile-lod385.eps overleaf-repo/figs/profile-lod335.eps


# Rules
%.pdf: %.tex fig
	cd overleaf-repo; $(LATEXMK) -pdfps -bibtex main.tex
mostlyclean:
	cd overleaf-repo; $(LATEXMK) -silent -c
	$(RM) overleaf-repo/*.bbl

clean: mostlyclean
	cd overleaf-repo; $(LATEXMK) -silent -C
	$(RM) overleaf-repo/*.run.xml overleaf-repo/*.synctex.gz
	$(RM) overleaf-repo/*.d

.PHONY: all clean doc mostlyclean pdf

# Include auto-generated dependencies
#-include *.d


R/power-curves.eps: R/plot-power-curves.R
	R CMD BATCH R/plot-power-curves.R

Rmd/scatter.eps: $(RMD_FILE)
	Rscript -e "rmarkdown::render('$<')"

# use latexdiff to get PDF comparing current to an older version
diff:
	latexdiff latexdiff/main_old.tex overleaf-repo/main.tex > latexdiff/diff.tex
	mv latexdiff/diff.tex overleaf-repo
	cd overleaf-repo;$(LATEXMK) -pdfps -bibtex diff.tex
	mv overleaf-repo/diff* latexdiff/
