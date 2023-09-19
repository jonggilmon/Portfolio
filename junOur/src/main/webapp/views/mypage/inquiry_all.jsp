<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../main/top_bottom/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 문의사항</title>
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

  .hidden-post {
    background-color: #ccc;
  }

  .links {
    margin-top: 20px;
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
  }
</style>
</head>
<body>
<section>
  <div id="title">모든 문의사항</div>
  <c:forEach items="${mlist }" var="mvo">
    <c:choose>
      <c:when test="${mvo.hide == 1 }">
        <div class="hidden-post">비밀 글입니다</div>
      </c:when>
      <c:otherwise>
        <div class="asd1"> <!-- asd1 클래스 추가 -->
          <a href="inquiry_all_content?questnum=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a>
          <c:if test="${mvo.seq == 1 }">
            <span class="answer-complete">답변 완료</span>
          </c:if>
        </div>
      </c:otherwise>
    </c:choose>
  </c:forEach>
  <div class="links">
    <div><a href="inquiry_list">내 문의 보기</a></div>
    <div><a href="mtm">문의하기</a></div>
  </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
