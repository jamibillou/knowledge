jQuery ->
	$.each(['system','vector_backbone','tag','cleavage_site', 'strain', 'medium'], -> handle_other_field(this))	

@handle_other_field = (id) ->
	$('#other_'+id+'_text').focus( -> $('#other_'+id+'_radio').attr('checked','checked'))
	$('#other_'+id+'_text').change( -> $('#other_'+id+'_radio').val($(this).val()))