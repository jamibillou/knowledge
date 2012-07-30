class PagesController < ApplicationController

	def index
		@project = Project.last
	end
end
