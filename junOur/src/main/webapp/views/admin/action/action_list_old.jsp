<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- list.jsp -->
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
   #section table #head td {
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
   
  </style>
  <script>
  
  </script>
 
  <div id="section">
     <table width="800" align="center">
       <caption> <h2> 게시판 </h2></caption>
       <tr align="center" id="head">
         <td> 사 진 </td>
         <td> 제 목 </td>
         <td> 조회수 </td>
         <td> 작성일 </td>
       </tr>
       
      <c:forEach items="${list}" var="avo">
       <tr>
         <td>  <img src="/static/action/${avo.img}" width="100"></td>
         <td> <a href="action_readnum?no=${avo.no}"> ${avo.title} </a> </td>
         <td> ${avo.readnum} </td>
         <td> ${avo.writeday} </td>
        </tr>
      </c:forEach>
      
     
       <tr>
         <td colspan="4" align="center"> <a href="/admin/action/action_write"> 글 등록 </a> </td>
       </tr>
     </table>
</body>
</html>







