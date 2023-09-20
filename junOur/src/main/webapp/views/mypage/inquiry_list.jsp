<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../main/top_bottom/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의사항</title>
<style>
  body {
    margin: 0;
    padding: 0;
    background-color: #fff;
    font-family: Arial, sans-serif;
  }

  section {
    max-width: 800px;
    margin: auto;
    padding: 20px;
    text-align: center;
  }

  h3 {
    color: white;
  }
  a {
    text-decoration: none;
    color: black;
    font-weight: bold;
  }

  .answer-complete {
    font-weight: normal;
  }

  .links {
    margin-top: 20px;
    background-color: #5D7687;
  }

  #title {
    width: 400px;
    font-size: 40px;
    background-color: black;
    color: white;
    margin: auto;
  }

  /* asd1 클래스에 대한 스타일 설정 */
  .asd1 {
    border: 1px solid #000;
    padding: 10px;
    margin: 10px 0;
    background-color: white;
    border-radius: 10px;
    /* 기타 원하는 스타일 속성을 추가하세요. */
  }
</style>
</head>
<body>
<section>
  <div id="title">내 문의사항</div>
  <c:forEach items="${ilist}" var="map">
    <div class="asd1"> <!-- asd1 클래스 추가 -->
      <a href="inquiry_content?no=${map.no}">제목 : ${map.title } | 아이디 : ${map.userid } | 작성일 : ${map.writeday}</a>
      <c:if test="${map.seq == 1 }">
        <span class="answer-complete">답변이 완료되었습니다</span>
      </c:if>
    </div>
  </c:forEach>
  <div class="links">
    <div><a href="inquiry_all" class="aa">전체 문의 보기</a></div>
    <div><a href="mtm" class="aa">문의하기</a></div>
  </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
