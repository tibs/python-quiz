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
	rst2html.py python-quiz-slides-orig.rst python-quiz-slides-orig.html
	rst2html.py python-quiz-notes.rst python-quiz-notes.html

# We also make the python-quiz-notes as PDF, because we can and it might be useful.
.PHONY: pdf
pdf: notes slides

.PHONY: notes
notes:
	pandoc python-quiz-notes.rst -o python-quiz-notes.pdf -V papersize:a4

# The available aspect ratio of slides (for beamer only) are 1610 for 16:10,
# 169 for 16:9, 149 for 14:9, 141 for 1.41:1, 54 for 5:4, 43 for 4:3 which is
# the default, and 32 # for 3:2. It's probably enough to go for the following
# pair of resolutions.
.PHONY: slides
slides:
	pandoc python-quiz-slides.rst -t beamer -o python-quiz-slides-4x3.pdf -V aspectratio:43
	pandoc python-quiz-slides.rst -t beamer -o python-quiz-slides-16x9.pdf -V aspectratio:169

# The "original" slides - this has (probably) all of the slides, but may be
# slightly out-of-date with respect to the slides that are also in the main
# slides file. This is not built by default. We only provide the one aspect
# ratio.
.PHONY: orig
orig:
	pandoc python-quiz-slides-orig.rst -t beamer -o python-quiz-slides-orig-4x3.pdf -V aspectratio:43

# A quick target to use when working on the slides themselves.
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
	@echo 'make slides  just create python-quiz-slides[-short]-[4x3|16x9].pdf'
	@echo 'make clean   delete HTML files'
