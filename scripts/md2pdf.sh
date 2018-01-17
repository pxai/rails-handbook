#!/bin/bash
# run from the content
TEXT=
TEMPL=../scripts/
DIST=../dist/

# This wraps lines and adds line number...
#     --listings -H ${TEMPL}listings-setup.tex \

#FILES=${TEXT}prologue.md ${TEXT}level1.md ${TEXT}level7.md
pandoc --template=${TEMPL}plantilla-kdp.latex \
    -V language=spanish -V lang=spanish \
    -V author='Pello Xabier Altadill Izura' -V title='Rails Handbook'\
    -V documentclass=book\
    -S --latex-engine=xelatex  \
    -o ${DIST}rails_handook.pdf  \
    ${TEXT}prologue.md \
    ${TEXT}00.intro/*.md \
            --toc
