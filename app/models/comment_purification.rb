class CommentPurification < Comment

	attr_accessible :purification

	belongs_to :purification
end
# == Schema Information
#
# Table name: comment_purifications
#
#  id              :integer         not null, primary key
#  purification_id :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

