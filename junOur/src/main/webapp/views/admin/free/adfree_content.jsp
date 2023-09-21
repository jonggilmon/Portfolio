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
    #del {
      
    }
    #section table {
      border-spacing:0px;
    }
    #section table tr:first-child td {
      border-top:2px solid #999999;
    }
    #section table tr:last-child td {
      border-bottom:2px solid #999999;
    }
    #section table td {
      height:30px;
      border-bottom:1px solid #cccccc;
    }
    #section a {
      text-decoration:none;
      color:black;
    }
  </style>
  

</head>
<body>
  <div id="section">
    <table width="600" align="center">
      <caption> <h2> 자유게시판 </h2> </caption>
      <tr>
        <td width="100"> 제목 </td> <td> ${fvo.title} </td>
      </tr>
      <tr>
        <td> 작성자 </td> <td> ${fvo.userid} </td>
      </tr>
      <tr>
        <td> 조회수 </td> <td> ${fvo.readnum} </td>
      </tr>
      <tr>
        <td> 내용 </td> <td> <div id="inner"> ${fvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
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
