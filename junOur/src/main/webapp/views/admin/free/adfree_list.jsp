<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../../admin/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #section {
     width:1100px;
     height:500px;
     margin:auto;
     margin-top:50px;
   }
   #section a {
     text-decoration:none;
     color:black;
   }
   #section table {
     border-spacing:0px;
   }
   #section table td {
     height:30px;
   }
   #section table .cont:hover {
     background:#eeeeee;
   }
   #section table #pkc td {
     background:#eeeeee;
   }
   #section table .pnum {
     font-size:20px;
   }
   #section table #write {
     text-align:center;
     color:black;
     margin-left:20px;
     display:inline-block;
     width:100px;
     height:30px;
     line-height:30px;
     border:1px solid black;
   }
  </style>
</head>
<body>
	<div id="section">
	  <table width="800" align="center">
	    <caption> <h2> 자유게시판 </h2> </caption>
	    <tr align="center" id="pkc">
	      <td> 제목 </td>
	      <td> 작성자 </td>
	      <td> 조회수 </td>
	      <td> 작성일 </td>
	    </tr>
	    
	  <c:forEach items="${flist}" var="map">
	    <tr>
	      <td> <a href="readnum?no=${map.no}"> ${map.title} </a> </td>
	      <td> ${map.userid} </td>
	      <td> ${map.readnum} </td>
	      <td> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  </table>
	</div>
	
</body>
</html>