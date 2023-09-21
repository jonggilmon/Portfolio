<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../main/top_bottom/header.jsp" %>
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
            <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
            <li><a href="/admin/inquiry/list">문의사항</a></li>
            <li><a href="/admin/action/action_list">활동사진</a></li>
            <li><a href="/admin/free/adfree_list">자유게시판</a></li>
            <li><a href="/admin/content/contentadd">일정관리</a></li>
            <li><a href="/main/main">홈화면</a></li>
       </ul>
    </div>
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
	      <td colspan="4" align="center"> <a href="../gongji/gongjiadd"> 글 등록 </a> </td>
	     </c:if>
	    </tr>
	  </table>
	  </div>
</body>
<%@ include file="../../main/top_bottom/footer.jsp" %>
</html>