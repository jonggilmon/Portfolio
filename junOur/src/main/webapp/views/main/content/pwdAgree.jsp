<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="../top_bottom/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 확인</title>
</head>
<body>
<c:if test="${not empty errorMessage}">
    <p style="color: red;">${errorMessage}</p>
</c:if>

<!-- 세션의 MemberVo 정보 출력 -->
<c:if test="${not empty sessionScope.user}">
    <p>Session User's ID: ${sessionScope.user.userid}</p>
    <p>Session User's Password: ${sessionScope.user.pwd}</p>
</c:if>

<%
    String captcha = java.util.UUID.randomUUID().toString().substring(0, 6).toUpperCase();
    session.setAttribute("captcha", captcha);
%>

<form action="/content/pwdAgree" method="post">
    비밀번호 확인: <input type="password" name="password">
    
     <!-- 보안 문자 출력 및 입력 필드 추가 -->
    <p>보안 문자: ${captcha}</p>
    <input type="text" name="userCaptcha" placeholder="위의 보안 문자를 입력하세요">
    
    <input type="submit" value="확인">
</form>
</body>
</html>

<%@ include file="../top_bottom/footer.jsp" %>
