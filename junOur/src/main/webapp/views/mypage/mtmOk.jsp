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
    background:#807979;
    color: #000; /* 텍스트 색상을 검은색으로 설정 */
    margin: 0;
    padding: 0;
  }

  section {
    max-width: 600px;
    margin: auto;
    padding: 20px;
    text-align: center;
    height: 700px;
  }

  div {
    margin-bottom: 10px;
    font-size: 20px;
  }
  
  #aa{
  	margin-top: 150px;
  }
  #bb{
  	margin-top: 90px;
  }

  a {
    text-decoration: none;
    color: #000; /* 링크 텍스트 색상을 검은색으로 설정 */
    
  }
</style>
</head>
<body>
<section>
  <div id="aa">${name}님이 문의하신 글이 접수가 되었습니다.</div>
  <div id="bb"> <a href="inquiry_list">내 문의 가기</a> </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
