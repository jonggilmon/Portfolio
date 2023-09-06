<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모션 메이트</title> 이준환 변경사항
  <style>
  
 
   
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #f4f4f4;
}

      
.sports-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 10px;
    max-width: 800px;
    margin: 0 auto;
    padding:40px;
}

.sport-item {
    background-color: #fff;
    padding: 20px;
    text-align: center;
    border: 1px solid #ccc;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s ease-in-out;
}

.sport-item:hover {
    transform: scale(1.05);
}
 .notice-weather {
        display: flex;
        justify-content: space-between;
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
    }

    .notice {
       
        background-color: #fff;
        padding: 10px;
        border: 1px solid #ccc;
        flex: 2;
        margin-right: 10px;
    }

    .weather {
        background-color: #fff;
        padding: 10px;
        border: 1px solid #ccc;
        flex: 1;
        margin-left: 10px;
        height:100px;
    }

   .hugi {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
    }
    
      .M_photo {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
    }
    
    
    .M_photo {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        max-width: 800px;
        margin: 20px auto; 
        text-align: center;
    }

    .photo-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 10px;
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
    }

    .photo-item {
        background-color: #f4f4f4;
        border: 1px solid #ccc;
        padding: 10px;
        text-align: center;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
    }

    .photo-item img {
        max-width: 100%;
        height: auto;
    }
    a {
    	text-decoration: none;
    }

    

  
  </style>






</head>
<body>
   <%@ include file="top_bottom/header.jsp" %>
 

<div class="notice-weather">
         <div class="notice">
            <c:forEach items="${glist }" var="gvo">
              <div>제목 : ${gvo.title } </div>
              <div> 이름 : ${gvo.userid } </div>
              <div> 조회수 : ${gvo.readnum }</div>
              <div> 작성일 : ${gvo.writeday } </div>
              <hr>
            </c:forEach>
        </div>
        <div class="weather">
           날씨 하지말까 ㅅㅂ
        </div>
    </div>

      <div class="sports-grid">
        <div class="sport-item">
           <a href="rlist?jongmok_id=1"> <h2>축구</h2> </a>
        </div>
        <div class="sport-item">
           <a href="rlist?jongmok_id=2">  <h2>농구</h2> </a>
        </div>
        <div class="sport-item">
          <a href="rlist?jongmok_id=3">   <h2>배구</h2> </a>
        </div>
        <div class="sport-item">
         <a href="rlist?jongmok_id=4">    <h2>야구</h2> </a>
        </div>
        <div class="sport-item">
          <a href="rlist?jongmok_id=5">   <h2>당구</h2> </a>
        </div>
        <div class="sport-item">
          <a href="rlist?jongmok_id=6">   <h2>볼링</h2> </a>
        </div>
        <div class="sport-item">
          <a href="rlist?jongmok_id=7">   <h2>골프</h2> </a>
        </div>
        <div class="sport-item">
         <a href="rlist?jongmok_id=8">    <h2>테니스</h2> </a>
        </div>
        <div class="sport-item">
        <a href="rlist?jongmok_id=9">     <h2>수영</h2> </a>
        </div>
        <div class="sport-item">
         <a href="rlist?jongmok_id=10">    <h2>배트민턴</h2> </a>
        </div>
        <div class="sport-item">
         <a href="rlist?jongmok_id=11">    <h2>탁구</h2> </a>
        </div>
        <div class="sport-item">
          <a href="rlist?jongmok_id=12">   <h2>족구</h2> </a>
        </div>
    </div>
    
    <div class="hugi">
            후기글
        </div>
        
      <div class="M_photo">
        활동사진
        <c:forEach items="${alist}" var="avo">
        	<div class="photo-item"><img src="/static/action/${avo.img}"></div>
        </c:forEach>
            	
        </div>
        
   
       <%@ include file="top_bottom/footer.jsp" %>
</body>
</html>