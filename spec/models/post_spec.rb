require 'spec_helper'

describe Post do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: posts
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)     not null
#  slug       :string(255)     not null
#  body       :text            default(""), not null
#  body_html  :text            default(""), not null
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

