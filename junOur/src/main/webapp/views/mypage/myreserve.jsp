<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 예약 현황 </title>
<style>
	body{
		margin: 0;
		padding: 0;
	}
	 section {
     width:1100px;
     height:700px;
     margin:auto;
     margin-top:50px;
   }
   section table {
     border-spacing:0px;
     border:1px solid #black;
   }
   section table tr:first-child td{
   	 border-top:2px solid black;
   }
   section table tr:last-child td{
   	 border-bottom :1px solid black;
   }
   section table td {
     height:30px;
   }


</style>
</head>
<%@ include file="../main/top_bottom/header.jsp" %>
<body>
  <section>
  <table align="center" width="1100">
   <tr align="center">
         <td> 예약번호 </td>
         <td> 예약자 성함 </td>
         <td> 예약한 날짜 </td>
       </tr>
  <caption><h1>내 예약현황 보기</h1></caption>
	<h3>회원님의 현재 예약정보 입니다.</h3><p>
	<c:forEach items="${rlist}" var="rvo">
		<tr>
			<td align="center">${rvo.reserve_id}</td>	
			<td align="center">${rvo.user_name}</td>
			<td align="center">${rvo.reserve_date}</td>
		</tr>
	</c:forEach>
	</table>
  </section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>