<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미에 바나나</title>
<link rel="stylesheet" href="resources/css/detail.css">
</head>
<body>
	<div class="host-detail-container">
		    <div class="detail-contain">
		      <img src="resources/hostimages/${ host.PROFILE_REAL_IMG }" />
		      <div class="host_name">${ host.NAME }</div>
		      <div class="host_introduce">${ host.INTRODUCE }</div>
		      <form action="reviewinsert.do?host_id=${ host.HOST_ID }&hostId=${ host.HOST_ID }" method="post">
		        <span>리뷰등록</span>
		        <select class="rating" name="rating">
		          <option value="☆☆☆☆☆">☆☆☆☆☆</option>
		          <option value="★☆☆☆☆">★☆☆☆☆</option>
		          <option value="★★☆☆☆">★★☆☆☆</option>
		          <option value="★★★☆☆">★★★☆☆</option>
		          <option value="★★★★☆">★★★★☆</option>
		          <option value="★★★★★">★★★★★</option>
		        </select>
		        <input class="re-content" type="text" name="content" />
		        <input id="re_host_id" type="hidden" name="host_id" value="${ host.HOST_ID }" />
		        <input type="hidden" name="member_id" value="${ sessionScope.memberId }" />
		        <input type="submit" value="입력" />
		      </form>
		      <table>
		        <tr>
		          <td>RATING</td>
		          <td>USER</td>
		          <td>CONTENT</td>
		        </tr>
		          <c:forEach items="${ review }" var="reviewList">
		            <tr>
		          	  <td>${ reviewList.rating }</td>
			          <td>익명</td>
			          <td>${ reviewList.content }</td>
			        </tr>
		          </c:forEach>
		      </table>
		    </div>
		  </div>
		  
<script src="resources/js/detail.js"></script>
</body>
</html>