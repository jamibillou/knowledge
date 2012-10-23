class Comment < ActiveRecord::Base

	belongs_to :commentable, polymorphic: true
  belongs_to :author, class_name: 'User', foreign_key: :author_id

	validates :content, length: { maximum: 140 }, presence: true
	
end
# == Schema Information
#
# Table name: comments
#
#  id               :integer         not null, primary key
#  content          :text
#  commentable_id   :integer
#  commentable_type :string(255)
#  author_id        :integer
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#

