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
  	body {
       background:#807979;
    }
    #section {
       height:700px;
    }
    table {
       width:900px;
       height:500px;
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
    #page1 a {
       display:inline-block;
    }
    td.left_top {
       border-top-left-radius:13px;
       background-color:#8C8C8C;
       font-size:20px;
    }
    td.right_top {
       border-top-right-radius:13px;
       padding-left:20px;
       font-size:17px;
    }
    td.mmt_under {
       border-bottom-left-radius:13px;
    }
    td.mmt_title {
       padding-left:20px;
    }
    td.mmt_under {
       border-bottom-left-radius:13px;
       border-bottom-right-radius:13px;
    }
    td.mmt {
       background-color:#8C8C8C;
       font-size:20px;
    }
    td.mmt_in {
       padding-left:20px;
       font-size:17px;
    }
    .button {
       display: inline-block;
       padding: 5px 15px;
       background-color: #8C8C8C;
       color: #FFFFFF;
       border: none;
       border-radius: 5px;
       cursor: pointer;
       margin: 5px;
       width: 70px;
    }
    .button:hover {
       background-color: #242424;
    }
    #action-buttons {
       text-align: center;
       height:50px;
    }
    #pwdSection {
        display: none;
        margin-top: 10px;
    }
    #del{
   	   display: none;
    }
  </style>
  <script>
    function del()
    {
    	document.getElementById("del").style.display="table-row";
    }
  </script>
</head>
<body>
  <div id="section">  
    <table width="900" align="center">
      <caption> <h2> 자유게시판 </h2> </caption>
      <tr>
        <td width="150" align="center" class="left_top"> 제목 </td>
        <td class="right_top"> ${fvo.title} </td>
      </tr>
      <tr>
        <td width="150" align="center" class="mmt"> 작성자 </td>
        <td class="mmt_in"> ${fvo.userid} </td>
      </tr>
      <tr>
        <td width="150" align="center" class="mmt"> 조회수 </td>
        <td class="mmt_in"> ${fvo.readnum} </td>
      </tr>
      <tr>
        <td width="150" align="center" class="mmt"> 내용 </td>
        <td class="mmt_in"> <div id="inner"> ${fvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" id="action-buttons" class="mmt_under">
          <a href="free_list" class="button">목록</a>
          <a href="free_update?no=${fvo.no}" class="button">수정</a>
          <a href="#" onclick="del()"> 삭제 </a>
        </td>
      </tr>
      <tr id="del">
       	<td colspan="2" align="center" style="border:none;">
       	<form method="post" action="delete">
	       	<input type="hidden" name="no" value="${fvo.no}">
	       	<input type="hidden" name="page" value="${page}">
			<input type="password" name="pwd">
			<input type="submit" value="삭제">       	
         </form>
         </td>
       </tr>
       <c:if test="${chk==1}">
   	   <tr>
   	  	 <td colspan="2" align="center" style="color:red;border:none;">
   	  	   비밀번호가 틀립니다.
   	  	 </td>
  	   </tr>
  	   </c:if>
    </table>
  </div>  
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
