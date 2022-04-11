<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="resources/css/loginform.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html"><img alt="취미에 바나나" src="resources/images/mainlogo.png" style="width:200px;height:180px;"></a>
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
    
		

    
   <!-- loginform -->
    <section class="ftco-section ftco-no-pb">
      <div class="contain" id="login_form">
        <form id="loginConfirm" action="logincheck.do" method="post">
          <br/>
          <fieldset>
            <legend>로그인</legend>
            <div>
              <input id="email" type="text" name="email" placeholder="E-mail을 입력하세요" required/><br/>
            </div>
            <div>
              <input id="password" type="password" name="password" placeholder="비밀번호를 입력하세요" required/></br>
            </div>
            <c:if test="${ message == 'error' }">
            	<div id="errortext">Email 또는 비밀번호를 잘못 입력했습니다.<br/>
					입력하신내용을 다시 확인해주세요.</div>
            </c:if>
            <div id="sub_form">
              <button type="submit">Login</button><br/>
              <a href="">비밀번호 찾기</a><br/>
              <a href="membershipterm.jsp">회원가입</a>
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
  <!--<script src="resources/js/loginform.js"></script>-->
    
  </body>
</html>