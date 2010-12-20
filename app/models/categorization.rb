class Categorization < ActiveRecord::Base
  belongs_to :post
  belongs_to :category

  after_create  :increment_counter_cache
  after_destroy :decrement_counter_cache

  private
  def decrement_counter_cache
    Category.decrement_counter("posts_count", category_id)
  end

  def increment_counter_cache
    Category.increment_counter("posts_count", category_id)
  end

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

