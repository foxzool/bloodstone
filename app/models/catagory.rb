class Catagory < ActiveRecord::Base
  has_many :catagorization
  has_many :posts, :through => :categorization
end
