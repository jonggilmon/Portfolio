<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../admin/menu.jsp" %>	
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
   
   .nav-links {
    list-style: none;
    display: flex;
    margin: 3;
    padding: 0;
  }
  .nav-links li {
    margin-right: 20px;
  }
  .nav-links li a {
    color: #fff;
    text-decoration: none;
  }
  </style>
</head>
<body>
  
	<div id="section">
	  <table width="800" align="center">
	    <caption> <h2> 공지사항 </h2> </caption>
	    <tr align="center" id="pkc">
	      <td> 제목 </td>
	      <td> 작성자 </td>
	      <td> 조회수 </td>
	      <td> 작성일 </td>
	    </tr>
	    
	  <c:forEach items="${glist}" var="map">
	    <tr>
	      <td> <a href="readnum?no=${map.no}"> ${map.title} </a> </td>
	      <td> ${map.userid} </td>
	      <td> ${map.readnum} </td>
	      <td> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  
	    <tr>
	     <c:if test="${userid eq 'admin123'}"> 
	       <td colspan="4" align="center"> <a href="../gongji/adgongjiadd"> 글 등록 </a> </td>
	     </c:if>
	    </tr>
	  </table>
	  </div>
</body>
</html>
<%@ include file="../../main/top_bottom/footer.jsp" %>