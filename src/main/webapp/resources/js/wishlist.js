	$('.scrap').click(function(){
		
        // AJAX
        $.ajax({
        	type : 'post',
        	url : 'wishlistinsert.do',
        	data : {memberId : $('#memberId').val(),
        			hostId : $('#hostId').val(),
        			meetingId : $('#meetingId').val()
        	},
        	success : function(){
        		$('.scrap').css('background','yellow');
        		alert("즐겨찾기에 추가되었습니다.");
        	},
        	error : function(){
        		alert('이미 즐겨찾기에 등록되어 있습니다.');
        	}
        })
       
	})