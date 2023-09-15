<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section> <!-- 답변 나오기 쿼리까지 짜놓음 -->
		<div> 제 목 : ${mvo.title} </div>
		<div> 내 용 : ${mvo.content } </div>
		
		<hr>
		
		<form method="post" action="questOk">
			<div> 답변 내용 : <textarea name="content"> </textarea> </div>
			<div> <input type="submit" value="답변"> </div>
		</form>
		
	</section>
</body>
</html>