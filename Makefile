script: script.pdf

handout: slides.pdf
	 - mkdir pages
	 pdftk slides.pdf burst output pages/page%d.pdf

script.pdf: script.tex handout
	xelatex script.tex

clean:
	rm *.log *.aux *.nav *.snm *.toc _*.tex *.out *.dvi doc_data.txt
