<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
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
    <link rel="stylesheet" href="resources/css/community.css">
    <link rel="stylesheet" href="resources/css/login.css">
    <link rel="stylesheet" href="resources/css/mypagemain.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="main.do"><img alt="취미에 바나나" src="resources/images/mainlogo.png" style="width:200px;height:180px;"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span>Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="community.do?page=1&memberId=${ sessionScope.memberId }" class="nav-link">커뮤니티</a></li>
	          <li class="nav-item"><a href="finallist.do?qpage=1&npage=1" class="nav-link">질문응답</a></li>
	          <li class="nav-item"><a href="event.do" class="nav-link">이벤트</a></li>
	          <li class="nav-item"><a href="mypagemain.do?memberId=${ sessionScope.memberId }" class="nav-link">마이페이지</a></li>
	        </ul>
	      </div>
	      <div id="logincontain">
			<img id="memberimg" src="resources/memberimages/${ sessionScope.realImg }" style="width:60px; height:60px; border-radius:50%;">
			<div id="membername">${ sessionScope.name }</div>
			<div id="logout"><a href="logout.do">로그아웃</a></div>
		  </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 ftco-degree-bg js-fullheight" style="background-image: url('resources/images/mypagemain.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
            <br/><br/><br/><br/>
            <p class="mypont" >MY PAGE</p>
            <p class="mypagename">${sessionScope.name}님 안녕하세요</p>
          </div>
        </div>
        
        
        <div class="menubar">
         <ul class="menu">
                  <li>
                     <a href="#">취미 관리</a>
                     <ul class="submenu">
						<li><a href="my1reghob.do?hostId=${ host.hostId }&memberId=${sessionScope.memberId }">등록 취미 조회</a></li>
						<li><a href="my1reqhob.do?memberId=${sessionScope.memberId }">신청 취미 조회</a></li>
						<li><a href="my1bookmark.do?memberId=${sessionScope.memberId }">취미 즐겨찾기</a></li>
                     </ul>
                  </li>
                  
                  <li>
                       <a href="#">호스트 관리</a>
                     <ul class="submenu">
						<li><a href="my2hostagree.do?memberId=${ sessionScope.memberId }">호스트 인증 신청</a></li>
			  			<li><a href="my2hostprofile.do?hostId=${ host.hostId }&memberId=${sessionScope.memberId }">프로필 관리</a></li>
			  			<li><a href="my2guestagree.do?hostId=${ host.hostId }&memberId=${ sessionScope.memberId }">게스트 관리</a></li>
                     </ul>
                  </li>
                  
                   <li>
                     <a href="#">회원 관리</a>
                     <ul class="submenu">
                        <li><a href="my3privacy.do?memberId=${sessionScope.memberId }">개인정보수정</a></li>
			  			<li><a href="my3drop.do?memberId=${sessionScope.memberId }">회원탈퇴</a></li>
                     </ul>
                    </li>
           </ul>
      </div>
      </div>
      
    
    </section>
   
    
	

	
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <script src="resources/js/jquery.community.js"></script>
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
  <script src="resources/js/category.js"></script>
  <script src="resources/js/like.js"></script>
  </body>
</html>