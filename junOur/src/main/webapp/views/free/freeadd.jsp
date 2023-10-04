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
       background: #807979;
    }
    #section {
       height:700px;
    }
    table {
       width: 900px;
       border-radius: 25px;
       border: 6px solid #242424;
       background-color: #242424;
       margin: auto;
       font-size:20px;
    }
    th, td {
       border: 1px solid #242424;
       padding: 15px;
       background-color:#8C8C8C;
    }
    th {
       background-color: #f2f2f2;
       color: black;
    }
    caption {
       margin-bottom: 15px;
    }
    a {
       text-decoration: none;
    }
    input[type=text], textarea {
       width: 100%;
       box-sizing: border-box;
    }
    textarea {
       height: 200px;
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
  </style>
  <script>
  
    var pchk=0;
    function pwdCheck()
    {
    	var pwd=document.mform.pwd.value;
    	var pwd2=document.mform.pwd2.value;
    	
    	if(pwd2.length > 0)
    	{
    		if(pwd==pwd2)
    		{
    			pchk=1;
    		}
    		else
    		{
    			document.getElementById("pk").innerText="비밀번호가 불일치합니다";
    			document.getElementById("pk").style.color="red";
    			pchk=0;
    		}
    	}
    }
    
  </script>
</head>

<body>
  <div id="section">
    <form method="post" action="freeadd_ok" id="form">
    <table width="800" align="center">
	  <caption> <h3> 자유게시판 </h3> </caption>
	  <tr>
	    <td width="80" class="left_top" align="center"> 아이디 </td>
	    <td class="right_top"> <input type="text" name="userid"> </td>
	  </tr>
	  <tr>
	    <td align="center"> 제목 </td>
	    <td> <input type="text" name="title"> </td>
	  </tr>
	  <tr>
	    <td align="center"> 내용 </td>
	    <td> <textarea cols="70" rows="20" name="content"></textarea> </td>
	  </tr>
	  <tr>
	    <td align="center"> 비밀번호 </td>
	    <td> <input type="password" name="pwd"> </td>
	  </tr>
	  <tr>
	    <td colspan="2" align="center" class="mmt_under">
	      <input type="submit" value="글쓰기">
	    </td>
	  </tr>
    </table>
    </form>
  </div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>

