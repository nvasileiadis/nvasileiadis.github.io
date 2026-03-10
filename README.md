# nvasileiadis.github.io

This repository contains the source code for Nikos Vasileiadis's personal website and executive CV, built with Jekyll.

## Local Development

To run the Jekyll server locally with live reload:

```bash
bundle exec jekyll serve --livereload
```

The site will be available at `http://localhost:4000`.

## Building the Site

To build the site for production/deployment without running a local server:

```bash
bundle exec jekyll build
```

This command generates the static files in the `_site` directory.

## Generating PDF and DOCX formatting for CV

To automatically generate the PDF and DOCX versions of the CV from the `cv.markdown` file, use the provided generation script:

```bash
./scripts/generate_cv.sh
```

**Note:**

- PDF generation requires `md-to-pdf` (will be executed via `npx`).
- DOCX generation requires `pandoc` to be installed on your system (`brew install pandoc`).
