function password(questionId,password) {

var getpass = prompt("비밀번호를 입력하세요.");

if(getpass == password){
	location.href="questiondetail.do?questionId="+questionId;
} else {
	alert("돌아가세요!");
	}
 
};



