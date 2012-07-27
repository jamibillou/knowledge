class Project < ActiveRecord::Base

	attr_accessible :company, :name, :contact, :contact_info, :lab_books

	has_and_belongs_to_many :users

	validates_presence_of :name, :company
	
end
# == Schema Information
#
# Table name: projects
#
#  id           :integer         not null, primary key
#  company      :string(255)
#  name         :string(255)
#  contact      :string(255)
#  contact_info :text(255)
#  lab_books    :text
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

