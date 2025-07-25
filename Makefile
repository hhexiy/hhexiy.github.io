SHELL=/bin/sh

all: website publication.html docs/cv/cv.pdf

website:
	git clone https://github.com/hhexiy/website

publication.html: website-data/pub_data.py website-data/generate_pubs.py
	set -e;\
	cd website-data;\
	python generate_pubs.py > publication.html;\
	cp publication.html ..;
	cp publication.html _includes/;

representative.html: website-data/pub_data.py website-data/generate_pubs.py
	set -e;\
	cd website-data;\
	python generate_pubs.py --selected 1 --no-year > representative.html;\
	cp representative.html ..;
	cp representative.html _includes/;

docs/cv/cv.pdf: docs/cv/cv.tex
	set -e;\
	cd docs/cv;\
	pdflatex cv.tex;

build:
	bundle exec jekyll serve
