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
    #section table {
      border-spacing:0px;
    }
    #section table tr:first-child td {
      border-top:2px solid #999999;
    }
    #section table tr:last-child td {
      border-bottom:2px solid #999999;
    }
    #section table td {
      height:30px;
      border-bottom:1px solid #cccccc;
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
    			document.getElementById("pk").innerText="비밀번호가 일치합니다";
    			document.getElementById("pk").style.color="blue";
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
    
    function pwdLength(my)
    {
    	var len=my.length;
    	
    	if(len < 8)
    	{
    		document.getElementById("pk2").innerText="비밀번호는 8자 이상 입력하세요";
    		document.getElementById("pk2").style.color="red";
    		pchk=1;
    	}
    	else
    	{
    		document.getElementById("pk2").innerText="비밀번호의 길이가 적당합니다";
    		document.getElementById("pk2").style.color="blue";
    		pchk=1;
    	}
    }
  </script>
</head>

<body>
  <div id="section">  
    <form method="post" action="freeadd_ok">

    <table width="600" align="center">
	  <caption> <h3> 자유게시판 </h3> </caption>
	  <tr>
	    <td> 아이디 </td>
	    <td> <input type="text" name="userid"> </td>
	  </tr>
	  <tr>
	    <td> 제목 </td>
	    <td> <input type="text" name="title"> </td>
	  </tr>
	  <tr>
	    <td> 내용 </td>
	    <td> <textarea cols="70" rows="20" name="content"></textarea> </td>
	  </tr>
	  <tr>
	    <td> 비밀번호 </td>
	    <td> <input type="password" name="pwd"> </td>
	  </tr>
	  <tr>
	    <td colspan="2" align="center">
	      <input type="submit" value="글쓰기">
	    </td>
	  </tr>
    </table>
    </form>
  </div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>

