module PagesHelper

	def radio_checked?(val)
		['pET', 'pQE', 'pcDNA', 'pHHUm'].include?(val) ? '' : 'checked'
	end

	def text_input?(val)
		['pET', 'pQE', 'pcDNA', 'pHHUm'].include?(val) ? '' : val		
	end
end
