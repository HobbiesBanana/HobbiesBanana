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
    <link rel="stylesheet" href="resources/css/mypage.css?after">
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
	  

    
    <section class="ftco-section testimony-section bg-light">
     <br/><br/>
	
     <div class="col-md-9 ftco-animate pb-5 mb-5 text-center" style="left:250px;">
    	 <div class="topline"> 
            <h1 class="mb-3 bread">취미조회 <i class="ion-ios-arrow-forward"></i></h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">등록취미조회</a></span></p>
        </div><hr/>
     </div>
     <div id="contain">   	 
		<div>
    		<aside>
		       	<ul class="mypagebar">
				  <li><a class="active" href="#hobby">취미 관리</a></li>
			      <li><a href="my1reghob.do?hostId=${ host.hostId }&memberId=${ sessionScope.memberId }">등록 취미 조회</a></li>
			      <li><a href="my1reqhob.do?memberId=${sessionScope.memberId }">신청 취미 조회</a></li>
			      <li><a href="my1bookmark.do?memberId=${sessionScope.memberId }">취미 즐겨찾기</a></li>
			      
			      <li><a class="active" href="#host">호스트 관리</a></li>
			      <li><a href="my2hostagree.do?memberId=${ sessionScope.memberId }">호스트 인증 신청</a></li>
			      <li><a href="my2hostprofile.do?hostId=${ host.hostId }&memberId=${sessionScope.memberId }">프로필 관리</a></li>
			      <li><a href="my2guestagree.do?hostId=${ host.hostId }&memberId=${ sessionScope.memberId }">게스트 관리</a></li>
			      
			      <li><a class="active" href="#member">회원 관리</a></li>
			      <li><a href="my3privacy.do?memberId=${sessionScope.memberId }">개인정보수정</a></li>
			      <li><a href="my3drop.do?memberId=${sessionScope.memberId }">회원탈퇴</a></li>
		    	</ul>
    		</aside>
      	</div>
    
	       <div>
	       <form action="hostprofileupdate.do" method="post" enctype="multipart/form-data">
	       	<img id="preview-image" class="profilephoto" src="resources/hostimages/${selecthostprofile.profileRealImg}" />
	       	<input id="input-image" type="file" name="file" />
	       	<input type="hidden" name='hostId' value='${ selecthostprofile.hostId }'/>
			<br/><br/>
			<input type="text" id="profiletext" name="introduce" value="${selecthostprofile.introduce}"><br/>
	    	<input type="submit" class="modifyprofileBtn" value="수정하기">
	       </form>
	    	
	      </div>
       </div> 
        </section>
       
        
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
  <script src="resources/js/hostprofile.js"></script>
    
</body>
</html>