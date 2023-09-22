<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../main/top_bottom/header.jsp" %>
  <style>
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
   
    /* 테이블 스타일링 */
    #section {
      width:1100px;
      height:600px;
      margin:auto;
      margin-top:20px;
    }
    
    #section table {
        border-collapse: collapse;
        margin-top: 0px;
        border: 1px solid #ccc;
    }

    #section td {
        border: 1px solid #e5e5e5;
        padding: 10px 15px;
    }

    /* 제목 행 스타일링 */
    #section td:first-child {
        background-color: #f2f2f2;
        font-weight: bold;
        text-align: center;
    }

    /* 내용 영역 스타일링 */
    #inner {
        height:500px;
        max-height: 200px;
        background-color: #fdfdfd;
    }

    /* caption 스타일링 */
    #section caption h2 {
        margin-bottom:30px;
        color: #444;
    }

    /* 링크 스타일링 */
    #section a {
        color: #000000;
        text-decoration: none;
        padding: 5px 15px;
        border-radius: 4px;
        transition: background-color 0.2s;
    }

    #section a:hover {
        background-color: #000000;
        color: #fff;
    }
    
  </style>

</head>
<body>
  <c:if test="${gvo.userid eq 'admin123'}">
	  <ul class="nav-links">
        <li><a href="/admin/member/memberView">회원관리</a></li>
        <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
        <li><a href="/admin/inquiry/list">문의사항</a></li>
        <li><a href="/admin/action/action_list">활동사진</a></li>
        <li><a href="/admin/free/adfree_list">자유게시판</a></li>
        <li><a href="/admin/content/contentadd">일정관리</a></li>
        <li><a href="/main/main">홈화면</a></li>
      </ul>
  </c:if>
  
  <div id="section">
    <table width="800" align="center">
      <caption> <h2> 공지사항 </h2> </caption>
      <tr>
        <td width="80" align="center"> 제목 </td>
        <td> ${gvo.title} </td>
      </tr>
      <tr>
        <td align="center"> 작성자 </td>
        <td> ${gvo.userid} </td>
      </tr>
      <tr>
        <td align="center"> 조회수 </td>
        <td> ${gvo.readnum} </td>
      </tr>
      <tr>
        <td align="center"> 내용 </td>
        <td> <div id="inner"> ${gvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="gongji_list"> 목록 </a>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>