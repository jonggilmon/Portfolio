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
    
  }
  .answer-complete {
  	color:blue;
    font-size: 15px;
	margin-left:420px;
	width:1700px;
	font-weight:bold;

  }
  .hidden-post {
  	width:1000px;
    background-color: #ccc;
    text-align:center;
    margin:auto;
    padding: 30px;
    font-size:20px;
    border-top:1px solid black;
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
    #pagechul {
      width:1100px;
      height:80px;
      line-height:80px;
      text-align:center;
      margin: 0 auto;
    }
    #pagechul a {
      text-decoration:none;
      color:black;
      display:inline-block;
      width:30px;
    }
</style>
</head>
<body>
<section>
  <div id="all">
  <div id="title">모든 문의사항</div>
  <c:if test="${userid != null }">
  	<div class="links">
    	<div id="link1"><a href="inquiry_list">내 문의 보기</a></div>
   	    <div id="link2"><a href="mtm">문의하기</a></div>
  	</div>
  </c:if>
  <div id="nae">
  	<div id="jul1">
  		<div id="title2">제 목</div>
  		<div id="userid2">아 이 디</div>
  		<div id="writeday2">작 성 일</div>
  	</div>
  <c:forEach items="${mlist }" var="mvo">
    <c:choose>
      <c:when test="${mvo.hide == 1 }">
        <div class="hidden-post">비밀 글입니다</div>
      </c:when>
      <c:otherwise>
        <div class="asd1"> <!-- asd1 클래스 추가 -->
          <a href="inquiry_all_content?no=${mvo.no}" id="title1"> ${mvo.title } </a>
           <a href="inquiry_all_content?no=${mvo.no}" id="userid1"> ${mvo.userid } </a>
           <a href="inquiry_all_content?no=${mvo.no}" id="writeday1"> ${mvo.writeday} </a>
           
        </div>
        <c:if test="${mvo.seq == 1 }">
            <span class="answer-complete">↳답변 완료</span>
           </c:if>
      </c:otherwise>
      
    </c:choose>
  </c:forEach>
  </div>
  
  </div>
  
  <div id="pagechul" align="center">
   
   <!-- 10페이지 이전으로  -->
   <c:if test="${pstart != 1}">
    <a href="inquiry_all?page=${pstart-1}"> << </a>
   </c:if>
   <c:if test="${pstart == 1}">
    <<
   </c:if>   
   <!-- 1페이지 왼쪽(이전)으로 -->
   <c:if test="${page != 1}"> 
    <a href="inquiry_all?page=${page-1}"> < </a>
   </c:if>
   <c:if test="${page == 1}"> 
    <
   </c:if> 
   
     <c:forEach begin="${pstart}" end="${pend}" var="i">
       <c:set var="nowpage" value=""/>
       <c:if test="${i==page}"> <!-- 현재페이지는 빨간색 -->
          <c:set var="nowpage" value="style='color:red'"/>
       </c:if>
        <a href="inquiry_all?page=${i}" ${nowpage}> ${i} </a>  
     </c:forEach>
     
     
   <!-- 1페이지 오른쪽(다음)으로 -->
   <c:if test="${page != chong}"> 
    <a href="inquiry_all?page=${page+1}"> > </a>  
   </c:if>
   <c:if test="${page == chong}"> 
    >
   </c:if> 
   
   <!-- 10페이지 다음으로 -->
   <c:if test="${pend != chong}"> 
     <a href="inquiry_all?pcode=page=${pend+1}"> >> </a>
   </c:if>
   <c:if test="${pend == chong}"> 
     >>
   </c:if>  
  </div>
  
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
