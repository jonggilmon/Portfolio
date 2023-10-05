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
       height:700px;
    }
    table {
        width: 700px;
        border-collapse: collapse;
        margin-top: 20px;
        margin:auto;
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
        text-decoration:none;
    }
</style>
</head>
<body>
  <c:if test="${userid == 'admin123'}">
	<div id="section">
	  <table width="700" align="center">
	    <caption> <h2> 공지사항 </h2> </caption>
	    <tr align="center" id="pkc">
	      <th> 제목 </th>
	      <th> 작성자 </th>
	      <th> 조회수 </th>
	      <th> 작성일 </th>
	    </tr>
	    
	  <c:forEach items="${glist}" var="map">
	    <tr>
	      <td> <a href="greadnum?no=${map.no}"> ${map.title} </a> </td>
	      <td align="center"> ${map.userid} </td>
	      <td align="center"> ${map.readnum} </td>
	      <td align="center"> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  
	    <tr>
	     <c:if test="${userid eq 'admin123'}"> 
	       <td colspan="4" align="center"> <a href="../gongji/adgongjiadd"> 글 등록 </a> </td>
	     </c:if>
	    </tr>
	  </table>
	  </div>
	  <%@ include file="../../main/top_bottom/footer.jsp" %>
	  </c:if>
	  <c:if test="${userid != 'admin123'}">
        
      </c:if>
</body>
</html>



