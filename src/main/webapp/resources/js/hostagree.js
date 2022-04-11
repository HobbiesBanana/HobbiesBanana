$('.hostagreeBtn').click(function(e){
		
	if(!$('#check1').is(':checked')){
		alert('이용약관 동의에 반드시 체크해주세요.');
		$('#check1').focus();
		e.preventDefault();
		e.stopPropagation();
		return;
	}
});