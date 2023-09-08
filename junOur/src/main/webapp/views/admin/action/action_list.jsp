<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <%@ include file="../../main/top_bottom/header.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #section {
        width: 1100px;
        margin: auto;
        margin-top: 50px;
    }
    
    .line {
        width: 1100px;
        display: flex;
        flex-wrap: wrap; /* 요소들이 가로로 펼쳐지고 넘치면 다음줄 */
        justify-content: space-between;
    }
    
    .item {
        width: calc(33.33% - 10px); /* 3장씩, 간격을 빼줍니다. */
        margin-bottom: 20px;
        text-align: center;
    }
    
    .item img {
        width: 100%;
       
    }
    
    .title {
        text-align: center;
    }
    a{
    	text-decoration: none;
    	margin-bottom: 50px;
    }
</style>
</head>
<body>
<section id="section">
    <div class="line">
        <c:forEach items="${list}" var="avo">
            <div class="item">
                <img src="/static/action/${avo.img}" width="300" height="400" onclick="location='action_readnum?no=${avo.no}'">
                <div class="title">${avo.title}</div>
            </div>
        </c:forEach>
    </div>
    <div><a href="/admin/action/action_write"> 글 등록 </a></div>
</section>
</body>
</html>
   <%@ include file="../../main/top_bottom/footer.jsp" %>
