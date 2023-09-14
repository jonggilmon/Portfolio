<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section> <!-- 답변 나오기 쿼리까지 짜놓음 -->
		<div> 제 목 : ${mvo.title}</div>
		<div> 내 용 : ${mvo.content }</div>
		<div> <a href="inquiryUpdate?no=${mvo.no}"> 수정 </a> <a href="inquiryDelete?no=${mvo.no}"> 삭제 </a></div>
		<hr>
		<form method="post" action="questOk">
			<div> 답변 제목 : <input type="text" name="title"> </div>
			
			<div> 답변 내용 : <input type="text" name="content"> </div>
			<div> <input type="submit" value="답변"> </div>
		</form>
		

	</section>
</body>
</html>