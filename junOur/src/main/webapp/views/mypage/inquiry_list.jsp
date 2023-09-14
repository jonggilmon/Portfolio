<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<caption><h3>내 문의</h3></caption>
			<c:forEach items="${ilist }" var="map">
				<div><a href="inquiry_content?no=${map.no}"> 제목 : ${map.title } | 아이디 : ${map.userid } | 작성일 : ${map.writeday}</a></div>
			</c:forEach>
	</section>
</body>
</html>