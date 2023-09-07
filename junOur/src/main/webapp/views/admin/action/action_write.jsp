<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		
	</style>
</head>
<body>
  <section>
  	<form method="post" action="action_write_ok" enctype="multipart/form-data">
  	<div> <a href="/../admin/menu">관리자 창으로 이동</a> </div>
  	 <div><input type="text" name="userid" value="admin123">아이디</div>
  	<div><input type="text" name="title">제목</div>
  	<div><textarea name="content"></textarea>내용(최대 200자)</div>
  	<div><input type="file" name="img">이미지 등록</div>
  	
  	
  	<div><input type="submit" value="활동사진 등록"></div>
  	
  	</form>
  </section>
</body>
</html>