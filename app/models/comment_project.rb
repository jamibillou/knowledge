class CommentProject < Comment

	attr_accessible :project

	belongs_to :project
end
# == Schema Information
#
# Table name: comment_projects
#
#  id         :integer         not null, primary key
#  project_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

