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
    background-color: #fff; /* 배경색을 흰색으로 설정 */
    color: #000; /* 텍스트 색상을 검은색으로 설정 */
    margin: 0;
    padding: 0;
  }

  section {
    max-width: 600px;
    margin: auto;
    padding: 20px;
    text-align: center;
  }

  div {
    margin-bottom: 10px;
  }

  a {
    text-decoration: none;
    color: #000; /* 링크 텍스트 색상을 검은색으로 설정 */
  }
</style>
</head>
<body>
<section>
  <div>${name}님이 문의하신 글이 접수가 되었습니다.</div>
  <div> <a href="inquiry_list">내 문의 가기</a> </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
