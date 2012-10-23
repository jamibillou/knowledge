class Construct < ActiveRecord::Base

	attr_accessible :name, :organism, :protein_family, :size, :pi, :nb_cystein, :sequence

  has_many :project_constructs, dependent: :destroy
  has_many :projects, 					through: :project_constructs

end
# == Schema Information
#
# Table name: constructs
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  organism       :string(255)
#  protein_family :text
#  size           :float
#  pi             :float
#  nb_cystein     :integer
#  sequence       :text
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

