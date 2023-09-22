<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="../top_bottom/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 확인</title>
   <style>
    body {
        background-color: #f4f4f4; /* 배경색을 짙은 회색으로 */
        font-family: 'Times New Roman', Times, serif; /* 웅장한 느낌의 폰트로 변경 */
        color: #ffffff; /* 글자색을 흰색으로 */
    }

    .content-center {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 68vh;
        flex-direction: column;
       
        background-color: rgba(0, 0, 0, 0.5); /* 약간 투명한 검정색 배경 */
        padding: 30px; /* 패딩 추가 */
       
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6); /* 그림자 효과 */
    }

    .content-center form {
        font-size: 1em;
    }

    .content-center input[type="password"], 
    .content-center input[type="text"], 
    .content-center input[type="submit"] {
        padding: 10px 20px;
        font-size: 23px;
        border-radius: 5px; /* 둥근 모서리 효과 */
        border: none; /* 테두리 제거 */
        margin-top: 10px; /* 상단 여백 추가 */
    }

    .content-center input[type="submit"] {
        background-color: #4CAF50; /* 버튼 색 변경 */
        color: white; /* 버튼 글자색 흰색으로 */
        cursor: pointer; /* 마우스를 올리면 손가락 모양으로 */
    }

    .content-center input[type="submit"]:hover {
        background-color: #45a049; /* 버튼 마우스오버 시 색 변경 */
    }

    /* 에러 메시지 스타일 변경 */
.content-center p[style*="color: red;"] {
    font-size: 24px;   /* 글씨 크기 */
    font-weight: bold; /* 글씨 두께 */
    font-family: 'Arial', sans-serif; /* 글씨체 변경 */
    padding: 10px; /* 패딩 추가 */
    border: 1px solid red; /* 테두리 추가 */
    background-color: rgba(255, 0, 0, 0.1); /* 약간 투명한 빨간 배경 */
    border-radius: 8px; /* 둥근 모서리 효과 */
}

.border-wrapper {
    border: 8px solid #333; /* 경계선 스타일 */
    padding: 20px; /* 내부 여백 */
    border-radius: 13px; /* 둥근 모서리 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    width: auto; /* 자동 너비 설정 */
    max-width: 500px; /* 최대 너비 설정, 필요에 따라 조절 가능 */
}


</style>
</head>
<body>
<div class="content-center">
    <!-- 여기서 새로운 div 시작 -->
    <div class="border-wrapper">
        <c:if test="${not empty errorMessage}">
            <p style="color: red; font-size: 1.5em; font-family: 'Arial', sans-serif;">${errorMessage}</p>
        </c:if>

        <!-- 세션의 MemberVo 정보 출력 -->
        <c:if test="${not empty sessionScope.user}">
            <p>Session User's ID: ${sessionScope.user.userid}</p>
            <p>Session User's Password: ${sessionScope.user.pwd}</p>
        </c:if>

        <%
            String captcha = java.util.UUID.randomUUID().toString().substring(0, 8).toUpperCase();
            session.setAttribute("captcha", captcha);
        %>

        <form action="/content/pwdAgree" method="post">
            비밀번호 확인: <input type="password" name="password">

            <!-- 보안 문자 출력 및 입력 필드 추가 -->
            <p>보안 문자: ${captcha}</p>
            <input type="text" name="userCaptcha" placeholder="위의 보안 문자를 입력하세요">

            <input type="submit" value="확인">
        </form>
    </div> <!-- border-wrapper div 종료 -->
</div>
</body>

</html>

<%@ include file="../top_bottom/footer.jsp" %>
