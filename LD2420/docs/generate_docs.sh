#!/bin/bash
# (C) 2025 Damian Michna, damian@michna.de 

file_name_base="hlk-ld2420-serial-protocol"
meta_title='LD2420 Serial Protocol'

# create html doc
pandoc -f markdown -t html $file_name_base.md -o $file_name_base.html \
	--metadata title="LD2420 Serial Protocol"\
    --top-level-division=chapter\
    --css=style.css --standalone --embed-resources

# create pdf doc
pandoc -f markdown -t pdf $file_name_base.md -o $file_name_base.pdf \
	--metadata title="LD2420 Serial Protocol"\
    --top-level-division=section\
    --pdf-engine=pdflatex\
	-V geometry:left=3cm,right=3cm,top=2cm,bottom=2cm\
	--toc

