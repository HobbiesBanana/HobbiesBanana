<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "admin_visit_count.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>관리자</title>
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

    <link rel="stylesheet" href="resources/css/mypage.css">
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/icomoon.css">
    <link rel="stylesheet" href="resources/css/style.css">
	<style>
		table{width : 100%;}
		hr{border : 3px solid black;}
		#chart-container {
		float: right;
		position: center;
		left: -50;
	}
	canvas {
	    float: right;
	    width: 40%;
	    position: right;
	    left: -30%;
	}
	</style>
  </head>
  <body>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="admin.do"><img alt="취미에 바나나" src="resources/images/관리자로고.png" style="width:200px;height:150px;"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        <li class="nav-item"><a href="community.do?page=1&memberId=${ sessionScope.memberId }" class="nav-link">커뮤니티</a></li>
	          <li class="nav-item"><a href="finallist.do?qpage=1&npage=1" class="nav-link">질문응답</a></li>
	          <li class="nav-item"><a href="event.do" class="nav-link">이벤트</a></li>
	          <li class="nav-item"><a href="loginform.do" class="nav-link">마이페이지</a></li>
	           <li class="nav-item"><a href="admin.do" class="nav-link">관리자페이지</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 ftco-degree-bg js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
            <h1 class="mb-3 bread">관리자페이지</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">메뉴<i class="ion-ios-arrow-forward"></i></a></span> <span>관리자페이지 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
<form action="visitCount.do" method="post">
    <section class="ftco-section contact-section">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
            <h1 class="mb-3 bread"> 매출관리 <i class="ion-ios-arrow-forward"></i></h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html"> 방문자 수 조회</a></span></p>
        	 <hr/>
     </div>
       	 <!-- 네이바 -->
       	   <div id="contain">
      <div>
    	<aside>
       		<ul class="adminbar">
		      <li><a class="active" href="#member">회원 관리</a></li>
		      <li><a href="memberSet.do">회원 목록 조회</a></li>
		      <li><a href="longtimeMember.do">휴먼 회원 조회</a></li>
		      <li><a href="blacklist.do">블랙리스트 조회</a></li>
		      
		      
		      <li><a class="active" href="#meeting">게시물 관리</a></li>
		      <li><a href="meetinglist.do">게시물 조회</a></li>
		      <li><a href="meetingNow.do">현재진행중인 게시물</a></li>
		      
		      <li><a class="active" href="#qna">Q&A 관리</a></li>
		      <li><a href="qnaList.do">Q&A 조회</a></li>
		      
		      <li><a class="active" href="#event">이벤트 관리</a></li>
		      <li><a href="eventlist.do">이벤트 조회</a></li>
		   
		      
		       <li><a class="active" href="#sal">매출관리</a></li>
		      <li><a href="visitCount.do">방문자수 조회</a></li>
    		</ul>
    	</aside>
      </div>
       	 
       	 
       	  <div>
      	 <ul class="list_contain">
       		<br/>
       	 	<div align="center">
       	 	<b>기간 </b><input type="date">
       	 	</div>
       	 	<br/>
       	 	<!-- 차트 -->
			 <h1>게시물데이터그래프화</h1>
			
		
	<table border = "3px solid" align="center">
        		<tr align="center">
        			<td><b>날짜</b></td> <td><b>이용자수</b></td> 
        		</tr>
        		<tr align="center"><td>~2022/10/31</td><td>100</td></tr>
        		<%-- <%=for(var i=0; i>0; i++){%>
        		 <tr>
        		 		<td></td><td></td><td></td>
        		 </tr>
        		<%=} //end of for %> --%>
        	</table>
        	</ul>
	    </section>
	</form>

    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Findstate</h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
              <ul class="ftco-footer-social list-unstyled mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Community</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Search Properties</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>For Agents</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Reviews</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>FAQs</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">About Us</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Our Story</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Meet the team</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Careers</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Company</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About Us</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Press</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Careers</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
	
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

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
  </body>
</html>