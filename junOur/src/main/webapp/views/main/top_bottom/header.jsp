<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Lobster Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap">
<!-- Roboto Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap">

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;700&display=swap">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

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
	background-color: rgba(40, 40, 40, 0.8);
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
	width: 1300px; 
	height: 40px;
	line-height: 40px;
	background: #333;
	display: flex;
	margin: 0 auto; /* 여기를 수정했습니다 */
	z-index: 10;
	background-color: transparent;
	font-size:18px;
	align-items: center;
	justify-content: space-between;
}

.navi li {
	width: 120px;
	text-align: center;
	color: black;
	 font-family: 'Oswald', sans-serif;
	
}

.navi>li:hover {
	/*  background: #333;  */
}

.navi a {
    font-family: 'Jua', sans-serif;
    font-size:22px;
    margin-left: -10px;
    color: white !important;
  
}

.navi li a {
	color: black;
	text-decoration: none;
	width: 120px;
}
.navi > li {
    position: relative;
    /* 나머지 스타일 */
}


.submenu {
	width: 110px;
	height: 160px;
	background: white;
    display:none;  
	padding: 0; /* ^^ val 이거 안주면 서브메뉴에 이상한 공간 생김 개빡가네 */
	background-color: rgba(40, 40, 40, 0.8);
	font-size:22px;
	    position: absolute; /* 추가 */
    top: 100%; /* 부모의 높이만큼 아래로 이동 */
    left: 0;   /* 부모의 왼쪽 경계에 정렬 */
}

.submenu li:hover {
	background: black;
}

.centered-items {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-grow: 1;  
}


.right-menu-items {
    display: flex;
    gap: 20px;
    margin-left: 100px;
    margin-right: 120px;
}

.right-menu-items > div {
    display: flex;
    gap: 10px;
}

.enlarged-text a{
    font-size: 28px !important;
}




</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- 이거 제이쿼리 버전 안맞아서 새로 가져옴 최신판으로 이걸로 바꾸니까 돌아감   -->
</head>
<body>
  <div class="header">
    <div class="logo">
        <a href="/main/main"><img src="/static/content/logo3.png"></a>
    </div>

    <ul class="navi">
        <c:if test="${userid==null}">
            <li class="enlarged-text"><a href="/mypage/inquiry_all">문의사항</a></li>
            <li class="enlarged-text"><a href="/admin/action/action_list">활동사진</a></li>
            <li class="enlarged-text"><a href="../free/free_list">자유게시판</a></li>
            <li class="enlarged-text"><a href="/gongji/gongji_list">공지사항</a></li>
            <li><a href="/member/login">로그인</a></li>
            <li><a href="/member/member">회원가입</a></li>
        </c:if>

        <c:if test="${userid!=null}">
            <c:choose>
                <c:when test="${userid == 'admin123'}">
                    <li><a href="/admin/menu">관리자 페이지</a></li> 
                </c:when>
                <c:otherwise>
                    <li class="enlarged-text"><a href="/mypage/inquiry_all">문의사항</a></li>
                    <li class="enlarged-text"><a href="/admin/action/action_list">활동사진</a></li>
                    <li class="enlarged-text"><a href="/free/free_list">자유게시판</a></li>
                    <li class="enlarged-text"><a href="/gongji/gongji_list">공지사항</a></li>
                </c:otherwise>
            </c:choose>

            <!-- 오른쪽에 위치해야하는 메뉴 항목들 -->
           <li class="right-menu-items">
    <c:choose>
        <c:when test="${userid != 'admin123'}">
            <div> <!-- 추가된 div 시작 -->
                <a href="#">마이페이지</a>
                <ul class="submenu">
                    <li><a href="/mypage/myinfo">내 정보</a></li>
                    <li><a href="/mypage/myreserve">예약내역</a></li>
                    <li><a href="/mypage/myjjim">찜 확인</a></li>
                    <li><a href="/mypage/inquiry_select">1:1 문의하기</a></li>
                </ul>
            </div> <!-- 추가된 div 종료 -->
        </c:when>
    </c:choose>
    <div>
        <a>${sessionScope.name}</a>
    </div>
    <div>
        <a href="/member/logout">로그아웃</a>
    </div>
</li>
    </c:if>
</ul>
</div>


    <script>
        $(document).ready(function() { 
            $('.navi>li').mouseover(function() {  
                $(this).find('.submenu').stop().slideDown(500); 
            }).mouseout(function() {
                $(this).find('.submenu').stop().slideUp(500);
            });
        });
    </script>
</body>

</html>