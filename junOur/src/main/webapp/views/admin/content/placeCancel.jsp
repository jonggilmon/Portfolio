<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
     <%@ include file="../../admin/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
    table {
        width: 1300px;
        border-collapse: collapse;
        margin-top: 20px;
        margin:auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
        color: black;
    }
</style>
<body>
<h2 align="center">일정 등록 정보</h2>
<table>
    <tr>
    	<th>종목</th>
        <th>제목</th>
        <th>주소</th>
        <th>날짜</th>
        <th>시간</th>
    </tr>
    
      <c:forEach var="rvo" items="${rlist}">
        <tr>
            <td>
            <c:if test="${rvo.jongmok_id == 1}">
  		   		축구 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 2}">
  		   		농구 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 3}">
  		   		배구 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 4}">
  		   		야구 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 5}">
  		   		당구 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 6}">
  		   		볼링 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 7}">
  		   		골프 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 8}">
  		   		테니스 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 9}">
  		   		수영
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 10}">
  		   		배트민턴 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 11}">
  		   		탁구 
  		   	</c:if>
  		   	<c:if test="${rvo.jongmok_id == 12}">
  		   		족구 
  		   	</c:if>
            </td>
            <td>${rvo.title}</td>
            <td>${rvo.address}</td>
            <td>${rvo.rsdate}</td>
            <td>${rvo.rstime}</td>
            <td><button onclick="cancelplace('${rvo.no}');">취소</button></td>  
        </tr>
    </c:forEach>
    
</table>
<script>
function cancelplace(no) {
    if(confirm("정말로 이 장소를 삭제 하시겠습니까?")) {
        location.href = "/admin/content/cancelplace?no=" +no;
    }
}

</script>
</body>
</html>