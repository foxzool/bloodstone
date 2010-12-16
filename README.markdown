#安装

1. 配置数据库

根据需要， 复制config目录里的database.yml，并设置相应用户名密码

2. 开始安装

    bundle install

    rake db:create

    rake db:migrate
    
    rake bloodstone:setup_blog db=mysql (可选项=> mysql, postgresql, sqlite3)
    
3. 提升管理员

在页面注册完毕之后, 执行

   RAILS_ENV=production rake bloodstone:setup_admin user=username (username需要提升的用户名)
