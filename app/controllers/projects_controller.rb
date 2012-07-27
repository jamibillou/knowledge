class ProjectsController < ApplicationController

	before_filter :signed_in?

	def new
		@project = Project.new
	end
end
