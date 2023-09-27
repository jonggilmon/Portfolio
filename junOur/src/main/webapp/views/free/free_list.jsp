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
    #section {
      width:1100px;
      height:1000px;
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
    /* caption 스타일링 */
    #section caption h2 {
        margin-bottom:30px;
        color: #444;
    }
    #pkc td {
      color: black;
      font-weight: bold;
    }
    /* 링크 스타일링 */
    #section a {
        color: #000000;
        text-decoration: none;
        padding: 5px 15px;
        border-radius: 4px;
        transition: background-color 0.2s;
    }

    #section #aaa a:hover {
        background-color: #000000;
        color: #fff;
    }
    #page1 a {
    display:inline-block;
    }
  </style>
</head>
<body>
	<div id="section">
	  <table width="800" align="center">
	    <caption> <h2> 자유게시판 </h2> </caption>
	    <tr align="center" id="pkc">
	      <td width="400"> 제목 </td>
	      <td width="150"> 작성자 </td>
	      <td width="100"> 조회수 </td>
	      <td width="150"> 작성일 </td>
	    </tr>
	    
	  <c:forEach items="${flist}" var="map">
	    <tr>
	      <td> <a href="readnum?no=${map.no}"> ${map.title} </a> </td>
	      <td> ${map.userid} </td>
	      <td> ${map.readnum} </td>
	      <td> ${map.writeday} </td>
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
	  </div>
	    <tr>
	      <td colspan="4" align="center" id="aaa"> <a href="../free/freeadd"> 글 등록 </a> </td>
	    </tr>
	  </table>
	  
	</div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>

