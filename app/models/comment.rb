class Comment < ActiveRecord::Base

	attr_accessible :user, :text

	belongs_to :user
	
end
# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  text       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

