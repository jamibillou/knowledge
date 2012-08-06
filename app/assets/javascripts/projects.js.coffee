jQuery ->
	$('#other_vector_backbone_text').focus( -> $('#other_vector_backbone_radio').attr('checked','checked'))
	$('#other_vector_backbone_text').keyup( -> $('#other_vector_backbone_radio').val($(this).val()))
