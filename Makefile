

#OUTPUT=slides

.PHONY : default quick clean

default : slides.pdf

slides.pdf : slides.tex
	#$(MAKE) -C pictures
	pdflatex slides
	pdflatex slides


quick : 
	pdflatex slides

clean :
	-rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.auxlock

