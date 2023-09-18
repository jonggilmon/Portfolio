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
		<caption><h3>대기중인 문의사항들</h3></caption>
		<c:forEach items="${mlist }" var="mvo">
			<c:if test="${mvo.seq==0 }">
				<div><a href="answer?no=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a></div>
			</c:if>
		</c:forEach>
	</section>
</body>
</html>