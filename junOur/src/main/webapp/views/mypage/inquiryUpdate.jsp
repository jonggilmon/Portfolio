<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/top_bottom/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 페이지</title>

<style>
    body {
        background-color: #f0f0f0;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        height:600px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ddd;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
    }
</style>

</head>
<body>
    <div class="container">
        <form method="post" action="inquiryUpdateOk">
            <input type="hidden" name="no" value="${ivo.no }">
            <div class="form-group">
                <label for="title">제목:</label>
                <input type="text" id="title" name="title" value="${ivo.title}">
            </div>
            <div class="form-group">
                <label for="content">내용:</label>
                <input type="text" id="content" name="content" value="${ivo.content}">
            </div>
            <div class="form-group">
                <input type="submit" value="수정하기">
            </div>
        </form>
        <div> <a href="inquiry_content?no=${ivo.no}">돌아가기</a></div>
    </div>
</body>
</html>

<%@ include file="../main/top_bottom/footer.jsp" %>
