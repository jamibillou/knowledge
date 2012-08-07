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

	def selected_purification
		@project.purifications.where(:status => "selected").first
	end

	def tested_purification
		@project.purifications.where(:status => "tested").first
	end

	def no_refolding?
		selected_purification.refolding_mode.blank? && selected_purification.refolding_buffer && selected_purification.presence_of
	end

	def no_chromatography?
		selected_purification.chromatography.blank? && selected_purification.chromato_resins.blank?
	end
end
