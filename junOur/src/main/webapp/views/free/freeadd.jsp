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
        border-collapse: collapse;
        margin-top: 0px;
        border: 1px solid #ccc;
    }

    #section td {
        border: 1px solid #e5e5e5;
        padding: 10px 15px;
    }

    /* 제목 행 스타일링 */
    #section td:first-child {
        background-color: #f2f2f2;
        font-weight: bold;
        text-align: center;
    }

    /* 내용 영역 스타일링 */
    #inner {
        height:500px;
        max-height: 200px;
        background-color: #fdfdfd;
    }

    /* caption 스타일링 */
    #section caption h2 {
        margin-bottom:30px;
        color: #444;
    }

    /* 링크 스타일링 */
    #section a {
        color: #000000;
        text-decoration: none;
        padding: 5px 15px;
        border-radius: 4px;
        transition: background-color 0.2s;
    }

    #section a:hover {
        background-color: #000000;
        color: #fff;
    }
    
    #form{
    	height: 660px;
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
	    <td width="80"> 아이디 </td>
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

