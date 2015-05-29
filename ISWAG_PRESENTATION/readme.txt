## to convert your jped pictures to eps
convert essec.jpg essec.eps

# editing the pdf
sudo kile article_sduey_iswag_02_06_2014.tex

## for a presentation
sudo latex PRESENTATION_ISWAG.tex
sudo dvips -t landscape PRESENTATION_ISWAG.dvi 
sudo ps2pdf PRESENTATION_ISWAG.ps PRESENTATION_ISWAG.pdf 
sudo xpdf PRESENTATION_ISWAG.pdf 


