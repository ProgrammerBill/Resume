#!/bin/bash

out_dir="output"
pandoc -f markdown -o ${out_dir}/resume.pdf  demo.md  --smart --template=templates/resume-template.latex --latex-engine=xelatex || exit 1
zathura ${out_dir}/resume.pdf 2>/dev/null 
if [ $? -ne 0 ];then
	evince 	${out_dir}/resume.pdf 2>/dev/null
fi

