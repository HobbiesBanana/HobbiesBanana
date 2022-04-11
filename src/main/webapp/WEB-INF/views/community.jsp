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
    <link rel="stylesheet" href="resources/css/community.css?after">
    <link rel="stylesheet" href="resources/css/login.css?after">
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
    
    <section class="hero-wrap hero-wrap-2 ftco-degree-bg js-fullheight" style="background-image: url('resources/images/community2.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
            <h1 class="mb-3 bread">커뮤니티</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="main.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>community <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    
    	  <div class="div1">
    	  	  <a href="community.do?page=1"><button type="button" class="div2" id="btn1" >전체</button></a>
	          <a href="categoryCommunity.do?code=A001"><button type="button" class="div2" id="btn1" >문화, 예술</button></a> 
	          <a href="categoryCommunity.do?code=A002"><button type="button" class="div2" id="btn2" >레저, 액티비티</button></a>
	          <a href="categoryCommunity.do?code=A003"><button type="button" class="div2" id="btn3" >푸드, 드링크</button></a>
	          <a href="categoryCommunity.do?code=A004"><button type="button" class="div2" id="btn4" >독서, 음악</button></a>
	          <a href="categoryCommunity.do?code=A005"><button type="button" class="div2" id="btn5" >성장, 자기개발</button></a>
	          <a href="categoryCommunity.do?code=A006"><button type="button" class="div2" id="btn6" >여행, 나들이</button></a>
	          <a href="categoryCommunity.do?code=A007"><button type="button" class="div2" id="btn7" >그 외의 취미</button></a>
	      </div>
	<div id="div3">
		<p class="font_ex1">바나나들 모임!</p>
	</div>
	<section class="ftco-section">
		<div class="meetmakebtn">
			<a href="meetinginsertform.do?memberId=${ sessionScope.memberId }"><button id="makeBtn" type="button" class="div2">방만들기</button></a>
		</div>
		<div class="container">

			<!-- meetinglist start -->
			
				<div class="row d-flex">
					<c:forEach items="${ meeting }" var="meetingList">
					<div class="col-md-3 d-flex ftco-animate">
						<div class="blog-entry justify-content-end">
							<div class="text">
								<a href="getMeeting.do?meetingId=${ meetingList.MEETING_ID }" class="block-20 img"
									style="background-image: url('resources/meetingImg/${ meetingList.FIRST_REAL_IMG }');">
								</a><br />
								<h3 class="heading">
									<a href="getMeeting.do?meetingId=${ meetingList.MEETING_ID }">${ meetingList.TITLE }</a>
								</h3>
								<div class="meta mb-3">
									<c:set var="date" value="${ meetingList.MEETING_DATE }" />
									<c:set var="time" value="${ meetingList.MEETING_TIME }" />
									<div>${ fn:substring(date,0,10) }</div>
									<br />
									<div>${ fn:substring(time,11,16) }</div>
									<br />
									<div>${ meetingList.LOCATION } ${ meetingList.DETAIL_LOCATION }</div>
									<br />
									<div>${ meetingList.NAME }</div>
									<br />
								</div>
							</div>
						</div>
					 </div>
					 </c:forEach>
					</div>
			
			<!-- meetinglist end -->

			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:forEach var="i" begin="1" end="${ count }" step="1">
								<li class="pagebtn"><a href="community.do?page=${ i }"><span>${ i }</span></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

		

<footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">취미에 바나나란</h2>
              <p>취미를 공유하고 싶은 사람들은 방을 만들고 참여하고 싶은 사람은 신청을 넣어서 참여하자!</p>
              <ul class="ftco-footer-social list-unstyled mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">커뮤니티</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>방만들기	</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">이벤트</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>이벤트 정보</a></li>

              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">문의하기</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">위치</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">전화번호</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope pr-4"></span><span class="text">이메일</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    
  

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
  <script src="resources/js/pagebtn.js"></script>
  </body>
</html>