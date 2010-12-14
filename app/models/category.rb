class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :posts, :through => :categorizations

  has_friendly_id :slug
end
