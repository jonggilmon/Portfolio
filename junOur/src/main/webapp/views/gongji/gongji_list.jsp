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
    
    body {
       background:#807979;
    }
    #section {
       height:650px;
    }
    table {
       width:800px;
       height:400px;
       border-radius:25px;
	   border:6px solid #242424;
       font-color:#242424;
       background-color:#242424;
    }
    table tr {
       border-radius:13px;
       background-color:#BDBDBD;
    }
    table td, table th {
       border: 1px solid #242424;
    }
    #mmt td {
       background-color:#8C8C8C;
       height:50px;
       font-size:20px;
    }
    td.left_top {
       border-top-left-radius:13px;
       background-color:#8C8C8C;
    }
    td.right_top {
       border-top-right-radius:13px;
    }
    td.mmt_under_left {
       border-bottom-left-radius:13px;
    }
    td.mmt_under_right {
       border-bottom-right-radius:13px;
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
	    <tr align="center" id="mmt">
	      <td width="400" class="left_top"> 제목 </td>
	      <td width="150"> 작성자 </td>
	      <td width="100"> 조회수 </td>
	      <td width="150" class="right_top"> 작성일 </td>
	    </tr>
	    
	  <c:forEach items="${glist}" var="map">
	    <tr>
	      <td class="mmt_under_left"> <a href="readnum?no=${map.no}"> ${map.title} </a> </td>
	      <td align="center"> ${map.userid} </td>
	      <td align="center"> ${map.readnum} </td>
	      <td align="center" class="mmt_under_right"> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  
	    <tr>
	     <c:if test="${userid eq 'admin123'}"> 
	       <td colspan="4" align="center"> <a href="../admin/gongji/adgongjiadd"> 글 등록 </a> </td>
	     </c:if>
	    </tr>
	  </table>
	</div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>