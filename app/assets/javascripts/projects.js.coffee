jQuery ->
	$.each(['system','vector_backbone','tag','cleavage_site', 'strain', 'medium','endotoxin','final_filtration','plasmid_unstability','post_translational',], -> handle_other_field(this))
	$.each(['presence_of','impurities'], -> handle_check_box(this))

@handle_other_field = (id) ->
	$('#other_'+id+'_text').focus( -> $('#other_'+id+'_radio').attr('checked','checked'))
	$('#other_'+id+'_text').change( -> $('#other_'+id+'_radio').val($(this).val()))

@handle_check_box = (name) ->
	$('.'+name+'_check').each( -> $(this).click( ->
		if $(this).attr('checked') is 'checked'
			$('#'+name).val($('#'+name).val()+$(this).attr('id')+',')
		else
			$('#'+name).val($('#'+name).val().replace($(this).attr('id')+',',''))))