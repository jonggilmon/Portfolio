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
        height: 700px;
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
    input[type=text], textarea {
        width: 100%;
        box-sizing: border-box;
    }
    textarea {
       height:200px;
    }
</style>
</head>
<body>
<c:if test="${userid == 'admin123'}">
<div id="section">
    <table align="center">
        <caption><h2>공지사항 글쓰기</h2></caption>
        <form method="post" action="adgongjiaddOk">
            <tr>
                <th width="100">제목</th>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><input type="text" name="userid" value="admin123"></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea name="content"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="글 등록">
                </td>
            </tr>
        </form>
    </table>
</div>
<%@ include file="../../main/top_bottom/footer.jsp" %>
</c:if>
  <c:if test="${userid != 'admin123'}">
        
      </c:if>
</body>
</html>
