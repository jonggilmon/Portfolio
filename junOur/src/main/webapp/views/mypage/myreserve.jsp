<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 예약 현황 </title>
</head>
<body>
  <section>
	회원님의 현재 예약정보 입니다.
	<c:forEach items="${rlist}" var="rvo">
		예약 한 날짜 : ${rvo.reserve_date}
	</c:forEach>
  </section>
</body>
</html>