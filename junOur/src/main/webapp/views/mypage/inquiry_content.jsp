<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="../main/top_bottom/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<style>
    body {
        background-color: #f0f0f0;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .post {
        margin-bottom: 20px;
        border: 1px solid #ddd;
        padding: 10px;
        background-color: #fff;
    }

    .post-title {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .post-content {
        font-size: 16px;
    }

    .answer {
        font-style: italic;
    }

    a {
        color: #007bff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>
	<section> <!-- 답변 나오기 쿼리까지 짜놓음 -->
		<div> 제 목 : ${mvo.title}</div>
		<div> 내 용 : ${mvo.content }</div>
		<c:if test="${mvo.seq == 0 }">
			<div> <a href="inquiryUpdate?no=${mvo.no}"> 수정 </a> <a href="inquiryDelete?no=${mvo.no}"> 삭제 </a></div>
			<div> <a href="inquiry_all">전체 문의사항</a></div>
		</c:if>
		
		  <div><h3>답변</h3></div>
          <div>작성일: ${qvo.writeday}</div>
          <div>내용: ${qvo.content}</div>
          <div><a href="inquiry_all">전체 문의사항</a></div>

	</section>
    <div class="container">
        <div class="post">
            <div class="post-title">제 목 : ${mvo.title}</div>
            <div class="post-content">내 용 : ${mvo.content }</div>
            <c:if test="${mvo.seq == 0 }">
            	<a href="inquiryUpdate?no=${mvo.no }">수정</a>  <a href="inquiryDelete?no=${mvo.no }">삭제</a>
            </c:if>
            <c:if test="${mvo.seq == 1 }">
                <div class="post-title">답변</div>
                <div class="post-content answer">${qvo.content }</div>
            </c:if>
        </div>

        <!-- 다른 게시물들도 동일한 형태로 추가할 수 있습니다. -->
        <!--
        <div class="post">
            <div class="post-title">다른 게시물 제목</div>
            <div class="post-content">다른 게시물 내용</div>
        </div>
        -->

        <div><a href="inquiry_all">전체 문의사항</a></div>
    </div>
</body>
</html>


<%@ include file="../main/top_bottom/footer.jsp" %>