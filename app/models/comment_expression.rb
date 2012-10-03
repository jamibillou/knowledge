class CommentExpression < Comment

	attr_accessible :expression

	belongs_to :expression

end
# == Schema Information
#
# Table name: comment_expressions
#
#  id            :integer         not null, primary key
#  expression_id :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

