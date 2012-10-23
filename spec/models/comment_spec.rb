require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: comments
#
#  id               :integer         not null, primary key
#  content          :text
#  commentable_id   :integer
#  commentable_type :string(255)
#  author_id        :integer
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#

