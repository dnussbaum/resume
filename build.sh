# Remove old files
rm *.pdf

# Generate PDFs
cd src
xelatex resume.tex resume.pdf
mv resume.pdf ../Daniel\ Nussbaum\ Resume.pdf
cd ..

# Make a copy with dashes instead of spaces
cp Daniel\ Nussbaum\ Resume.pdf daniel-nussbaum-resume.pdf
