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
		<div> 제 목 : ${mvo.title}
			
		</div>
		<div> 내 용 : ${mvo.content }</div>
		<c:if test="${mvo.seq == 1 }">
			<div><caption><h3> 답변 </h3></caption></div>
			<div> 내 용 : ${qvo.content }</div>
		</c:if>
		
			
				
	</section>
</body>
</html>