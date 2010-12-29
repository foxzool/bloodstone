class Post < ActiveRecord::Base

  before_validation :render_html

  has_many :categorizations
  has_many :categories, :through => :categorizations

  belongs_to :user
  acts_as_taggable


  #TODO 加入cache_column
  has_friendly_id :title, :use_slug => true, :cache_column => 'cache_slug'

  validates :title, :body, :presence => true

  scope :by_date, :order => "created_at DESC"
  attr_accessor :newtags


  #处理title的slug化
  def normalize_friendly_id(text)
    begin
      text.to_english.gsub(/\s/, '-')
    rescue
      text
    end
    #text.to_url
  end
  
  def render_html
    self.body_html = markdown(coderay(self.body))
  end
  
  def markdown(text)
    RDiscount.new(text, :smart).to_html
  end
  
  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      CodeRay.scan($3, $2).div(:css => :class)     
   end
  end

end


# == Schema Information
#
# Table name: posts
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)     not null
#  cache_slug :string(255)
#  body       :text            default(""), not null
#  body_html  :text            default(""), not null
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

