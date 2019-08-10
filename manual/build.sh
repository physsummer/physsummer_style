dir=pdf
mkdir $dir
pdflatex --output-directory $dir manual.tex
cp manual.bib $dir
cd $dir
biber manual
cd ..
pdflatex --output-directory $dir manual.tex
pdflatex --output-directory $dir manual.tex
