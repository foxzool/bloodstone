#配置默认属性
#title: 'ZoOL => Blog'
#description: 'rails开发相关'
#keywords: 'rails,ruby,git,ubuntu,gem,bloodstone'
#site_url: 'http://blog.zool.it'  #最后不要带 /
#author: 'ZoOL'
#google_analytics: 'UA-XXXXX-X'
#
#will_paginate:
#  per_page: 10

#网站标题
Setting.title ||= 'ZoOL => Blog'

#网站描述
Setting.description ||= 'rails开发相关'

#关键字
Setting.keywords ||= 'rails,ruby,git,ubuntu,gem,bloodstone'

#网站地址
Setting.site_url ||= 'http://blog.zool.it'

#作者
Setting.author ||= 'ZoOL'

#google分析
Setting.google_analytics ||= 'UA-XXXXX-X'

#disqus
Setting.disqus_shortname ||= 'zoolblog'

Setting.save!