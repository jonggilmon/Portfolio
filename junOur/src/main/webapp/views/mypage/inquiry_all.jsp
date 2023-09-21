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
  section {
    width: 1700px;
    height:1000px;
    margin: auto;
    padding: 20px;
    background-color: #fff;
    font-family: Arial, sans-serif;
    margin-bottom: 50px;
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
  	color:blue;
    font-size: 15px;
   	margin:auto;
   	margin-left:-263px;
  }
  .hidden-post {
  	width:800px;
    background-color: #ccc;
    text-align:center;
    margin:auto;
  }

  /* .links 클래스의 스타일 */
.links {
  width: 300px;
  height: 30px;
  text-align: center;
  display: inline-block;
  vertical-align: top;
  margin-right: 20px;
  margin-bottom: 20px;
  position: sticky;
  top: 0; /* 화면 상단에 고정되도록 설정 */
  background-color: white; /* 배경색을 원하시는 색으로 지정하세요 */
  z-index: 1; /* 다른 내용 위에 나타나도록 z-index 설정 */
}

  #link1 {
  	width:200px;
  	height:100px;
  	border:1px solid black;
  	border-bottom: none;
  }
  #link1 a {
  	margin-top:35px;
  	font-size:30px;
  }
  #link2 {
  	width:200px;
  	height:100px;
  	border:1px solid black;
  }
  #link2 a {
  	margin-top:35px;
  	font-size:30px;
  }
  #title {
    width: 400px;
    font-size: 40px;
    background-color: black;
    color: white;
    margin: auto;
    text-align:center;
  }
  /* asd1 클래스에 대한 스타일 설정 */
  .asd1 {
  	width: 800px;
    border: 1px solid #000;
    padding: 10px;
    margin: auto;
    background-color: white;
    border-radius: 10px;
    text-align:center;
  }
  #all {
  	width:1700px;
  	height:1000px;
  	margin:auto;
  }
</style>
</head>
<body>
<section>
  <div id="all">
  <div id="title">모든 문의사항</div>
  <div class="links">
    <div id="link1"><a href="inquiry_list">내 문의 보기</a></div>
    <div id="link2"><a href="mtm">문의하기</a></div>
  </div>
  <div id="nae">
  <c:forEach items="${mlist }" var="mvo">
    <c:choose>
      <c:when test="${mvo.hide == 1 }">
        <div class="hidden-post">비밀 글입니다</div>
      </c:when>
      <c:otherwise>
        <div class="asd1"> <!-- asd1 클래스 추가 -->
          <a href="inquiry_all_content?no=${mvo.no}">제목 : ${mvo.title } </a>
           작성자 : ${mvo.userid } 
          | 작성일 : ${mvo.writeday}
          
          <c:if test="${mvo.seq == 1 }">
            <div class="answer-complete">↳답변 완료</div>
          </c:if>
        
        </div>
      </c:otherwise>
    </c:choose>
  </c:forEach>
  </div>
  </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
