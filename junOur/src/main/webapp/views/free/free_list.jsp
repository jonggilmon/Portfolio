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
    body {
       background:#807979;
    }
    #section {
       height:700px;
    }
    table {
       width:900px;
       height:600px;
       border-radius:25px;
	   border:6px solid #242424;
       font-color:#242424;
       background-color:#242424;
       font-size:20px;
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
    #page1 a {
       display:inline-block;
    }
    td.left_top {
       border-top-left-radius:13px;
       background-color:#8C8C8C;
    }
    td.right_top {
       border-top-right-radius:13px;
    }
    td.mmt_under {
       border-bottom-left-radius:13px;
       border-bottom-right-radius:13px;
    }
    td.mmt_title {
       padding-left:20px;
    }
    a:hover {
       background-color:#242424;
       color:#FFFFFF;
       text-decoration:none;
       border-radius:5px;
    }
  </style>
</head>
<body>
	<div id="section">  
	  <table width="900" align="center">
	    <caption> <h2> 자유게시판 </h2> </caption>
	    <tr align="center" id="mmt">
	      <td width="400" class="left_top"> 제목 </td>
	      <td width="150"> 작성자 </td>
	      <td width="100"> 조회수 </td>
	      <td width="150" class="right_top"> 작성일 </td>
	    </tr>
	    
	  <c:forEach items="${flist}" var="map">
	    <tr>
	      <td class="mmt_title"> <a href="readnum?no=${map.no}&page=${page}"> ${map.title} </a> </td>
	      <td align="center"> ${map.userid} </td>
	      <td align="center"> ${map.readnum} </td>
	      <td align="center"> ${map.writeday} </td>
	    </tr>
	  </c:forEach>
	  
	  <tr>
       <td colspan="4" align="center" id="pagein">
         
         <div id="page1">
         <!-- 10페이지 왼쪽 이동 -->
         <c:if test="${pstart != 1}">
          <a href="free_list?page=${pstart-1}"> << </a>
         </c:if>
         <c:if test="${pstart == 1}">
          <<
         </c:if>
       
         <!-- 1페이지 왼쪽 -->
         <c:if test="${page != 1}">
          <a href="free_list?page=${page-1}"> < </a>
         </c:if>
         <c:if test="${page == 1}">
          <
         </c:if>
         
         <c:forEach begin="${pstart}" end="${pend}" var="i">
           <c:if test="${page != i}">
            <a href="free_list?page=${i}"> ${i} </a>
           </c:if>
           <c:if test="${page == i}">
            <a href="free_list?page=${i}" style="color:red"> ${i} </a>
           </c:if>
         </c:forEach>
         
          <!-- 1페이지 오른쪽 -->
         <c:if test="${page != chong}">
          <a href="free_list?page=${page+1}"> > </a>
         </c:if>
         <c:if test="${page == chong}">
          >
         </c:if>
         
         <!-- 10페이지 오른쪽 이동 -->
         <c:if test="${pend != chong}">
          <a href="free_list?page=${pend+1}"> >> </a>
         </c:if>
         <c:if test="${pend == chong}">
          >>
         </c:if>
       </td>
     </tr>
	    <tr>
	      <td colspan="4" align="center" class="mmt_under"> <a href="../free/freeadd"> 글 등록 </a> </td>
	    </tr>  
	  </table>
	</div>  
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>

