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
    table {
        width: 700px;
        border-collapse: collapse;
        margin-top: 20px;
        margin:auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
    }
    th {
        background-color: #f2f2f2;
        color: black;
        align:center;
    }
    a {
        text-decoration:none;
    }
  </style>
</head>
<body>
    <c:if test="${userid == 'admin123'}">
	  <table width="700" align="center">
	    <caption> <h2> 자유게시판 </h2> </caption>
	    <tr align="center">
	      <th> 제목 </th>
	      <th> 작성자 </th>
	      <th> 조회수 </th>
	      <th> 작성일 </th>
	    </tr>
	    
	  <c:forEach items="${flist}" var="map">
	    <tr>
	      <td> <a href="readnum?no=${map.no}"> ${map.title} </a> </td>
	      <td align="center"> ${map.userid} </td>
	      <td align="center"> ${map.readnum} </td>
	      <td align="center"> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  </table>
	</div>
	</c:if>
	 <c:if test="${userid != 'admin123'}">
        
      </c:if>
</body>
</html>
<%@ include file="../../main/top_bottom/footer.jsp" %>