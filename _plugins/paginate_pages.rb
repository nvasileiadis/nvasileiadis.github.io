# frozen_string_literal: true

# Front-matter driven pagination for post listings.
#
# Jekyll 4 ships no pagination of its own. jekyll-paginate only paginates a
# root index.html, and jekyll-paginate-v2 drags in autopages, category and tag
# archives that nothing here uses - so this does the one job /blog/ needs:
#
#   * page 1 keeps its own permalink, front matter and social card
#   * pages 2..n are generated at `paginate_path`, reusing the same layout
#   * every page gets a `paginator` object with the same field names
#     jekyll-paginate uses, so the Liquid stays conventional, plus a
#     `page_paths` array so templates never have to rebuild a URL themselves
#
# Opt in from the source page's front matter:
#
#   paginate: 4                        # posts per page
#   paginate_path: /blog/page:num/     # ":num" is the page number (always >= 2)
#   paginate_title: "Blog (page :num)" # optional; defaults to "<title> - page N"
#
# Generated pages stay indexable but are kept out of the sitemap: every post
# they link to is already listed there under its own URL.

module Jekyll
  # Page 2..n of a paginated listing. Inherits the source page's layout,
  # content and front matter so the pages are identical apart from the list.
  class PaginatedPage < Page
    def initialize(site, source, url, num)
      @site = site
      @base = site.source
      # Point at the real source file so the extension picks the right
      # converter and `path` stays meaningful; `permalink` drives the output.
      @dir  = File.dirname(source.relative_path)
      @name = File.basename(source.relative_path)

      process(@name)

      self.data = Jekyll::Utils.deep_merge_hashes(source.data, {})
      self.content = source.content

      data["permalink"] = url
      data["sitemap"]   = false
      data["title"]     = paginated_title(source, num)
      # Guard against the copy paginating itself or re-registering redirects.
      data.delete("paginate")
      data.delete("redirect_from")

      Jekyll::Hooks.trigger :pages, :post_init, self
    end

    private

    def paginated_title(source, num)
      template = source.data["paginate_title"]
      return template.sub(":num", num.to_s) if template

      "#{source.data["title"]} - page #{num}"
    end
  end

  class PaginationGenerator < Generator
    safe true
    priority :low

    def generate(site)
      # Snapshot the list first - we append to site.pages as we go.
      site.pages.select { |page| per_page(page) }.each do |page|
        paginate(site, page)
      end
    end

    private

    def per_page(page)
      count = page.data["paginate"]
      count if count.is_a?(Integer) && count.positive?
    end

    def paginate(site, page)
      size        = per_page(page)
      posts       = site.posts.docs.sort { |a, b| b <=> a } # newest first, as site.posts
      total_pages = [(posts.length / size.to_f).ceil, 1].max
      paths       = (1..total_pages).map { |num| path_for(page, num) }

      (1..total_pages).each do |num|
        target =
          if num == 1
            page
          else
            PaginatedPage.new(site, page, paths[num - 1], num).tap { |p| site.pages << p }
          end

        target.data["paginator"] = paginator(posts, size, num, total_pages, paths)
      end
    end

    # Page 1 lives at the source page's own URL; the rest follow the template.
    def path_for(page, num)
      return page.url if num == 1

      template = page.data["paginate_path"] || File.join(page.url, "page:num/")
      path = template.sub(":num", num.to_s)
      path.end_with?("/") ? path : "#{path}/"
    end

    def paginator(posts, size, num, total_pages, paths)
      {
        "page"               => num,
        "per_page"           => size,
        "posts"              => posts[(num - 1) * size, size] || [],
        "total_posts"        => posts.length,
        "total_pages"        => total_pages,
        "page_paths"         => paths,
        "previous_page"      => (num - 1 if num > 1),
        "previous_page_path" => (paths[num - 2] if num > 1),
        "next_page"          => (num + 1 if num < total_pages),
        "next_page_path"     => (paths[num] if num < total_pages),
      }
    end
  end
end
