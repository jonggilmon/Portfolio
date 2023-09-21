<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap">

<style>

.logo a {
    font-family: 'Lobster', cursive;
    font-size: 45px;
    text-decoration:none;
    color:white;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    /* 기타 스타일들... */
}

body {
	list-style: none;
}

#searchSub {
	width: 400px;
	height: 70px;
}

#searchbutton {
	width: 70px;
	height: 74px;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center; 
	background-color: transparent;
	color: #fff;
	height: 150px;
	border-bottom:2px groove #323232;
	
}

.logo {
	align-items: center;
}

.logo img {
	width: 260px;
	height: 150px;

}

.navi {
	width: 360px; /* 로그인 시 주메뉴가 4개니까 한 놈당 100씩 .navi li랑 연동 서브메뉴도 맞춰줘야함 */
	width: 800px; /* 로그인 시 주메뉴가 4개니까 한 놈당 100씩 .navi li랑 연동 서브메뉴도 맞춰줘야함 */
	height: 40px;
	line-height: 40px;
	background: #333;
	display: flex;
	margin-right: 20px;
	margin-left: auto; 
	z-index: 10;
	background-color: transparent;
	font-size:18px;
}

.navi li {
	width: 120px;
	text-align: center;
	color: black;
}

.navi>li:hover {
	/*  background: #333;  */
}

.navi li a {
	color: black;
	text-decoration: none;
	width: 120px;
}

.submenu {
	width: 120px;
	height: 160px;
	background: white;
    display:none;  
	padding: 0; /* ^^ val 이거 안주면 서브메뉴에 이상한 공간 생김 개빡가네 */

}

.submenu li:hover {
	background: #eee;
}


</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- 이거 제이쿼리 버전 안맞아서 새로 가져옴 최신판으로 이걸로 바꾸니까 돌아감   -->
</head>
<body>
	<div class="header">
		<div class="logo">
  
    <a href="/main/main"><img src="/static/content/logo3.png"></a>
</div>
		>
		<ul class="navi">
			<c:if test="${userid==null}">
            <li><a href="/mypage/inquiry_all">문의사항</a></li>
            <li><a href="/admin/action/action_list">활동사진</a></li>
            <li><a href="../free/free_list">자유게시판</a></li>
            <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
            <li><a href="/member/login">로그인</a></li>
            <li><a href="/member/member">회원가입</a></li>
         </c:if>
         <c:if test="${userid!=null}">
            <c:choose>
               <c:when test="${userid == 'admin123'}">
                  <li><a href="/admin/menu">관리자 페이지</a></li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </c:when>
               <c:otherwise>
                  <li><a href="/admin/action/action_list">활동사진</a></li>            
                  <li><a href="#">마이페이지</a>
                     <ul class="submenu">
                        <li><a href="/mypage/myinfo">내 정보</a></li>
                        <li><a href="/mypage/myreserve">예약내역</a></li>
                        <li><a href="/mypage/myjjim">찜 확인</a></li>
                        <li><a href="/mypage/inquiry_select">1:1 문의하기</a></li>
                     </ul>
                  </li>
               </c:otherwise>
            </c:choose>
            <li><a href="/free/free_list">자유게시판</a></li>
            <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
            <li><a href="/mypage/inquiry_all">문의사항</a></li>
            <li>${sessionScope.name}</li>
            <li><a href="/member/logout">로그아웃</a></li>
         </c:if>




			<!-- 세션에 "userid" 키가 없으면 로그아웃 상태로 간주 -->


		</ul>
	</div>
	<script>
		$(document).ready(function() { /* 문서 시작 줄 아무런 의미없음 걍 필요한거 */
			$('.navi>li').mouseover(function() {  
				$(this).find('.submenu').stop().slideDown(500); 
				/* this > 주메뉴 하나를 지목 하는 것 우리는 내려오는게 마이페이지뿐이라 this=마이페이지라고 생각하면 됨  */
				/* this가 없을 시 아무 메뉴에 마우스를 올려도 하위메뉴가 주르륵 내려온다. */
				/* stop()은 특정효과를 해당 모션이 다 끝마치기전에 정지시켜야 할 때 주로쓰이는 메서드*/
			}).mouseout(function() {
				$(this).find('.submenu').stop().slideUp(500);
			});
		});
	</script>

</body>
</html>