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
        background:#807979;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background:#807979;
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
        width:500px;
        padding: 10px;
        font-size: 16px;
		border:6px solid #242424;
    	border-radius:25px;  
    	  
    	}
    	textarea {
        width:500px;
        height:300px;
        padding: 10px;
        font-size: 16px;
		border:6px solid #242424;
    	border-radius:25px;  
    	  
    	}

    input[type="submit"] {
        border:6px solid #242424;
    	border-radius:25px;
        padding: 10px 20px;
        cursor: pointer;
    }
    #content {
    	width:500px;
    	height:300px;
    	text-align:none;
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
                <textarea id="content" name="content" height="300">${ivo.content} </textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="수정하기">
            </div>
        </form>
        <div> <a href="inquiry_content?no=${ivo.no}" style="color:black;">돌아가기</a></div>
    </div>
</body>
</html>

<%@ include file="../main/top_bottom/footer.jsp" %>
