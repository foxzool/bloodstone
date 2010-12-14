class Post < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, :through => :categorizations

  #will_paginate的配置
  cattr_reader :per_page
  @@per_page = Settings.will_paginate.per_page

  validates_presence_of :title, :body
  
end
