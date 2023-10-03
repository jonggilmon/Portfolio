<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../admin/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    table {
        width: 700px;
        border-collapse: collapse;
        margin-top: 20px;
        margin:auto;
    }
    td {
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
        text-decoration:none;
    }
</style>
</head>
<body>

    <table width="700" align="center">
      <caption> <h2> 자유게시판 </h2> </caption>
      <tr>
        <th width="100" align="center"> 제목 </th>
        <td> ${fvo.title} </td>
      </tr>
      <tr>
        <th align="center"> 작성자 </th>
        <td> ${fvo.userid} </td>
      </tr>
      <tr>
        <th align="center"> 조회수 </th>
        <td> ${fvo.readnum} </td>
      </tr>
      <tr height="200">
        <th align="center"> 내용 </th>
        <td> ${fvo.content} </td>
      </tr>
      <tr>
        <td colspan="2" align="center" style="border:none;">
          <a href="adfree_list"> 목록 </a>
        </td>
      </tr>
      <tr id="del">
        <td colspan="2" align="center" style="border:none;">
          <form method="post" action="delete">
            <input type="submit" value="삭제">
            <input type="hidden" name="no" value="${fvo.no}">
          </form>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>


