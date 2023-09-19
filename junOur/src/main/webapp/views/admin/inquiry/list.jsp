<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
 <%@ include file="../../main/top_bottom/header.jsp" %>    

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
</style>
</head>
<body>
  <section>
    <caption><h3>대기중인 문의사항들</h3></caption>
    <c:forEach items="${mlist}" var="mvo">
      <c:if test="${mvo.seq==0}">
        <div><a href="answer?no=${mvo.no}">제목 : ${mvo.title } | 작성자 : ${mvo.userid } | 작성일 : ${mvo.writeday}</a></div>
      </c:if>
    </c:forEach>
  </section>
</body>
</html>
<%@ include file="../../main/top_bottom/footer.jsp" %>
