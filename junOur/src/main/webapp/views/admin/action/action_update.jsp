<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../admin/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #section {
        height: 650px;
    }
    table {
        width: 700px;
        border-collapse: collapse;
        margin: auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 15px;
    }
    th {
        background-color: #f2f2f2;
        color: black;
    }
    caption {
        margin-bottom: 15px;
    }
    a {
        text-decoration: none;
    }
    input[type=text], textarea, input[type=file] {
        width: 100%;
        box-sizing: border-box;
    }
    textarea {
        height: 200px;
    }
</style>
</head>
<body>
<div id="section">
    <table width="700" align="center">
        <caption><h2>활동사진 수정</h2></caption>
        <form method="post" action="action_update_ok" enctype="multipart/form-data">
            <tr>
                <th width="100">제목</th>
                <td><input type="text" value="${avo.title}" name="title"></td>
            </tr>
            <tr>
                <th>이미지</th>
                <td><input type="file" name="img" value="${avo.img}"></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea name="content">${avo.content}</textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="hidden" name="no" value="${avo.no}">
                    <input type="submit" value="글 수정">
                </td>
            </tr>
        </form>
    </table>
</div>
<%@ include file="../../main/top_bottom/footer.jsp" %>
</body>
</html>
