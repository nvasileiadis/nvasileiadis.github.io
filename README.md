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

## Blog pagination

`/blog/` lists four posts per page. Pagination is handled by
`_plugins/paginate_pages.rb`, a small generator with no gem dependency - page 1
stays at `/blog/`, pages 2..n are generated at `/blog/page/2/` and so on.

Change the page size (or paginate another listing page) from front matter:

```yaml
paginate: 4
paginate_path: /blog/page/:num/
paginate_title: "Blog (page :num) - Nikos Vasileiadis | Engineering Leadership"
```

Generated pages stay indexable but are kept out of `sitemap.xml`, since every
post they link to is already listed there under its own URL.

## Generating PDF and DOCX formatting for CV

To automatically generate the PDF and DOCX versions of the CV from the `cv.markdown` file, use the provided generation script:

```bash
./scripts/generate_cv.sh
```

**Note:**

- PDF generation requires `md-to-pdf` (will be executed via `npx`).
- DOCX generation requires `pandoc` to be installed on your system (`brew install pandoc`).
