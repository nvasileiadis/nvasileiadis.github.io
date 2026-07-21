#!/bin/bash
# Script to generate PDF and DOCX from the CV markdown files
# Generates both the UK and Dutch-audience versions

generate_cv() {
  local source="$1"
  local pdf_name="$2"
  local docx_name="$3"
  local label="$4"

  echo "Generating ${label} PDF via md-to-pdf..."
  npx md-to-pdf "${source}" --basedir .
  local basename=$(basename "${source}" .markdown)
  mv "pages/${basename}.pdf" "assets/${pdf_name}"

  echo "Generating ${label} DOCX via pandoc (requires pandoc installed: brew install pandoc)..."
  if command -v pandoc &> /dev/null; then
      pandoc "${source}" -o "assets/${docx_name}"
      echo "${label} files successfully generated in assets/"
  else
      echo "Warning: Pandoc is not installed. To generate the DOCX file, please install pandoc: 'brew install pandoc'"
  fi
}

# UK CV
generate_cv "pages/cv.markdown" "Nikos_Vasileiadis_CV.pdf" "Nikos_Vasileiadis_CV.docx" "UK CV"

# Dutch-audience CV
generate_cv "pages/cv-dutch.markdown" "Nikos_Vasileiadis_CV_Dutch.pdf" "Nikos_Vasileiadis_CV_Dutch.docx" "Dutch CV"

# Irish-audience CV
generate_cv "pages/cv-irish.markdown" "Nikos_Vasileiadis_CV_Irish.pdf" "Nikos_Vasileiadis_CV_Irish.docx" "Irish CV"

echo ""
echo "All CV files generated in assets/"
