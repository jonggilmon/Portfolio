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
</head>
<body>
<c:if test="${userid == 'admin123'}">
<h2 align="center">예약 정보</h2>
<table>
    <tr>
        <th>예약번호</th>
        <th>아이디</th>
        <th>닉네임</th>
        <th>방번호</th>
        <th>예약신청날짜</th>
        <th>예약날짜</th>
        <th>예약장소주소</th>
        <th>예약시간</th>
         
    </tr>
    <!-- 아래는 예시 데이터입니다. 실제 데이터로 바꿔주세요 -->
    
     <c:forEach var="rere" items="${contents}">
        <tr>
            <td>${rere.reserve_id}</td>
            <td>${rere.user_id}</td>
            <td>${rere.user_name}</td>
            <td>${rere.reserve_no}</td>
            <td>${rere.reserve_date}</td>
            <td>${rere.rs_date}</td>
            <td>${rere.add_ress}</td>
            <td>${rere.rs_time}</td>  
            <td><button onclick="cancelMember('${rere.reserve_id}');">취소</button></td>  
        </tr>
    </c:forEach>

</table>
</c:if>
 <c:if test="${userid != 'admin123'}">
        
      </c:if>
<script>
function cancelMember(reserve_id) {
    if(confirm("정말로 이 예약신청을 취소하시겠습니까?")) {
        location.href = "/admin/content/cancelMember?reserve_id=" + reserve_id;
    }
}

</script>
</body>
</html>