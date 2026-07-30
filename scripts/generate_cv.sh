#!/bin/bash
# Script to generate PDF and DOCX from the CV markdown files
# Generates both the UK and Dutch-audience versions

set -euo pipefail

TMP_FILES=()
cleanup() {
  rm -f ${TMP_FILES[@]+"${TMP_FILES[@]}"}
}
trap cleanup EXIT

# The CV markdown is written for Jekyll, whose kramdown renderer understands the
# icon classes on the section headings and the web-only download bar. Neither
# md-to-pdf (marked) nor pandoc does, so they are normalised to plain markdown
# before conversion — otherwise the classes surface as visible text in the PDF
# and the headings lose their Heading2 style in the DOCX.
prepare_source() {
  local source="$1"
  local target="$2"

  perl -0777 -pe '
    s{^<div class="no-pdf.*?^</div>\n}{}gms;
    s{^<h2 class="[^"]*">(.*?)</h2>}{## $1}gm;
    s!^\{:\s*\.[^\}]*\}\n!!gm;
  ' "${source}" > "${target}"
}

strip_front_matter() {
  local source="$1"
  local target="$2"

  perl -0777 -pe 's{\A---\n.*?\n---\n}{}s' "${source}" > "${target}"
}

generate_cv() {
  local source="$1"
  local pdf_name="$2"
  local docx_name="$3"
  local label="$4"

  local basename=$(basename "${source}" .markdown)
  local pdf_source="pages/.${basename}-pdf.markdown"
  local docx_source="pages/.${basename}-docx.markdown"
  TMP_FILES+=("${pdf_source}" "${docx_source}" "pages/.${basename}-pdf.pdf")

  prepare_source "${source}" "${pdf_source}"
  strip_front_matter "${pdf_source}" "${docx_source}"

  echo "Generating ${label} PDF via md-to-pdf..."
  npx md-to-pdf "${pdf_source}" --basedir .
  mv "pages/.${basename}-pdf.pdf" "assets/${pdf_name}"

  echo "Generating ${label} DOCX via pandoc (requires pandoc installed: brew install pandoc)..."
  if command -v pandoc &> /dev/null; then
      pandoc "${docx_source}" -o "assets/${docx_name}"
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
