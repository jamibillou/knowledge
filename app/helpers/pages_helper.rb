module PagesHelper

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
		end		
	end
end
