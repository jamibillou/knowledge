class CommentsController < ApplicationController

def index
  @commentable = find_commentable
  @comments    = @commentable.comments
end	

private
	#Return the selected object, in order to display its comments
	def find_commentable
		params.each do |name, value|
			if name =~ /(.+)_id$/
				return $1.classify.constantize.find(value)
			end
		end
		nil
	end
end
