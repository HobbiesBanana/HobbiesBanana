<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

    
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/icomoon.css">
    <link rel="stylesheet" href="resources/css/style1.css">
    <link rel="stylesheet" href="resources/css/admin.css?after">
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
        <div  style="background-image:url('resources/images/관리자배경3.jpg'); background-size: cover;" class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
          <h1>관리자 페이지</h1><br/>
           <h5>게시물 관리 > 게시물 상세 조회</h5>
           <br/><br/><br/>
          </div>
        </div>
    </section>
 
	<form action="meetinglist2.do" method="post">
   <section id="asd" class="ftco-section contact-section">
         <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">	
       	 </div>      
    </section>
	<div class="admin-total">
		<div>
		<!-- 사이드바 -->
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
		      
		      <li><a class="active" href="#event">공지사항 관리</a></li>
		      <li><a href="noticelist.do">공지사항 조회</a></li>
		      
		      <li><a class="active" href="#event">이벤트 관리</a></li>
		      <li><a href="eventlist.do">이벤트 조회</a></li>
		   
		      
		       <li><a class="active" href="#sal">매출관리</a></li>
		       <li><a href="visitCount.do">방문자수 조회</a></li>
    		</ul>
		</div>
		<!-- 메인 -->
		<div class="adminmain">
		
			<div>
				<table class="admin_table1">
        		<tr>
        			<td class="memberset_td3"><b>방번호</b></td>
        			<td class="memberset_td1">${meetingSet.MEETING_ID}</td>
        		</tr>
        		<tr>
        			<td class="memberset_td3"><b>제목</b></td>
        			<td class="memberset_td1">${meetingSet.TITLE}</td> 
        		</tr>
        		<tr>
	        		<td class="memberset_td3"><b>취미사진</b></td>
	        		<td  class="memberset_td1" style="display:flex;"><img src="resources/meetingImg/${meetingSet.FIRST_REAL_IMG}" id="member_img"/><img src="resources/meetingImg/${meetingSet.THIRD_REAL_IMG}" id="member_img"/><img src="resources/meetingImg/${meetingSet.SECOND_REAL_IMG}" id="member_img"/></td>
        		</tr>
        		<tr>
	        		<td  class="memberset_td3"><b>내용</b></td>
	        		<td  class="memberset_td1">${meetingSet.CONTENT}</td>
        		</tr>
        		<tr>
	        		<td class="memberset_td3"><b>장소</b></td>
	        		<td class="memberset_td1">${meetingSet.LOCATION}</td>
	        	</tr>
	        	<tr>	
	        		<c:set var="date" value="${ meetingSet.MEETING_DATE }" />
					<c:set var="time" value="${ meetingSet.MEETING_TIME }" />
	        		<td class="memberset_td3"><b>시간</b></td>
	        		<td class="memberset_td1">${fn:substring(date,0,10)} ${fn:substring(time,11,16)}</td>
        		</tr>
        		<tr>
	        		<td class="memberset_td3"><b>호스트명</b></td>
	        		<td class="memberset_td1">${meetingSet.NAME}</td>
	        	</tr>
	        	<tr>
	        		<td class="memberset_td3"><b>아이디</b></td>
	        		<td class="memberset_td1">${meetingSet.EMAIL}</td>
        	 	</tr>
        	 	<tr>
	        	 	<td class="memberset_td3"><b>인원</b></td>
	        	 	<td class="memberset_td1">${meetingSet.MEMBER_COUNT}</td>
	        	</tr>
        	 </table>
				</div>
			
			<div>
			<br/>
				<center>
        	<a href="meetinglist.do"><input type ="button" value = "목록" style='border:none; width: 70px; height: 35px; margin: 3px;'></a>
        	<a href="meetingDelete.do?meetingId=${meetingSet.MEETING_ID}"><input type="button" value="삭제" style='border:none; width: 70px; height: 35px;margin: 3px;'/></a>
      		</center>      		
			</div>
		</div>
	</div>
</form>
  

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