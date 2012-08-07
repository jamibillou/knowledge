class Project < ActiveRecord::Base

	attr_accessible :company, :name, :contact, :contact_info, :lab_books, :description, :users, :constructs_attributes, :expressions_attributes,
					:purifications_attributes

	has_many :involvings, :dependent => :destroy
	has_many :users, :through => :involvings

	has_many :project_constructs, :dependent => :destroy
	has_many :constructs, :through => :project_constructs

	has_many :expressions, 	 :dependent => :destroy
	has_many :purifications, :dependent => :destroy

	accepts_nested_attributes_for :constructs,  :reject_if => lambda { |attr| attr['name'].blank? || attr['organism'].blank? }, 
																:allow_destroy => true
	accepts_nested_attributes_for :expressions, :reject_if => lambda { |attr| attr['system'].blank? },
																:allow_destroy => true
	accepts_nested_attributes_for :purifications, :reject_if => lambda { |attr| attr['lysis'].blank? && attr['lysis_buffer'].blank? && attr['clarification'].blank?	&& attr['preparation_extract'].blank? && attr['refolding_mode'].blank? && attr['refolding_buffer'].blank? && attr['presence_of'].blank? && attr['chromatography'].blank? && attr['endotoxin'].blank? && attr['final_buffer'].blank? && attr['concentration'].blank? && attr['final_filtration'].blank? && attr['final_productivity'].blank? && attr['inclusion_buffer'].blank? && attr['resins'].blank? && attr['chromato_resins'].blank? },
																:allow_destroy => true

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

