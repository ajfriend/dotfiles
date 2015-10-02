$pdf_previewer = "open -a /Applications/Skim.app";

# file extensions to delete when calling `latexmk -c`
$clean_ext = "paux lox pdfsync out bbl synctex.gz spell.txt spell.bad";

#use pdflatex (so we don't need the -pdf flag at the command line)
$pdf_mode = 1;