<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #section {
      width:1100px;
      height:500px;
      margin:auto;
      margin-top:50px;
      text-align:center;
    }
    #section input[type=text] {
      width:400px;
      height:30px;
    }
    #section textarea {
      width:400px;
      height:200px;
    }
    #section input[type=submit] {
      width:400px;
      height:30px;
    }
  </style>
</head>
<body>
  <div id="section">  
    <form method="post" action="hugiadd_ok">
	  <div> 제목 <input type="text" name="title"> </div>
	  <div> 이름 <input type="text" name="userid"> </div>
	  <div> 내용 <textarea name="content"> </textarea> </div>
	  <div> <input type="submit" value="글 등록"> </div>
    </form>
  </div>  
</body>
</html>