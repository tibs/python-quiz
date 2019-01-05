# This version of the Makefile assumes that pandoc and (enough of) TeX are
# available.

.PHONY: default
default: html pdf

# We don't try to provide an HTML version of the slides in this version
# - use the PDF produced by 'slides' instead.
.PHONY: html
html:
	rst2html.py README.rst README.html
	rst2html.py python-quiz-slides.rst python-quiz-slides.html
	rst2html.py python-quiz-notes.rst python-quiz-notes.html
	rst2html.py wtf-bits.rst wtf-bits.html

# The available aspect ratio of slides (for beamer only) are 1610 for 16:10,
# 169 for 16:9, 149 for 14:9, 141 for 1.41:1, 54 for 5:4, 43 for 4:3 which is
# the default, and 32 # for 3:2. It's probably enough to go for the following
# pair of resolutions.
# We also make the python-quiz-notes as PDF, because we can and it might be useful.
.PHONY: pdf
pdf: slides
	pandoc python-quiz-notes.rst -o python-quiz-notes.pdf -V papersize:a4
	pandoc wtf-bits.rst -o wtf-bits.pdf -V papersize:a4

.PHONY: slides
slides:
	pandoc python-quiz-slides.rst -t beamer -o python-quiz-slides-4x3.pdf -V aspectratio:43
	pandoc python-quiz-slides.rst -t beamer -o python-quiz-slides-16x9.pdf -V aspectratio:169

.PHONY: 43
43:
	pandoc python-quiz-slides.rst -t beamer -o python-quiz-slides-4x3.pdf -V aspectratio:43
	open python-quiz-slides-4x3.pdf

.PHONY: clean
clean:
	rm -f *.html

.PHONY: help
help:
	@echo 'make         same as: make html pdf'
	@echo 'make pdf     same as: make slides'
	@echo 'make html    create HTML files using rst2html'
	@echo 'make slides  just create python-quiz-slides-[4x3|16x9].pdf'
	@echo 'make clean   delete HTML files'