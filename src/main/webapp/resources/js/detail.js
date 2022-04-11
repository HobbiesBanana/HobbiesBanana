$("#button1").click(function(){
	
	let result = confirm("신청하시겠습니까?");
	if(result){
		$.ajax({
        	type : 'post',
        	url : 'meetingapply.do',
        	data : {memberId : $('#memberId').val(),
        			meetingId : $('#meetingId').val()
        	},
        	success : function(){
        		alert("신청되었습니다.");
        	},
        	error : function(){
        		alert('신청이 안됬습니다.');
        	}
        })
	}
})