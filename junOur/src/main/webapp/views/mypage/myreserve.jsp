<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 예약 현황 </title>
</head>
<%@ include file="../main/top_bottom/header.jsp" %>
<body>
  <section>
	회원님의 현재 예약정보 입니다.
	<c:forEach items="${rlist}" var="rvo">
		예약 한 날짜 : ${rvo.reserve_date}
		예약자 이름 : ${rvo.user_name}
	</c:forEach>
  </section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>