class Categorization < ActiveRecord::Base
  belongs_to :post
  belongs_to :category
end

# == Schema Information
#
# Table name: categorizations
#
#  id          :integer(4)      not null, primary key
#  post_id     :integer(4)      not null
#  category_id :integer(4)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

