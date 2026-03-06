#!/bin/bash
# Script to generate PDF and DOCX from the executive CV markdown

echo "Generating PDF via md-to-pdf..."
npx md-to-pdf pages/cv.markdown --basedir .
mv pages/cv.pdf assets/Nikos_Vasileiadis_CV.pdf

echo "Generating DOCX via pandoc (requires pandoc installed: brew install pandoc)..."
if command -v pandoc &> /dev/null; then
    pandoc pages/cv.markdown -o assets/Nikos_Vasileiadis_CV.docx
    echo "Files successfully generated in assets/"
else
    echo "Warning: Pandoc is not installed. To generate the DOCX file, please install pandoc: 'brew install pandoc'"
fi
