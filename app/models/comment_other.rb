class CommentOther < Comment

	attr_accessible :other

	belongs_to :other
end
# == Schema Information
#
# Table name: comment_others
#
#  id         :integer         not null, primary key
#  other_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

