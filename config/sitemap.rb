SitemapGenerator::Sitemap.default_host = Settings.site_url

SitemapGenerator::Sitemap.add_links do |sitemap|
  sitemap.add posts_path, :priority => 0.7, :changefreq => 'daily'
end