<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    #section {
      width:1100px;
      height:600px;
      margin:auto;
      margin-top:20px;
    }
    /* 테이블 스타일링 */
    #section table {
        border-collapse: collapse;
        border: 1px solid #EAEAEA;
        font-color:#000000;
    }
    #section td, #section th {
        border: 1px solid #EAEAEA;
        padding: 10px 15px;
    }
    /* 제목 행 스타일링 */
    #pkc {
        background-color: #f2f2f2;
        color: #fff;
    }
    /* 행 호버 효과 */
    #section tr:not(#pkc):hover {
        background-color: #f5f5f5;
    }
    /* caption 스타일링 */
    #section caption h2 {
        margin-bottom:30px;
        color: #444;
    }
    #pkc td {
      color: black;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <c:if test="${gvo.userid eq 'admin123'}">
    <div class="header">
	  <ul class="nav-links">
        <li><a href="/admin/member/memberView">회원관리</a></li>
        <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
        <li><a href="/admin/inquiry/list">문의사항</a></li>
        <li><a href="/admin/action/action_list">활동사진</a></li>
        <li><a href="/admin/free/adfree_list">자유게시판</a></li>
        <li><a href="/admin/content/contentadd">일정관리</a></li>
        <li><a href="/main/main">홈화면</a></li>
      </ul>
    </div>
  </c:if>  
	<div id="section">
	  <table width="800" align="center">
	    <caption> <h2> 공지사항 </h2> </caption>
	    <tr align="center" id="pkc">
	      <td width="400"> 제목 </td>
	      <td width="150"> 작성자 </td>
	      <td width="100"> 조회수 </td>
	      <td width="150"> 작성일 </td>
	    </tr>
	    
	  <c:forEach items="${glist}" var="map">
	    <tr>
	      <td> <a href="readnum?no=${map.no}"> ${map.title} </a> </td>
	      <td align="center"> ${map.userid} </td>
	      <td align="center"> ${map.readnum} </td>
	      <td align="center"> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  
	    <tr>
	     <c:if test="${userid eq 'admin123'}"> 
	       <td colspan="4" align="center"> <a href="../gongji/gongjiadd"> 글 등록 </a> </td>
	     </c:if>
	    </tr>
	  </table>
	  </div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>