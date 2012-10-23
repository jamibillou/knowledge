class Other < ActiveRecord::Base

	attr_accessible :project_id, :plasmid_unstability, :post_translational, :impurities, :aggregration, :lyophilisation, :status

	belongs_to :project

	has_many :comments,		as: :commentable
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
#  status              :string(255)
#

