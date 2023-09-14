<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
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
	background-color: #333;
	color: #fff;
}

.logo {
	align-items: center;
}

.logo img {
	width: 180px;
	height: 140px;
}

.navi {
	width: 460px; /* 로그인 시 주메뉴가 4개니까 한 놈당 100씩 .navi li랑 연동 서브메뉴도 맞춰줘야함 */
	height: 40px;
	line-height: 40px;
	background: #333;
	display: flex;
	margin-right: 10px;
	z-index: 10;
}

.navi li {
	width: 115px;
	text-align: center;
}

.navi>li:hover {
	background: #333;
}

.navi li a {
	color: #fff;
	text-decoration: none;
}

.submenu {
	width: 115px;
	height: 120px;
	background: black;
	display:none; 
	padding: 0; /* ^^ val 이거 안주면 서브메뉴에 이상한 공간 생김 개빡가네 */

}

.submenu li:hover {
	background: #333;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- 이거 제이쿼리 버전 안맞아서 새로 가져옴 최신판으로 이걸로 바꾸니까 돌아감   -->
</head>
<body>
	<div class="header">
		<div class="logo">
			<a href="/main/main"> <img src="/static/main/mm.png"></a>
		</div>
		<div class="search">
			<input type="text" placeholder="검색어를 입력하세요" id="searchSub">
			<button id="searchbutton">검색</button>
		</div>
		<ul class="navi">
			<c:if test="${userid==null}">
				<li><a href="/member/login">로그인</a></li>
				<li><a href="/member/member">회원가입</a></li>
				<li>문의사항</li>
			</c:if>
			<c:if test="${userid!=null}">
				<c:choose>
					<c:when test="${userid == 'admin123'}">
						<li><a href="/admin/menu">관리자 페이지</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="#">문의사항</a></li>
						<li><a href="#">마이페이지</a>
							<ul class="submenu">
								<li><a href="/mypage/myinfo">내 정보</a></li>
								<li><a href="/mypage/myreserve">예약내역</a></li>
								<li><a href="#">1:1 문의하기</a></li>
							</ul>
						</li>

					</c:otherwise>
				</c:choose>
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