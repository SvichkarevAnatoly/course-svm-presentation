SHELL := /bin/bash

texfile=svm

read:	pdf clean_tmp
	evince ${texfile}.pdf &
	
pdf:	${texfile}.tex
	pdflatex ${texfile}.tex

clean_tmp:
	rm -f ${texfile}.{ps,log,aux,out,dvi,bbl,blg}

clean:	clean_tmp
	rm -f ${texfile}.{pdf}
