class Involving < ActiveRecord::Base

	attr_accessible :manager, :user_id, :project_id

	belongs_to :user
	belongs_to :project

	validates_presence_of :project_id, :user_id
end
# == Schema Information
#
# Table name: involvings
#
#  id         :integer         not null, primary key
#  project_id :integer
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  manager    :boolean
#

