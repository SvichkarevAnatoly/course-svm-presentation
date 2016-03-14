SHELL := /bin/bash

texfile=svm
include=main

read:	pdf clean
	evince ${texfile}.pdf &
	
pdf:	${texfile}.tex
	pdflatex ${texfile}.tex

clean:
	rm -f ${texfile}.{ps,log,aux,out,dvi,bbl,blg}
	rm -f ${texfile}.{nav,snm,toc,vrb}
	rm -f ${include}.{ps,log,aux,out,dvi,bbl,blg}

cleanall:	clean
	rm -f ${texfile}.pdf
