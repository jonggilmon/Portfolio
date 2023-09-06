<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<style>
	body{
		margin: 0;
		padding: 0;
		
	}

	
</style>
<meta charset="UTF-8">
 <%@ include file="../top_bottom/header.jsp" %>
<title>Insert title here</title>
</head>
<body>
	<table width="700" align="center">
	<caption><h3>최근 예약 정보입니다.</h3></caption>
	<c:if test="${not empty recentReserveInfo}">
        <tr>
            <td>종목</td>
            <td>${recentReserveInfo.reserve_no}</td>
        </tr>
        <tr>
            <td>예약번호</td>
            <td>${recentReserveInfo.reserve_id}</td>
        </tr>
        <tr>
            <td>신청자 아이디</td>
            <td>${recentReserveInfo.user_id}</td>
        </tr>
        <tr>
            <td>신청자 닉네임</td>
            <td>${recentReserveInfo.user_name}</td>
        </tr>
	</c:if>
    </table>
</body>
</html>

  <%@ include file="../top_bottom/footer.jsp" %>