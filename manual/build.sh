dir=pdf
file=manual
compiler=pdflatex

mkdir $dir
$compiler --output-directory $dir $file.tex
cp $file.bib $dir
cd $dir
biber $file
cd ..
$compiler --output-directory $dir $file.tex
$compiler --output-directory $dir $file.tex
