class Post < ActiveRecord::Base
  has_many :catagorization 
  has_many :catagories, :through => :catagorization

  #will_paginate的配置
  cattr_reader :per_page
  @@per_page = Settings.will_paginate.per_page
end
