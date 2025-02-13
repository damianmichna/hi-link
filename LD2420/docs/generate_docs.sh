#!/bin/bash
# (C) 2025 Damian Michna, damian@michna.de 
# all docs: Creative Commons Attribution-ShareAlike (CC BY-SA 4.0)
# all code: GNU General Public License version 2 (GPLv2)

file_name_base="hlk-ld2420-serial-protocol"
meta_title='LD2420 Serial Protocol'

# I did test with pandoc on ubuntu 24.04 LTS, maybe works on other systems too
# to install: sudo apt install pandoc


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

