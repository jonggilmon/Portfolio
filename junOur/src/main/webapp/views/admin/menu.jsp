<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    color: #fff;
    padding: 10px 20px; 

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
   <div class="header">
    
       <ul class="nav-links">
            <li><a href="/admin/member/memberView">회원관리</a></li>
            <li><a href="/admin/gongji/adgongji_list">공지사항</a></li>
            <li><a href="/admin/inquiry/list">문의사항</a></li>
            <li><a href="/admin/action/action_list">활동사진</a></li>
            <li><a href="/admin/free/adfree_list">자유게시판</a></li>
            <li><a href="/admin/content/contentadd">일정관리</a></li>
            <li><a href="/admin/content/placeCancel">일정취소</a></li>
            <li><a href="/admin/content/contentCancel">신청취소</a></li>
            <li><a href="/main/main">홈화면</a></li>
       </ul>
    </div>
</body>
</html>