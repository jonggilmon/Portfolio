<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div> 제 목 : ${mvo.title}</div>
		<div> 내 용 : ${mvo.content }</div>
		<div> <a href="inquiryUpdate?no="+${mvo.no}> 수정 </a> <a href="inquiryDelete"> 삭제 </a></div>
	</section>
</body>
</html>