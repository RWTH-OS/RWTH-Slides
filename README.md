

RWTH layout for LaTeX beamer
============================

The layout is derived optically from the PowerPoint template provided in the
RWTH intranet [Vorlagencenter](http://www9.rwth-aachen.de/go/id/biyu/). 

For documentation, see the TexDoc [beameruserguide](http://texdoc.net/texmf-dist/doc/latex/beamer/doc/beameruserguide.pdf).

This template contains the following files:

    slides.tex                 - main LaTeX file, contains many examples. Start here.
    beamerthemerwth.sty        - main style file for theme rwth (should not be modified)
    beamerfontthemerwth.sty    - main font style (should not be modified)
    beamercolorthemerwth.sty   - main color theme (should not be modified)
    beamerinnerthemerwth.sty   - main inner theme (should not be modified)
    beamerouterthemerwth.sty   - main outer theme (should not be modified)
    Makefile                   - to generate a PDF on UNIX systems
    logos/logo.pdf             - place holder for the RWTH logo
    pictures/Tux.png           - example for pictures


Tips and tricks
---------------

Use `pdflatex` to generate a PDF file.
For vector graphics, use PDF, bitmaps should be in the PNG or JPG format.
However, best graphical results are obtained with [TikZ](http://texdoc.net/texmf-dist/doc/generic/pgf/pgfmanual.pdf).





