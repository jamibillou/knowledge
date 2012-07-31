class ProjectConstruct < ActiveRecord::Base

	belongs_to :project
	belongs_to :construct

	validates_presence_of :project_id, :construct_id
end
# == Schema Information
#
# Table name: project_constructs
#
#  id           :integer         not null, primary key
#  project_id   :integer
#  construct_id :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

