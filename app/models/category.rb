class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :posts, :through => :categorizations

  has_friendly_id :slug
end

# == Schema Information
#
# Table name: categories
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)     not null
#  slug        :string(255)     not null
#  posts_count :integer(4)      default(0)
#  created_at  :datetime
#  updated_at  :datetime
#

