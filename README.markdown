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
   

#欢迎参与
如果您对开发此产品有兴趣，可以：

1.Fork这里  
2.增加功能或者修正Bug  
3.编写测试相应的测试用例  
4.提交后发送pull request  
4.Fork的commit与bloodstone的commit冲突(即github的forkqueue显示"Will likely not apply cleanly")时，需要手动合并分支  

    git remote add bloodstone git://github.com/zhooul/bloodstone.git
    git pull bloodstone master
    #vim处理冲突的文件...
    git commit -a -m 'merge from shopqi'
    git push origin master
    
点这里查看哪些功能需要开发

http://project.zool.it/projects/bloodstone

bloodstone的代码版本控制遵循git标准化开发流程，详情请参考 http://blog.zool.it/posts/11

#如果有疑问，可以

加我的gtalk直接沟通: zhooul#gmail.com  
发送email: zhooul#gmail.com

#License
MIT License. Copyright 2010 http://blog.zool.it