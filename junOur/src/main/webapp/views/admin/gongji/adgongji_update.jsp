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
        margin-top: 20px;
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
</style>
</head>
<body>
<c:if test="${userid == 'admin123'}">
<div id="section">
    <table width="700" align="center">
        <caption><h2>공지사항 수정</h2></caption>
        <form method="post" action="adgongji_update_ok">
            <tr>
                <th width="100">제목</th>
                <td><input type="text" value="${gvo.title}" name="title" placeholder="제 목" style="width:100%;"></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><input type="text" value="${gvo.userid}" name="userid" placeholder="아이디" style="width:100%;"></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea name="content" placeholder="내용을 입력하세요" style="width:100%; height:200px;">${gvo.content}</textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="hidden" name="no" value="${gvo.no}">
                    <input type="submit" value="글 수정">
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


