#简介
中文rails博客程序

#安装

1. 配置数据库

根据需要， 复制config目录里的database.yml，并设置相应用户名密码

2. 开始安装

    bundle install

    rake db:create

    rake db:migrate
    
    rake bloodstone:setup_blog db=mysql (可选项=> mysql, postgresql, sqlite3)
    
3. 配置网站

    编辑config/settings.yml，根据实际情况进行配置。
    
4. 设置系统

    rake bloodstone:setup_tools
    
5. 提升管理员

在页面注册完毕之后, 执行

   RAILS_ENV=production rake bloodstone:setup_admin user=username (username需要提升的用户名)