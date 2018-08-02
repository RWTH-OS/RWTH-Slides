

#OUTPUT=slides AND handout

CLEAN_FILES=*.aux *.log *.nav *.out *.snm *.toc *.vrb *.auxlock *.synctex.gz *.fls *.fdb_latexmk

.PHONY : default quick clean distclean

default : slides.pdf handout.pdf

slides.pdf : slides.tex
	#$(MAKE) -C pictures
	pdflatex slides
	pdflatex slides

handout.pdf : slides.tex
	pdflatex  --jobname=handout '\PassOptionsToClass{handout}{beamer} \input{slides}'
	pdflatex  --jobname=handout '\PassOptionsToClass{handout}{beamer} \input{slides}'

quick :
	pdflatex slides

clean :
	-latexmk -c
	-rm -vf $(CLEAN_FILES)
	-find . -type f -name "*-eps-converted-to.pdf" -delete

distclean: clean
	-touch handout.tex
	-latexmk -C
	-@rm -f handout.tex
	-rm -vf {slides,handout}.pdf

rebuild: distclean default clean

