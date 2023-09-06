<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <style>
     #del {
     display:none;
   }
    #section {
     width:1100px;
     height:500px; 
     margin:auto;   ㅇㄴㅇ3434324324324234
     margin-top:50px;
   }
   #section table tr td {
     border:1px solid #cccccc;
   }
   #section table tr:last-child td {
     border:none;
     height:50px;
   }
   #section table td {
     height:30px;
   }
   #section table #inner {
     width:500px;
     height:200px;
     overflow:auto;
   }
   
   #section table a {
     text-decoration:none;
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
  function del()
  {
	   document.getElementById("del").style.display="table-row";
  }
  </script>
 
  <div id="section">
     <table width="600" align="center">
       <caption> <h2> 게시판 내용 </h2></caption>
       <tr>
         <td width="100"> 제 목 </td>
         <td> ${avo.title} </td>
       </tr>
       <tr>
         <td> 사진 </td>
         <td> <img src="/static/action/${avo.img}" width="200"> </td>
       </tr>
       <tr>
         <td> 조회수 </td>
         <td> ${avo.readnum} </td>
       </tr>
       <tr>
         <td> 내 용 </td>
         <td> <div id="inner"> ${avo.content} </div> </td>
       </tr>
       <tr>
         <td colspan="2" align="center">
            <a href="action_list"> 목록 </a>
            <a href="action_update?no=${avo.no}"> 수정 </a>
              <a href="#" onclick="del()"> 삭제 </a>
         </td>
       </tr>
    <tr id="del">
     <td colspan="2" align="center"  style="border:none;">
      <form method="post" action="action_delete">  
       <input type="hidden" name="no" value="${avo.no}">
       <input type="submit" value="삭제">
     </form>
    </td>
   </tr>
     </table>
  
  </div>

 