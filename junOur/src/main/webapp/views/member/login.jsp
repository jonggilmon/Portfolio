<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 
 
  body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-size: 16px;
    background:#807979;
  }

 
  header, footer {
    padding: 0;
    margin: 0;
    width: 100%;
    background-color: #333; 
    color: white; 
  }

  
  section {
    width: 1100px;
    height: 100%;
    margin: auto;
    margin-top: 70px;
    padding: 0; 
    box-sizing: border-box; 
  }
    section {
      width:1100px;
      height:700px;
      margin:auto;
      margin-top:70px;
    }
    section div {
      text-align:center;
      margin-bottom:13px;
    }
    section input[type=text] {
      width:400px;
      height:40px;
       border:6px solid #242424;
    border-radius:25px;
    margin-top:10px;
    }
    section input[type=password] {
      width:400px;
      height:40px;
       border:6px solid #242424;
    border-radius:25px;
    margin-top:10px;
    }
    section input[type=submit] {
      width:407px;
      height:43px;
       border:6px solid #242424;
    border-radius:25px;
    margin-top:10px;
    cursor:pointer;
    color:white;
    background:#242424;
    }
    section #find  a{
      display:inline-block;
      color:black;
    }
  </style>
</head>
<body> 
  <%@ include file="../main/top_bottom/header.jsp" %>
  <section>
  
     <form method="post" action="loginOk">
       <div> <input type="text" name="userid" id="userid" placeholder="아이디" > </div>
       <div> <input type="password" name="pwd" id="pwd" placeholder="비밀번호"> </div>
       <div> <input type="submit" value="로그인"> </div> 
       <div id="find"> <a href="idfind">아이디 찾기</a>/<a href="pwdfind">비밀번호 찾기</a> </div>
     </form>
  
  </section>
  <%@ include file="../main/top_bottom/footer.jsp" %>
</body>
</html>