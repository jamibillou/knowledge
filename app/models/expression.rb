class Expression < ActiveRecord::Base

	attr_accessible :project_id, :system, :vector_backbone, :gene, :tag, :cleavage_site, :compartment, :strain, :method, :medium, :solubility,
									:culture, :temperature, :status

	attr_accessor :other_vector_backbone

	belongs_to :project

	has_many :comments,		as: :commentable
end

# == Schema Information
#
# Table name: expressions
#
#  id              :integer         not null, primary key
#  project_id      :integer
#  system          :string(255)
#  vector_backbone :string(255)
#  gene            :string(255)
#  tag             :string(255)
#  compartment     :string(255)
#  strain          :string(255)
#  medium          :string(255)
#  culture         :string(255)
#  temperature     :string(255)
#  status          :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  cleavage_site   :string(255)
#  solubility      :string(255)
#  method          :string(255)
#

