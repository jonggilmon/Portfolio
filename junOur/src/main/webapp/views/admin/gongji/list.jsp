<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>  d
</head>
<body>
	<div> 공지사항 </div>
	<c:forEach items="${glist}" var="map">
	  <div> 제목 : ${map.title }</div>
	  <div> 작성자 : ${map.userid }</div>
	  <div> 조회수 : ${map.readnum }</div>
	  <div> 작성일 : ${map.writeday }</div>
	</c:forEach>
	<div>김김김czczczc</div>ㅁㄴㅇasdasd
</body>
</html>