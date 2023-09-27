<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
       <%@ include file="../main/top_bottom/header.jsp" %>

   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<style>
    body {
      	 background:#807979;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #807979;
        height:600px;
    }

    .post {
        margin-bottom: 20px;
        border:6px solid #242424;
    	border-radius:25px;
        padding: 10px;
        background-color: #fff;
        margin-top: 100px;
    }

    .post:nth-child(even) {
        background-color: #f0f0f0;
    }

    .post-title {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .post-content {
        font-size: 16px;
    }

    .answer {
        font-style: italic;
    }

    a {
        color: black;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>
    <div class="container">
        <div class="post">
            <div class="post-title">제 목 : ${mvo.title}</div>
            <div class="post-content">내 용 : ${mvo.content }</div>
            <c:if test="${mvo.seq == 1 }">
                <div class="post-title"><h3>답변</h3></div>
                <div class="post-content answer">${qvo.content }</div>
            </c:if>
        </div>
        <div><a href="inquiry_all">전체 문의사항</a></div>
    </div>
</body>
</html>


<%@ include file="../main/top_bottom/footer.jsp" %>