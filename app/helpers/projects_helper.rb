module ProjectsHelper

	def project_managers
		@project.involvings.where(:manager => true).map{ |i| link_to i.user.fullname, i.user }.join.html_safe
	end

	def involved_people
		@project.involvings.where(:manager => false).map{ |i| link_to i.user.fullname, i.user }.join.html_safe
	end
end
