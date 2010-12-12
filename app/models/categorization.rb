class Categorization < ActiveRecord::Base
  belongs_to :posts
  belongs_to :catagories
end
