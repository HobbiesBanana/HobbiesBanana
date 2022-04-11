<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>취미에 바나나</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">

    <link rel="stylesheet" href="resources/css/aos.css">

    <link rel="stylesheet" href="resources/css/ionicons.min.css">

    <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/icomoon.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/memberinsertform.css?after">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="../main-real.jsp"><img alt="취미에 바나나" src="resources/images/mainlogo.png" style="width:200px;height:180px;"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span>Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="loginform.do" class="nav-link">커뮤니티</a></li>
	          <li class="nav-item"><a href="loginform.do" class="nav-link">질문응답</a></li>
	          <li class="nav-item"><a href="loginform.do" class="nav-link">이벤트</a></li>
	          <li class="nav-item"><a href="loginform.do" class="nav-link">마이페이지</a></li>
	        </ul>
	      </div>
	      <div class="navbar-right" id="ftco-nav" style="display:flex; margin-left:100px; margin-top:10px;">
	      	<a href="loginform.do" class="navbar-link" style="margin-right:10px;"><p style="color:black">로그인</p></a>
	      	<a href="membershipterm.jsp" class="navbar-link"><p style="color:black">회원가입</p></a>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
		

    
   <!-- memberinsertform -->
    <section class="ftco-section ftco-no-pb">
      <div class="contain" id="member_form">
        <form id="userinput" name="userinput" action="saveMember.do" method="post" enctype="multipart/form-data">
          <br/>
          <fieldset>
            <legend>회원가입</legend>
            <div>
              <span>Email:</span><br/>
              <input id="email" type="text" name="email" required/>
              <button type="button" id="checkBtn" name="emailCheck">중복확인</button></br>
              <span id="idCheckResult" style="width:150px;color:red"></span></br>
              <span>* 향후 원할한 서비스가 이루어질 수 있도록, 정확한 이메일주소를 입력해주시기 바랍니다.</span>
            </div>
            <div>
              <span>비밀번호:</span><br/>
              <input id="password" type="password" name="password" pattern="[A-Za-z0-9]{4,}" required/></br>
              <span>* 영문, 숫자 4글자 이상</span>
            </div>
            <div>
              <span>비밀번호 확인:</span><br/>
              <input id="passwordCheck" type="password" name="passwordCheck" pattern="[A-Za-z0-9]{4,}" required/>
            </div>
            <div>
              <span>이름:</span><br/>
              <input id="name" type="text" name="name" pattern="[가-힣]{2,5}" required/></br>
            </div>
            <div class="gender_select">
              <span>성별:</span><br/>
              <input type="radio" name="gender" value='남자' /><label>남자</label>
              <input type="radio" name="gender" value='여자' /><label>여자</label>
            </div>
            <div>
              <span>나이:</span><br/>
              <input id="age" type="text" name="age" pattern="[0-9]{1,3}" required/></br>
            </div>
            <div>
              <span>전화번호:</span><br/>
              <input id="tel" type="tel" name="tel" pattern="[0-9]{10,11}" required/></br>
              <span>* ex)01012345678</span>
            </div>
            <div class="image-container">
              <img id="preview-image" src="https://dummyimage.com/500x500/ffffff/000000.png&text=Insert Image">
              <input type="file" id="input-image" name="file" accept=".png, .jpg, .jpeg" required>
            </div>

            <div id="sub_form">
              <button id="confirm" type="submit">회원가입</button>
            </div>
          </fieldset>
        </form>
      </div>
    </section>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.easing.1.3.js"></script>
  <script src="resources/js/jquery.waypoints.min.js"></script>
  <script src="resources/js/jquery.stellar.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/jquery.animateNumber.min.js"></script>
  <script src="resources/js/bootstrap-datepicker.js"></script>
  <script src="resources/js/jquery.timepicker.min.js"></script>
  <script src="resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="resources/js/google-map.js"></script>
  <script src="resources/js/main.js"></script>
  <script src="resources/js/memberinsertform.js"></script>
  <script src="resources/js/memberinsert.js"></script>
    
  </body>
</html>