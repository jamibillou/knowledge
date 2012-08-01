class Project < ActiveRecord::Base

	attr_accessible :company, :name, :contact, :contact_info, :lab_books, :description, :users, :constructs_attributes, :expressions_attributes

	has_many :involvings, :dependent => :destroy
	has_many :users, :through => :involvings

	has_many :project_constructs, :dependent => :destroy
	has_many :constructs, :through => :project_constructs

	has_many :expressions, :dependent => :destroy

	accepts_nested_attributes_for :constructs,  :reject_if => lambda { |attr| attr['name'].blank? || attr['organism'].blank? }, 
																:allow_destroy => true
	accepts_nested_attributes_for :expressions, :reject_if => lambda { |attr| attr['system'].blank? }

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
#  contact_info :text
#  lab_books    :text
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  description  :text
#

