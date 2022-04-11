<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>hobbysbanana</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- bxslider -->
<link rel="stylesheet" href="resources/css/jquery.bxslider.min.css"
	rel="stylesheet" />
<!-- lightbox -->
<link rel="stylesheet" href="resources/css/lightbox.css"
	rel="stylesheet" />
<!-- web icon -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">


<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="resources/css/open-iconic-bootstrap.min.css">
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
<link rel="stylesheet" href="resources/css/main.css">
<!-- qna css -->
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="resources/css/qna1.css">
<link rel="stylesheet" href="resources/css/qna2.css">
<link rel="stylesheet" href="resources/css/questiondetail.css">

</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html"><img alt="취미에 바나나"
				src="resources/images/mainlogo.png"
				style="width: 200px; height: 180px;"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
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
				<img id="memberimg"
					src="resources/memberimages/${ sessionScope.realImg }"
					style="width: 60px; height: 60px; border-radius: 50%;">
				<div id="membername">${ sessionScope.name }</div>
				<div id="logout">
					<a href="logout.do">로그아웃</a>
				</div>
			</div>
		</div>
		</div>
	</nav>
	<!-- END nav -->

	<!-- START detailview -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section text-center ftco-animate mb-5">
					<span class="subheading">QnA</span>
					<h1 class="mb-2">QnA 상세보기</h1>

				</div>
			</div>
		</div>
	</section>

	<div class="center-container">
		<div class="container1">
			<div class="container2"></div>
			<div class="container3">
				<table class="comenttable">
					<tr>
						<th>제목</th>
						<td>${ question.TITLE }</td>
					</tr>
					<tr>
						<th>작성자
						</td>
						<td>${ question.NAME }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${ question.CONTENT }</td>
					</tr>
				</table>
			</div>

		</div>
	</div>
	
	<!-- START 답글 -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-123 heading-section text-center ftco-animate mb-5">
					<span class="subheading">QnA</span>
					<h1 class="mb-2">답글</h1>

				</div>
			</div>
		</div>
	</section>

	<div class="center-container">
		<div class="container1">
			<div class="container2"></div>
			<div class="container3">
				<table class="comenttable">
					<tr>
						<th><span>re</span><span>제목</span></th>
						<td>${ question.TITLE }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>관리자</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><pre>${ question.ANSWER }</pre></td>
					</tr>
				</table>
			</div>

		</div>
	</div>

	<div class="button-container">
		<span>
			<a href="finallist.do?qpage=1&npage=1"><button type="button">목록</button></a>
		</span> <span>
			<a href="deletequestion.do?questionId=${ question.QUESTION_ID }"><button type="button">삭제</button></a>
		</span> <span>
			<a href="getqnadetailselect.do?questionId=${ question.QUESTION_ID }"><button type="button">수정</button></a>
		</span>
	</div>

	<footer class="ftco-footer ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">취미에 바나나란</h2>
						<p>취미를 공유하고 싶은 사람들은 방을 만들고 참여하고 싶은 사람은 신청을 넣어서 참여하자!</p>
						<ul class="ftco-footer-social list-unstyled mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">커뮤니티</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>방만들기
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">이벤트</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>이벤트
									정보</a></li>

						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">문의하기</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">위치</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">전화번호</span></a></li>
								<li><a href="#"><span class="icon icon-envelope pr-4"></span><span
										class="text">이메일</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
        <circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<!-- webicon -->
	<script src="https://use.fontawesome.com/releases/v6.1.1/js/all.js"></script>

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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>
	<!-- <script src="resources/js/scrap.js"></script> -->
	<script src="resources/js/jquery.bxslider.min.js"></script>
	<script src="resources/js/bxslider2.js"></script>
	<script src="resources/js/lightbox.js"></script>
	<script src="resources/js/wishlist.js"></script>
	<script src="resources/js/buttonhidden.js"></script>





</body>
</html>