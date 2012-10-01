module ProjectsHelper
	
	def project_managers
		@project.involvings.where(:manager => true).map{ |i| link_to i.user.fullname, i.user }.join.html_safe
	end

	def involved_people
		@project.involvings.where(:manager => false).map{ |i| link_to i.user.fullname, i.user }.join.html_safe
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
			when 'plasmid_unstability'
				['loss of expression', 'low plasmid retention'].include?(val) ? '' : 'checked'	
			when 'post_translational'
				['glycosylation', 'carbamylation', 'initial methyonine processing'].include?(val) ? '' : 'checked'
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
			when 'plasmid_unstability'
				['loss of expression', 'low plasmid retention'].include?(val) ? '' : val	
			when 'post_translational'
				['glycosylation', 'carbamylation', 'initial methyonine processing'].include?(val) ? '' : val
		end		
	end

	def checkbox_checked?(id,val)
		!val.nil? && val.include?(id)
	end
end
