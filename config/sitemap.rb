SitemapGenerator::Sitemap.default_host = Setting.site_url

SitemapGenerator::Sitemap.add_links do |sitemap|

  sitemap.add posts_path, :priority => 0.7, :changefreq => 'daily'
  Post.all.each do |a|
    sitemap.add post_path(a), :lastmod => a.updated_at
  end
end