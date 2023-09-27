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
	background:#807979;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif; /* 폰트 설정 */
    
  }

  section {
  background:#807979;
    display: flex;
    width: 1100px;
    height: 700px;
    margin: auto;
    margin-top: 50px;
    justify-content: space-around; /* 컨텐츠 사이의 간격을 균등하게 설정 */
    align-items: center; /* 컨텐츠를 수직 가운데로 정렬 */
  }

  #mymun, #mun {
    display: flex;
    flex-direction: column; /* 내용을 세로로 나열 */
    align-items: center; /* 내용을 수직 가운데로 정렬 */
    width: 150px;
    height: 100px;
	border:6px solid #242424;    
	padding: 20px; /* 내용과 테두리 간격 설정 */
    border-radius:25px;
    margin-bottom:70px;
  }

  #mymun a, #mun a {
    text-decoration: none; /* 링크 밑줄 제거 */
    width: 300px;
    height: 200px;
    text-align:center;
    color: #fff; /* 링크 텍스트 색상을 흰색으로 설정 */
    font-weight: bold; /* 링크 텍스트 굵게 설정 */
    font-size: 18px; /* 링크 텍스트 크기 설정 */
    margin-top:35px;
  }
	</style>
</head>
<body>
  <section>
	<div id="mymun"> <a href="inquiry_list">내 문의글</a></div>
	<div id="mun"> <a href="mtm"> 1:1 문의하기 </a></div>
  </section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>