class CommentsController < ApplicationController

def index
  @commentable = find_commentable
  @comments    = @commentable.comments
end	

def create
	@commentable = find_commentable
	@comment = @commentable.comments.create(params[:comment])
	unless @comment.save
		flash[:error] = error_messages(@comment)
		redirect_to (@commentable.class.name == 'Project' ? @commentable : @commentable.project)
	else
		redirect_to @commentable.project, flash: { success: 'Comment added!' }
	end
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
