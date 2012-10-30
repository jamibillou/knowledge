class Project < ActiveRecord::Base

	attr_accessible :company, :name, :contact, :contact_info, :lab_books, :description, :users, :constructs_attributes, :expressions_attributes,
									:purifications_attributes, :others_attributes

	has_many :involvings, :dependent => :destroy
	has_many :users, :through => :involvings

	has_many :project_constructs, :dependent => :destroy
	has_many :constructs, :through => :project_constructs

	has_many :expressions, 	 		:dependent => :destroy
	has_many :purifications, 		:dependent => :destroy
	has_many :others,		 		 		:dependent => :destroy
	has_many :comments, 				as: :commentable

	accepts_nested_attributes_for :constructs,  	:reject_if => lambda { |attr| attr['name'].blank? || attr['organism'].blank? }, 
																:allow_destroy => true
	accepts_nested_attributes_for :expressions, 	:reject_if => lambda { |attr| attr['system'].blank? },
																:allow_destroy => true
	accepts_nested_attributes_for :purifications, :reject_if => lambda { |attr| attr['lysis'].blank? && attr['lysis_buffer'].blank? && attr['clarification'].blank?	&& attr['preparation_extract'].blank? && attr['refolding_mode'].blank? && attr['refolding_buffer'].blank? && attr['presence_of'].blank? && attr['chromatography'].blank? && attr['endotoxin'].blank? && attr['final_buffer'].blank? && attr['concentration'].blank? && attr['final_filtration'].blank? && attr['final_productivity'].blank? && attr['inclusion_buffer'].blank? && attr['resins'].blank? && attr['chromato_resins'].blank? },
																:allow_destroy => true
	accepts_nested_attributes_for :others, 				:reject_if => lambda { |attr| attr['plasmid_unstability'].blank? && attr['post_translational'].blank? && attr['impurities'].blank?	&& attr['aggregration'].blank? },
																:allow_destroy => true

	validates_presence_of :name, :company

	def construct
		constructs.first
	end

	def selected_expression
		expressions.where(status: "selected").first
	end

	def tested_expression
		expressions.where(status: "tested").first
	end

	def no_expression_conditions?
		selected_expression.strain.blank? && selected_expression.method.blank? && selected_expression.medium.blank? && selected_expression.temperature.blank?
	end

	def selected_purification
		purifications.where(status: "selected").first
	end

	def tested_purification
		purifications.where(status: "tested").first
	end

	def no_refolding?
		selected_purification.refolding_mode.blank? && selected_purification.refolding_buffer && selected_purification.presence_of
	end

	def no_chromatography?
		selected_purification.chromatography.blank? && selected_purification.chromato_resins.blank?
	end

	def selected_other
		others.where(status: "selected").first
	end

	def tested_other
		others.where(status: "tested").first
	end

	def self.search(search)
		unless search.blank?
			search_condition = "%#{search}%"
			find(:all, :conditions => ["company LIKE ? OR name LIKE ? OR contact LIKE ? OR contact_info LIKE ?",search_condition,search_condition,search_condition,search_condition])
		else
			nil
		end	
	end
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

