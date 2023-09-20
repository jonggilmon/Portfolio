<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
     <%@ include file="../../admin/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 리스트</title>
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

<h2 align="center">회원 정보</h2>
<table>
    <tr>
        <th>닉네임</th>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>휴대폰번호</th>
        <th>이메일</th>
        <th>가입일</th>
        <th>성별</th>
        <th>생년월일</th>
        
    </tr>
    <!-- 아래는 예시 데이터입니다. 실제 데이터로 바꿔주세요 -->
    
     <c:forEach var="member" items="${members}">
        <tr>
            <td>${member.name}</td>
            <td>${member.userid}</td>
            <td>${member.pwd}</td>
            <td>${member.phone}</td>
            <td>${member.email}</td>
            <td>${member.writeday}</td>
            <td>${member.gender}</td>
            <td>${member.birth}</td>
            <td><button onclick="banMember('${member.userid}');">추방</button></td>
        </tr>
    </c:forEach>

</table>
<script>
    function banMember(userid) {
        if(confirm("정말로 이 회원을 추방하시겠습니까?")) {
            location.href = "/admin/member/banMember?userid=" + userid;
        }
    }
</script>

</body>
</html>