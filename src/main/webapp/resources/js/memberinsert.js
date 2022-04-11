	// 사용자의 자료 입력여부를 검사하는 함수
	
	
	$('#confirm').click(function(){
		const checked = $('input:radio[name=gender]').is(':checked');
		
    	if( $.trim($("#email").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#email").focus();
            return;
        }
    	
    	if($.trim($('#password').val())==''){
    		alert("비밀번호입력해주세요.");
    		$('#password').focus();
    		return;
    	}
    	
    	if($.trim($('#password').val()) != $.trim($('#passwordCheck').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#passwordCheck').focus();
    		return;
    	}
    	
    	
    	if($.trim($('#name').val())==''){
    		alert("이름입력해주세요.");
    		$('#name').focus();
    		return;
    	}
    	
    	if(!checked){
    		alert("성별을 선택해주세요.");
    		$('input:radio[name=gender]').focus();
    		return
    	}
    	
    	if($.trim($('#age').val())==''){
    		alert("나이입력해주세요.");
    		$('#age').focus();
    		return;
    	}
    	
    	if($.trim($('#tel').val())==''){
    		alert("번호입력해주세요.");
    		$('#tel').focus();
    		return;
    	}
    	
    	if(!$('#input-image').val()){
    		alert("파일을 첨부해 주세요");
    		$('#input-image').focus();
    		return;
    	}

       
        // 자료를 전송합니다.
        document.userinput.submit();
	});
	
	//아이디 중복체크
	$('#checkBtn').click(function(){
        // AJAX
        
        $.ajax({
        	type : 'post',
        	url : 'idcheck.do',
        	data : {email : $('#email').val()},
        	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
        	success : function(result){
        		$('#idCheckResult').html(result);
        	},
        	error : function(){
        		alert('실패');
        	}
        })
       
	})