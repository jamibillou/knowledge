module ProjectsHelper

	def project_managers
		@project.involvings.where(:manager => true).map{ |i| link_to i.user.fullname, i.user }.join.html_safe
	end

	def involved_people
		@project.involvings.where(:manager => false).map{ |i| link_to i.user.fullname, i.user }.join.html_safe
	end

	def construct
		@project.constructs.first
	end

	def selected_expression
		@project.expressions.where(:status => "selected").first
	end

	def tested_expression
		@project.expressions.where(:status => "tested").first
	end

	def no_expression_conditions?
		selected_expression.strain.blank? && selected_expression.method.blank? && selected_expression.medium.blank? && selected_expression.temperature.blank?
	end
end
