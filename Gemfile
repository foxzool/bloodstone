#gem 下载来源
source 'http://rubygems.org'

#指定使用rails版本
gem 'rails', '3.0.3'

#数据库
#gem 'pg'
gem 'mysql2'
#gem 'sqlite3-ruby', :require => 'sqlite3'

#用户验证
gem 'devise', '~> 1.2.rc' #版本要大于 1.2.rc

#权限验证
gem 'cancan'

#用户角色设置
gem 'easy_roles'

#设置url可读性好的id格式
gem "friendly_id", "~> 3.1"
gem "to_lang"

#标签设置
gem 'acts-as-taggable-on'

#sitemap生成
gem 'sitemap_generator'

#rest格式生成器
gem 'inherited_resources',       '~> 1.1.2'

#时间扩展
gem 'by_star'

#分页
gem "will_paginate", "~> 3.0.pre2"

#slim模板工具
gem 'slim'
gem 'slim-rails'

#导航条设置
gem 'simple-navigation'

#form生成工具
gem "simple_form"

#markdown解析
gem 'rdiscount'

#代码高亮
gem 'coderay'

#定时任务
gem 'whenever'

#数据库注释
gem "annotate"

#服务端
gem 'unicorn'

#irb增强
gem 'what_methods'
gem 'wirble'
gem 'hirb'

group :development do
  #N+1查询处理
  gem 'bullet'
  gem "rails-erd"
end

group :development, :test do
  gem 'autotest'
  gem 'rspec-rails',   ">= 2.3.1" 
  gem 'steak'
  gem 'capybara'
  gem 'factory_girl'
  gem 'factory_girl_rails' 
  gem 'database_cleaner'
end
