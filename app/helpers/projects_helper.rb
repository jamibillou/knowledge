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

	def radio_checked?(type,val)
		case type
			when 'system'
				['bacteria', 'mammalian', 'yeast', 'insect'].include?(val) ? '' : 'checked'				
			when 'vector_backbone'
				['pET', 'pQE', 'pcDNA', 'pHHUm'].include?(val) ? '' : 'checked'
			when 'tag'
				['No tag', 'His', 'GST', 'MBP', 'SUMO'].include?(val) ? '' : 'checked'
			when 'cleavage_site'
				['none', 'factor Xa', 'thrombin'].include?(val) ? '' : 'checked'
			when 'strain'
				['BL21', 'BL21 (DE3)', 'BLR (DE3)', 'HMS174', 'HMS174 (DE3)', 'CHO-S', 'HEK293', 'CHO-DG44', 'PER-C6'].include?(val) ? '' : 'checked'
			when 'medium'
				['LB','MAI','Riesenberg'].include?(val) ? '' : 'checked'
			when 'endotoxin'
				val == 'mustang q' ? '' : 'checked'
			when 'final_filtration'
				['cellulose','PES','PVDF'].include?(val) ? '' : 'checked'			
		end
	end

	def text_input?(type,val)
		case type
			when 'system'
				['bacteria', 'mammalian', 'yeast', 'insect'].include?(val) ? '' : val
			when 'vector_backbone'
				['pET', 'pQE', 'pcDNA', 'pHHUm'].include?(val) ? '' : val
			when 'tag'
				['No tag', 'His', 'GST', 'MBP', 'SUMO'].include?(val) ? '' : val
			when 'cleavage_site'
				['none', 'factor Xa', 'thrombin'].include?(val) ? '' : val
			when 'strain'
				['BL21', 'BL21 (DE3)', 'BLR (DE3)', 'HMS174', 'HMS174 (DE3)', 'CHO-S', 'HEK293', 'CHO-DG44', 'PER-C6'].include?(val) ? '' : val
			when 'medium'
				['LB','MAI','Riesenberg'].include?(val) ? '' : val
			when 'endotoxin'
				val == 'mustang q' ? '' : val
			when 'final_filtration'
				['cellulose','PES','PVDF'].include?(val) ? '' : val	
		end		
	end
end
