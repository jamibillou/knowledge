class Other < ActiveRecord::Base

	attr_accessible :project_id, :plasmid_unstability, :post_translational, :impurities, :aggregration, :lyophilisation

	belongs_to :project
end
# == Schema Information
#
# Table name: others
#
#  id                  :integer         not null, primary key
#  project_id          :integer
#  plasmid_unstability :string(255)
#  post_translational  :string(255)
#  impurities          :string(255)
#  aggregration        :string(255)
#  lyophilisation      :boolean
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#

