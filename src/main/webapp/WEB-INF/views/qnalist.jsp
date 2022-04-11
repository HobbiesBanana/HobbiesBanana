<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>취미에 바나나</title>
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
<link rel="stylesheet" href="resources/css/qnalist.css">
<link rel="stylesheet" href="resources/css/qna2.css">

</head>

<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="main.do"><img alt="취미에 바나나"
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
					<span class="subheading">Notice</span>
					<h1 class="mb-2">공지사항</h1>

				</div>
			</div>
		</div>
	</section>

	<div class="tableborder1">
		<table class="noticetable">
			<thead>
				<tr>
					<th class="noticeno">no.</th>
					<th class="noticetitle">제목</th>
					<th class="noticewriter">작성자</th>
					<th class="noticeday">작성일</th>
					<th class="noticeview">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ notice }" var="noticeList">
					<tr data-url="noticedetail.do?noticeId=${ noticeList.NOTICE_ID }"
						class="noticehover">
						<td>${ noticeList.NOTICE_ID }</td>
						<td>${ noticeList.TITLE }</td>
						<td>관리자</td>
						<c:set var="date" value="${ noticeList.WRITE_DATE }" />
						<td>${ fn:substring(date,0,10) }</td>
						<td>${ noticeList.NOTICE_IMG }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="row mt-5">
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<c:forEach var="i" begin="1" end="${ ncount }" step="1">
							<li class="pagebtn"><a
								href="finallist.do?npage=${ i }&qpage=1"><span>${ i }</span></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-99 heading-section text-center ftco-animate mb-5">
					<span class="subheading">question</span>
					<h1 class="mb-2">질문응답</h1>
				</div>
			</div>
		</div>
	</section>

	<div class="qnawriting">
		<a href="questioninsert.do"><button type="button"
				class="writingbutton">글쓰기</button></a>
	</div>
	<form action="qnalist.do?qpage=1&npage=1" method="post">
		<div class="container-searchbox">
			<span> <select name="qna_search">
					<option value="title">제목</option>
					<option value="name">작성자</option>
			</select>
			</span> <span><input type="text" name="qna_searchkeyword"
				placeholder="검색" onfocus="this.placeholder = ''"
				onblur="this.placeholder = '검색'" class="searchbox"></span> <span><input
				type="submit" value="검색" class="search-input"></span>
		</div>
		<div class="tableborder2">
			<table class="qnatable">
				<thead>
					<tr>
						<th class="qnano">no.</th>
						<th class="qnatitle">제목</th>
						<th class="qnawriter">작성자</th>
						<th class="qnaday">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ question }" var="questionList">
						<tr class="questionhover">
							<td>${ questionList.QUESTION_ID }</td>
							<td><div
									onclick="password('${ questionList.QUESTION_ID }','${ questionList.PASSWORD }')">${ questionList.TITLE }</div></td>
							<td>${ questionList.NAME }</td>
							<c:set var="date" value="${ questionList.WRITE_DATE }" />
							<td>${ fn:substring(date,0,10) }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:choose>
								<c:when test="${ search != null }">
									<c:forEach var="j" begin="1" end="${ count1 }" step="1">
										<li class="pagebtn"><a
											href="qnalist.do?qpage=${ j }&npage=1&qna_search=${search}&qna_searchkeyword=${keyword}"><span>${ j }</span></a></li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach var="j" begin="1" end="${ qcount }" step="1">
										<li class="pagebtn"><a
											href="finallist.do?qpage=${ j }&npage=1"><span>${ j }</span></a></li>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</form>


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
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
        </svg>
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
	<script src="resources/js/qnalist.js"></script>
	<script src="resources/js/clickpassword.js"></script>




</body>

</html>