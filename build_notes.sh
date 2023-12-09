#!/bin/bash -e

#! utility variables & functions for colored terminal output

ansi_esc()      { printf "\033[""$@""m" ; }
ansi_color_fg() { printf "\033[38;5;""$@""m" ; }
ansi_color_bg() { printf "\033[48;5;""$@""m" ; }
# reset text style to default
io_reset="`     ansi_esc 0`"
# set text style
io_bold="`      ansi_esc 1`"
io_underline="` ansi_esc 4`"
# set text color (foreground)
io_red="`       ansi_esc 31`"
io_green="`     ansi_esc 32`"
io_yellow="`    ansi_esc 33`"
io_blue="`      ansi_esc 34`"
io_magenta="`   ansi_esc 35`"
io_cyan="`      ansi_esc 36`"

print_verbose() {
if $verbose; then { printf "%s%s%s%s\n" "$io_blue"   "verbose" "$io_reset: " "$@" ; } >&2 ; fi ; }
print_message() { { printf "%s%s%s%s\n" "$io_blue"   "message" "$io_reset: " "$@" ; } >&2 ; }
print_warning() { { printf "%s%s%s%s\n" "$io_yellow" "warning" "$io_reset: " "$@" ; } >&2 ; }
print_success() { { printf "%s%s%s%s\n" "$io_green"  "success" "$io_reset: " "$@" ; } >&2 ; }
print_failure() { { printf "%s%s%s%s\n" "$io_red"    "failure" "$io_reset: " "$@" ; } >&2 ; }
print_error()   { { printf "%s%s%s%s\n" "$io_red"    "error"   "$io_reset: " "$@" ; } >&2 ; exit 1 ; }



# build config

SRCDIR=src
OUTDIR=build/notes
NAME=Aluffi_AC0_Notes

PDFLATEX=pdflatex
# for macos, uncomment line below
#PDFLATEX=/Library/TeX/texbin/pdflatex

rm  -rf  $OUTDIR



# build latexpdf

mkdir -p $OUTDIR

tex_awk='BEGIN { display = 1; }
{
	if ($0 ~ "^\\\\begin{" lang "}")
	{
		display = 1;
	}
	else if ($0 ~ "^\\\\begin{" regexp "}")
	{
		display = 0;
	}
	else if ($0 ~ "^\\\\end{" regexp "}")
	{
		display = 1;
	}
	else if (display)
	{
		print;
	}
}
'
tex_langs=' en '
tex_langs_regexp='(en)'

#! Uses pandoc to convert source to an output document in a certain format
#! @param $1	output format displayed name
#! @param $2	source filename
#! @param $3	source pandoc format
#! @param $4	output filename
#! @param $5	output pandoc format
build_pandoc()
{
	print_message "Creating $1 document..."
	( cd $OUTDIR/ && pandoc \
		-s "./$2" -f $3 \
		-o "./$4" -t $5 \
		--mathjax \
		--resource-path=$SRCDIR \
		--extract-media=./assets \
	&& print_success           "Created $1 document: $OUTDIR/$4" \
	|| print_failure  "Could not create $1 document: $OUTDIR/$4" )
}

for lang in $tex_langs
do
	print_message "Creating LaTeX document (language:'$lang')..."
	echo "" > $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/include.tex          | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/header.tex           | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/index.tex            | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/Summaries/*.tex      | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/Notes/header.tex     | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/Notes/Notes*.tex     | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/Notes/footer.tex     | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/Lexicon/header.tex   | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/Lexicon/Lexicon*.tex | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
	cat $SRCDIR/footer.tex           | awk -v lang=$lang -v regexp="$tex_langs_regexp" "$tex_awk" >> $OUTDIR/$NAME.$lang.tex
#	echo "\\includecomment{$lang}" >> $OUTDIR/$NAME.$lang.tex
#	for otherlang in $tex_langs
#	do
#		if [ "$otherlang" = "$lang" ]
#		then continue
#		fi
#		echo "\\excludecomment{$otherlang}" >> $OUTDIR/$NAME.$lang.tex
#	done
	print_success "Created LaTeX document: $OUTDIR/$NAME.$lang.tex"

	print_message "Creating PDF document..."
	( cd $OUTDIR/ && $PDFLATEX ./$NAME.$lang.tex -output-directory=./ \
	&& print_success           "Created PDF document: $OUTDIR/$NAME.$lang.pdf" \
	|| print_failure  "Could not create PDF document: $OUTDIR/$NAME.$lang.pdf" )

#	build_pandoc "PDF"        $NAME.$lang.tex latex $NAME.$lang.pdf  pdf
	build_pandoc "HTML5"      $NAME.$lang.tex latex $NAME.$lang.html html
	build_pandoc "Markdown"   $NAME.$lang.tex latex $NAME.$lang.md   markdown
	build_pandoc "man-pages"  $NAME.$lang.tex latex $NAME.$lang.man  man
	build_pandoc "Plain-text" $NAME.$lang.tex latex $NAME.$lang.txt  plain
	build_pandoc "Rich-text"  $NAME.$lang.tex latex $NAME.$lang.rtf  rtf
	build_pandoc "MS Word"    $NAME.$lang.tex latex $NAME.$lang.docx docx
done
