namespace :bloodstone do
  desc "select sql adapter and setup blog, options(mysql, postgresql, sqlite3), default is mysql"
  task :setup_blog do
    ENV['db'] ||= 'mysql'
    cp (Rails.root + "config/database.yml.#{ENV['db']}.example"), (Rails.root + "config/database.yml")
    cp (Rails.root + "config/settings.yml.example"), (Rails.root + "config/settings.yml")
    puts 'setup success! please modify config/database.yml and config/settings.yml'
  end

  desc "setup sitemap generate and whenever cron job"
  task :setup_tools do
    robots = <<EOF
User-agent: *
Allow: /
Sitemap: #{Settings.site_url}/sitemap_index.xml.gz
EOF
    sh "echo '#{robots}' > #{Rails.root + "public/robots.txt"} "
    sh "whenever . --set environment=#{Rails.env}"
  end

  desc 'make somebody as admin, eg: bloodstone:setup_admin username=zool'
  task :setup_admin, :needs => :environment  do
    raise 'miss username, eg: bloodstone:setup_admin username=zool' unless ENV['username']
    user = User.find_by_username ENV['username']
    raise 'user not exist' unless user
    user.add_role 'admin'
    user.save
    puts "add #{ENV['username']} as admin success!"
  end
end