<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
 <%@ include file="../main/top_bottom/header.jsp" %>
    <meta charset="UTF-8">
    <title>Account Locked</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-size: 16px;
        }

        header, footer {
            padding: 0;
            margin: 0;
            width: 100%;
            background-color: #333; 
            color: white; 
        }

        section {
            width: 1100px;
            height: 100%;
            margin: auto;
            margin-top: 70px;
            padding: 0; 
            box-sizing: border-box; 
        }

        section div {
            text-align: center;
            margin-bottom: 13px;
        }
    </style>
</head>
<body>
    <section>
        <h2>계정이 잠겼습니다</h2>
        <p>잠긴 계정은 10분 후 다시 시도할 수 있습니다.</p>
        <p><a href="/member/login">로그인 페이지로 돌아가기</a></p>
    </section>
  <%@ include file="../main/top_bottom/footer.jsp" %>
</body>
</html>
