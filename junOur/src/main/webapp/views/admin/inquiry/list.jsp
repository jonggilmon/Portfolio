<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    background-color: #f5f5f5; /* 흰색 배경색 */
    font-family: Arial, sans-serif; /* 폰트 설정 */
  }
  section {
    background-color: #ffffff; /* 흰색 배경색 */
    padding: 20px;
    margin: 20px;
    border: 1px solid #000000; /* 검은색 테두리 */
  }
  caption h3 {
    color: #000000; /* 검은색 글자색 */
  }
  div {
    margin-bottom: 10px;
  }
  a {
    text-decoration: none;
    color: #000000; /* 검은색 링크 텍스트 색상 */
  }
  a:hover {
    color: #333333; /* 검은색 링크 텍스트 색상 (호버 상태) */
  }
  #all {
  	width:1800px;
  	height:1000px;
  	
  }
  
          .access-denied {
           display: block;
            color: red; /* 메시지 색상 설정 (옵션) */
            font-weight: bold;
        }
</style>
</head>
<body>
<c:if test="${userid == 'admin123'}">
<%@ include file="../../admin/menu.jsp" %>
  <section>
    <caption><h3>예약 관련</h3></caption>
    <div id="all">
    	<div id="Rl">
    		<c:forEach items="${inRlist}" var="mvo">
      			<c:if test="${mvo.seq==0}">
        			<div><a href="answer?no=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a></div>
     		 	</c:if>
    		</c:forEach>
       </div>
       <div id="Sl">
       <caption><h3>서비스 관련</h3></caption>
    		<c:forEach items="${inSlist}" var="mvo">
      			<c:if test="${mvo.seq==0}">
        			<div><a href="answer?no=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a></div>
     		 	</c:if>
    		</c:forEach>
       </div>
       <div id="Jl">
       <caption><h3>장소문의</h3></caption>
    		<c:forEach items="${inJlist}" var="mvo">
      			<c:if test="${mvo.seq==0}">
        			<div><a href="answer?no=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a></div>
     		 	</c:if>
    		</c:forEach>
       </div>
       <div id="Gl">
       <caption><h3>기타</h3></caption>
    		<c:forEach items="${inGlist}" var="mvo">
      			<c:if test="${mvo.seq==0}">
        			<div><a href="answer?no=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a></div>
     		 	</c:if>
    		</c:forEach>
       </div>
    </div>
  </section>
  <%@ include file="../../main/top_bottom/footer.jsp" %>
  </c:if>
  <c:if test="${userid != 'admin123'}">
        <div class="access-denied">해당화면의 접근 권한이 없습니다.</div>
      </c:if>
</body>
</html>

