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
    
  }
  .answer-complete {
  	color:blue;
    font-size: 18px;
    font-weight:bold;
	margin-left:420px;
	width:200px;
	border:1px solid blakc;

  }
  .hidden-post {
  	width:800px;
    background-color: #ccc;
    text-align:center;
    margin:auto;
    padding: 30px;
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
  	width: 1000px;
	display:flex;
    padding: 30px;
    margin: auto;
    background-color: white;
    text-align:center;
    border-top:1px solid black;
  }
  #title1 {
  	display:inline-block;
  	width:300px;
  	font-size:20px;
  }
  #userid1 {
    display:inline-block;
    width:300px;
    margin-left:200px;
    font-size:20px;
  }
  #writeday1 {
    display:inline-block;
    width:300px;
    margin: auto;
    font-size:20px;
  }  
  #jul1 {
  	width: 1000px;
	display:flex;
    padding: 30px;
   	margin-left:320px;
    background-color: white;
    text-align:center;
  }
   #title2 {
  	width:300px;
  	display:inline-block;
  	margin:auto;
  	font-size:28px;
  }
  #userid2 {
  	width:300px;
  	display:inline-block;
  	margin-left:200px;
  	font-size:28px;
  }
  #writeday2 {
  	width:300px;
  	display:inline-block;
  	margin:auto;
  	font-size:28px;
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
  <div id="title">내 문의사항</div>
  	<div class="links">
    	<div id="link1"><a href="inquiry_all" class="aa">전체 문의 보기</a></div>
    	<div id="link2"><a href="mtm" class="aa">문의하기</a></div>
  	</div>
  <div id="jul1">
  		<div id="title2">제 목</div>
  		<div id="userid2">아 이 디</div>
  		<div id="writeday2">작 성 일</div>
  	</div>
  <c:forEach items="${ilist}" var="map">
    <div class="asd1"> <!-- asd1 클래스 추가 -->
      <a href="inquiry_content?no=${map.no}" id="title1">${map.title } </a>
       <a href="inquiry_content?no=${map.no}" id="userid1">${map.userid } </a>
       <a href="inquiry_content?no=${map.no}" id="writeday1">${map.writeday } </a>
    </div>
      <c:if test="${map.seq == 1 }">
        <span class="answer-complete">↳답변 완료</span>
      </c:if>
    
  </c:forEach>
  </div>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
