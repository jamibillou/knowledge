class ProjectsController < ApplicationController
	before_filter :signed_in?

	def new
		@project = Project.new
	end

	def create
		@project = Project.new params[:project]
		unless @project.save
			flash[:error] = error_messages(@project)
			render :new
		else
			@project.users.build
			flash[:notice] = "The project has been created!"
			redirect_to root_path
		end
	end
end
