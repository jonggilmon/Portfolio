<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="inquiryUpdateOk">
  	<input type="hidden" name="no" value="${ivo.no }">
	<div> <input type="text" name="title" value="${ivo.title}"> </div>
	<div> <input type="text" name="content" value="${ivo.content}"> </div>
	<div> <input type="submit" value="수정하기"> </div>
  </form>
</body>
</html>