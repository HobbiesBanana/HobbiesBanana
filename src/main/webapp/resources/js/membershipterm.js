
$('#allcheck').click(function(){
  let checked = $('#allcheck').is(':checked');
  
  if(checked){
    $('input:checkbox').prop('checked',true);
  }
  else{
    $('input:checkbox').prop('checked',false);
  }
});

$('.join_btn').click(function(e){
		
	if(!$('#check1').is(':checked')){
		alert('이용약관 동의에 반드시 체크해주세요.');
		$('#check1').focus();
		e.preventDefault();
		e.stopPropagation();
		return;
	}

	if(!$('#check2').is(':checked')){
		alert('개인정보 수집 및 이용 동의에 반드시 체크해주세요.');
		$('#check2').focus();
		e.preventDefault();
		e.stopPropagation();
		return;
	}
});


	

