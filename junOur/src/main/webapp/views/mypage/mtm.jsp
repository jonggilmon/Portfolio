<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/top_bottom/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #fff;
    color: #000;
    margin: 0;
    padding: 0;
     background:#807979;
    
  }

  section {
    max-width: 600px;
    margin: auto;
    padding: 20px;
    text-align: center;
    height: 700px;
         background:#807979;
    
  }

  div {
    margin-bottom: 10px;
  }

  input {
    width: 400px;
    padding: 10px;
    border:6px solid #242424;
    border-radius:25px;
  }
  textarea {
 	width: 400px;
 	height:300px;
    padding: 10px;
    border:6px solid #242424;
    border-radius:25px;
  }

  input[type="checkbox"] {
    margin-top: 10px;
    width:15px;
    height:15px;
  }

  input[type="submit"] {
    background-color: #000;
    color: #fff;
    border: none;
    cursor: pointer;
    margin:auto;
    width:400px;
  }
  

  a {
    text-decoration: none;
    color: #000;
  }

  #pwd {
    display: none;
  }
</style>
<script>
</script>
</head>
<body>
<section>
  <form method="post" action="mtmOk" name="mform">
    <div> <h3>1:1 문의사항</h3> </div>
    <div>
    	<select name="category">
    		<option value="0"> 예약 관련 </option>
    		<option value="1"> 서비스 관련 </option>
    		<option value="2"> 장소 문의 </option>
    		<option value="3"> 기타 </option>
    	</select>
    </div>
    <div> <input type="text" name="title" placeholder="문의 제목"> </div>
    <div> <textarea name="content" placeholder="문의 내용"></textarea></div>
    <div> <input type="checkbox" name="hide" id="hide" onclick="pwdClick()">비밀글 체크</div>
    <div id="pwd"> <input type="password" name="password" placeholder="비밀번호"> </div>
    <div> <input type="submit" value="문의하기"> </div>
  </form>
  <div> <a href="inquiry_list">내 문의 목록으로</a></div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
