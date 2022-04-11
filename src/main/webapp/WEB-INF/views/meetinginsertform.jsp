<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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
    <link rel="stylesheet" href="resources/css/meetinginsertform.css?after">
    <link rel="stylesheet" href="resources/css/login.css">
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

    <!-- meetingroom -->
    

    <div class="space"></div>
    <div class="row justify-content-center mb-5">
      <div class="col-md-7 text-center heading-section ftco-animate">
        <span class="subheading">Testimonial</span>
        <h2 class="mb-3">방만들기</h2>
      </div>
    </div>
    <div class="center">
    <section id="main-container">
      <div class="container">
        <form method="post" action="saveMeeting.do" enctype="multipart/form-data">
          <input type="hidden" name="hostId" value="${ host.hostId }">
          <div class="category">
            <div class="category-text">
              <span class="large-text">어떤 모임을 만드시겠어요?</span>
              <span class="middle-text">카테고리를 골라주세요!</span>
            </div>
            <div class="category-btn">
              <span class="middle-text">1개만 골라주세요.</span>
              <div>
                <select id="category-select" name="code" required>
                  <option value="">카테고리를 선택하세요</option>
                  <option value="A001">문화, 예술</option>
                  <option value="A002">레저, 엑티비티</option>
                  <option value="A003">푸드, 드링크</option>
                  <option value="A004">독서, 음악</option>
                  <option value="A005">성장, 자기개발</option>
                  <option value="A006">여행, 나들이</option>
                  <option value="A007">그 외의 취미</option>
                </select>
              </div>
            </div>
          </div> <!-- category end -->
            <div class="main-content">
              <span class="large-text">모임의 제목을 작성해 주세요!</span>
              <div class="title-contain">
                <input type="text" name="title" placeholder="제목을 입력해주세요." required/>
              </div>
              <div class="introduce-cotain">
                <span class="large-text">만들고 싶은 모임의 소개를 작성 해주세요!</span><br/>
                <span class="middle-text">취미방을 소개할 수 있는 이미지를 넣어주세요!</span><br/>
                <div class="containspace"></div>
                <input type="file" name="firstFile" accept=".png, .jpg, .jpeg"/>
                <input type="file" name="secondFile" accept=".png, .jpg, .jpeg"/>
                <input type="file" name="thirdFile" accept=".png, .jpg, .jpeg"/><br/>
                <span class="middle-text">취미방을 소개하는 소개글을 작성해주세요!</span><br/>
                <textarea name="content" placeholder="내용을 입력해주세요." required></textarea><br/>
                <span class="large-text">약속 시간과 장소를 정해주세요!</span>
                <div class="date-contect">
                  <div class="map-contain">
                    <div id="map" style="width:500px;height:350px;"></div>
                  </div>
                  <div class="maptext-contain">
                    <span class="middle-text">위치검색</span><br/>
                    <span class="middle-text">주소</span><br/>
                    <input type="text" id="address_kakao" name="location" readonly required/><br/>
                    <span class="middle-text">상세주소</span><br/>
                    <input type="text" name="detailLocation" required/><br/>
                    <span class="middle-text">날짜와 시간을 설정 해주세요!</span><br/>
                    <input type="date" name="meetingDate" required/><br/>
                    <input type="time" name="meetingTime" required/>
                  </div>
                </div>
                <div class="membercount-contain">
                  <div class="count-text">
                    <span class="large-text">몇 명과 함께 할까요?</span><br/>
                    <span class="middle-text">본인을 포함한 총 참여 인원수를 알려주세요</span>
                  </div>
                  <div class="btn-count">
                    <button class="minus-btn" type="button">-</button>
                    <input type="text" class="count" name="memberCount" value="0" required/>
                    <button class="plus-btn" type="button">+</button>
                  </div>
                </div>
              </div>
            </div><!-- main-content end -->
            <div class="submit-contain">
              <a href="community.do?page=1&memberId=${ sessionScope.memberId }"><button type="button">목록보기</button></a>
              <button type="submit">방 생성 완료!</button>
            </div>
        </form>
      </div>
    </section>
  </div>
  <div class="space"></div>
    
  

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
  <script src="js/google-map.js"></script>
  <script src="resources/js/main.js"></script>
  <script src="resources/js/meetinginsertform.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5ab63b3829396418557c91add55d6bf3"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="resources/js/kakaomap.js"></script>
  
  </body>
  </html>