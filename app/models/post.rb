class Post < ActiveRecord::Base

  has_many :categorizations
  has_many :categories, :through => :categorizations
  belongs_to :user

  #will_paginate的配置
  cattr_reader :per_page
  @@per_page = Settings.will_paginate.per_page

  validates_presence_of :title, :body

  before_validation :render_html

  acts_as_taggable
  
  named_scope :by_date, :order => "created_at DESC"
  attr_accessor :newtags  

  def render_html
    self.body_html = RDiscount.new(self.body,:smart, :filter_html).to_html
  end
  
end
