## to convert your jped pictures to eps
convert essec.jpg essec.eps
## use kile to parse your file
sudo latex Maineconometrie.tex
## don't go for latexpdf : it will take the EPS figures
sudo dvips -o Maineconometry.ps Maineconometry.dvi 
sudo ps2pdf Maineconometry.ps Maineconometry.pdf 
sudo xpdf Maineconometrie.pdf


# editing the pdf
sudo kile article_sduey_iswag_02_06_2014.tex
sudo dvips Maineconometry.dvi
sudo ps2pdf Maineconometry.ps
sudo latex Maineconometry.tex
