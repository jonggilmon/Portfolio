<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모션 메이트</title> 

  <!-- Slick CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
    <!-- Optional theme -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  
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
        position: relative;  
        overflow: hidden;    
        height: 400px;       
    }
   .photo-item img {
    width: 100%;           /* 너비를 100%로 설정 */
    height: 100%;          /* 높이를 100%로 설정 */
    object-fit: contain;   /* 이미지가 컨테이너 안에 꽉 차게 표시되도록 설정 */
    display: block;
    margin: 0 auto;
    }
    
  
.sport-item i.fas.fa-futbol {
    font-size: 5em;
    width: 100%;
    text-align: center; 
    position: relative; 
    z-index: 1;
    color: gray;  
    overflow: hidden;
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
        <a href="rlist?jongmok_id=1"><i class="fas fa-futbol"></i></a>
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
        <div class="photo-slider">
            <c:forEach items="${alist}" var="avo">
                <div class="photo-item"><img src="/static/action/${avo.img}"></div>
            </c:forEach>
        </div>
    </div>
        
   
       <%@ include file="top_bottom/footer.jsp" %>
       
       
        <!-- Slick JS + jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.photo-slider').slick({
                infinite: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,          
                autoplaySpeed: 3000     
            });
        });
    </script>
</body>
</html>