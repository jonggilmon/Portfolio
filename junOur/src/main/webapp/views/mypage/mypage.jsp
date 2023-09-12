<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
	body{
		margin: 0;
		padding: 0;
	}
	section {
     width:1100px;
     height:500px;
     margin:auto;
     margin-top:150px;
     text-align:center;
   }
   section div{
   	font-size: 20px;
   	font-weight: 900;
   }
   a{
   	text-decoration: none;
   	color: black;
   }
</style>
</head>
<%@ include file="../main/top_bottom/header.jsp" %>
<body>
	<section>
		<div><a href="myinfo">내 정보 수정</a></div><p>
		<div><a href="#">내 예약 현황</a></div><p>
		<div><a href="#">1:1 문의하기</a></div><p>
	</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>