<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../main/top_bottom/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    margin: 0;
    padding: 0;
    background-color: #fff; /* 배경색을 흰색으로 설정 */
    font-family: Arial, sans-serif; /* 폰트 설정 */
  }

  section {
    max-width: 800px; /* 섹션의 최대 너비 설정 */
    margin: auto;
    padding: 20px;
    text-align: center;
  }

  h3 {
    color: white; /* 헤더 텍스트 색상을 검정색으로 설정 */
  }

 div {
  border: 1px solid #000; /* 테두리 설정 */
  padding: 10px;
  margin: 10px 0;
  background-color: white; /* 배경색을 검정색으로 설정 */
  border-radius: 10px; /* 테두리 모서리를 뭉툭하게 설정 */
}

  a {
    text-decoration: none; /* 링크 밑줄 제거 */
    color: black; /* 링크 텍스트 색상을 흰색으로 설정 */
    font-weight: bold; /* 링크 텍스트 굵게 설정 */
  }

  .answer-complete {
    font-weight: normal; /* 답변이 완료된 경우 텍스트 굵기를 보통으로 변경 */
  }

  .links {
    margin-top: 20px;
    background-color:#5D7687;
  }
  #title {
  	width:400px;
  	font-size:40px;
    background-color: black; /* 비밀 글 배경색 설정 */
  	color:white;
  	margin:auto;
  }
</style>
</head>
<body>
<section>
  <div id="title">내 문의사항</div>
  <c:forEach items="${ilist }" var="map">
    <div>
      <a href="inquiry_content?no=${map.no}">제목 : ${map.title } | 아이디 : ${map.userid } | 작성일 : ${map.writeday}</a>
      <c:if test="${map.seq == 1 }">
        <span class="answer-complete">답변이 완료되었습니다</span>
      </c:if>
    </div>
  </c:forEach>
  <div class="links">
    <div ><a href="inquiry_all" class="aa">전체 문의 보기</a></div>
    <div ><a href="mtm" class="aa">문의하기</a></div>
  </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
