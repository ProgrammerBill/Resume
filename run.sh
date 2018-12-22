#!/bin/bash

out_dir="output"
pandoc -f markdown -o ${out_dir}/resume.pdf  demo.md  --smart --template=templates/resume-template.latex --latex-engine=xelatex
