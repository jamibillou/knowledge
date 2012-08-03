class ProjectsController < ApplicationController
	before_filter :signed_in?

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
		@project.constructs.build
		@project.expressions.build
	end

	def create
		@project = Project.new params[:project]
		unless @project.save
			flash[:error] = error_messages(@project)
			@project.constructs.build
			@project.expressions.build
			render :new
		else
			@project.constructs.build(params[:project][:constructs])
			@project.users << current_user
			redirect_to root_path, flash: { notice: "The project has been created!" }
		end
	end

	def edit
		@project = Project.find(params[:id])
		unless @project.constructs.empty?
			@project.constructs.count { @project.constructs.build }
		else
			@project.constructs.build
		end
		unless @project.expressions.empty?
			@project.expressions.count { @project.expressions.build }
		else
			@project.expressions.build
		end
	end

	def update
		@project = Project.find(params[:id])
		unless @project.update_attributes params[:project]
			flash[:error] = error_messages(@project)
			unless @project.constructs.empty?
				@project.constructs.count { @project.constructs.build }
			else
				@project.constructs.build
			end
			unless @project.expressions.empty?
				@project.expressions.count { @project.expressions.build }
			else
				@project.expressions.build
			end
			redirect_to edit_project_path @project
		else
			@project.constructs.build(params[:project][:constructs])
			@project.expressions.build(params[:project][:expressions])
			redirect_to @project, flash: { notice: "Project has been updated!" }
		end	
	end
end
