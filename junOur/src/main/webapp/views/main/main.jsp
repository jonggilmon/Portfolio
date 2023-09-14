<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모션 메이트</title> 

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>

  <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
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

.sports-slider-wrapper  {
   text-align:center;
}

      
.sports-grid {
    width: 100%;         /* 가로 크기를 최대로 */
    box-sizing: border-box;
     display: inline-block;
    grid-template-columns: repeat(12, 1fr);
    grid-gap: 10px;
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
     position: relative;
    
}

.sport-item a {
    display: block;
    position: relative;
    
    
}



@keyframes waveEffect {
    0% {
        height: 0%;
    }
    25% {
        height: 40%;
    }
    50% {
        height: 70%;
    }
    75% {
        height: 85%;
    }
    100% {
        height: 100%;
    }
}


.sport-item.special-effect {
    
    background-color: #fff; /* 기본 배경색은 흰색 */
    transition: background-color 0.5s ease-in-out; /* 배경색이 부드럽게 변하도록 설정 */
    overflow: hidden;
}
.sport-item.special-effect::before {
    content: "";
    position: absolute;
    bottom: 0; 
    left: 0;
    width: 100%;
    height: 0%; /* 처음에는 높이를 0%로 설정하여 보이지 않게 합니다 */
    background-color: #A0BAED; /* 배경색을 노란색으로 설정 */
    z-index: -1; 
     animation: waveEffect 0.5s forwards;
    animation-play-state: paused; /* 높이가 부드럽게 변하도록 설정 */
}

.sport-item.special-effect a::before {
    content: "";
    position: absolute;
    width: 87%;
    height: 87%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, white, #C6C6C6);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}


.sport-item.special-effect:hover a::before {
    opacity: 1;
    background-size: 100% 100%; /* 호버 시 100% 높이로 채우기 */
}

.sport-item.special-effect:hover {
    transform: scale(1.05);
    
}
.sport-item.special-effect:hover::before {
  animation: waveEffect 0.5s forwards; /* 마우스 오버시 높이를 100%로 설정하여 전체를 노란색으로 채웁니다 */
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
    width: 100%;           
    height: 100%;          
    object-fit: contain;   
    display: block;
    margin: 0 auto;
    }   

    a {
    	text-decoration: none;
    }

.sport-item img {
 max-width: 100%;
    width: 100%;       /* 이미지의 폭을 부모 요소의 100%로 설정 */
    height: auto;      /* 이미지의 높이를 원래 비율에 맞게 자동으로 설정 */
    display: block;    /* 이미지를 블록 요소로 설정 */
    margin: 0 auto;    /* 이미지를 가운데 정렬 */
     transition: filter 0.9s ease-in-out;
     
  
}
.sport-item .sport-label {
    position: absolute;
    top: 40%;       /* 원하는 위치에 맞게 조절하세요 */
    left: 50%;
    transform: translateX(-50%);
    opacity: 0;     /* 처음에는 투명하게 설정 */
    transition: opacity 0.5s ease-in-out;   /* 부드럽게 나타나게 하기 위한 트랜지션 */
    font-size: 45px; /* 글자 크기 조절 */
    font-weight: bold; /* 글씨를 굵게 만듭니다 */
    z-index: 1;     
    color: white; /* 글씨 색을 흰색으로 변경합니다 */
    text-shadow: 2px 2px 0px #000,   /* right, down */
                -2px -2px 0px #000,  /* left, up */
                2px -2px 0px #000,   /* right, up */
                -2px 2px 0px #000;  /* 글씨에 테두리 효과를 줍니다 */
}

 .sport-item.special-effect.soccer::before {
            background-color:  #D6F0FF;       
        }      
  .sport-item.special-effect.soccer a::before {
    /* 두 번째 항목의 스타일 */
     content: "";
    position: absolute;
    width: 90%;
    height: 90%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, white, #A2A2A2);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}

.sport-item.special-effect.soccer:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}




 .sport-item.special-effect.basketball::before {
            background-color:  #D6F0FF;       
        }      
  .sport-item.special-effect.basketball a::before {
    /* 두 번째 항목의 스타일 */
     content: "";
    position: absolute;
    width: 94%;
    height: 94%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, #F29661, #983C07);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}

.sport-item.special-effect.basketball:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}

 .sport-item.special-effect.volleyball::before {
            background-color:  #A0BAED;
            
        }
  .sport-item.special-effect.volleyball a::before {
 
     content: "";
    position: absolute;
    width: 94%;
    height: 94%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);

    background: radial-gradient(circle, white, #FFFFE9);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.volleyball a::before {
   opacity: 1;
    background-size: 100% 100%; 
}


 .sport-item.special-effect.baseball::before {
            background-color:  #D6F0FF;       
        }      
  .sport-item.special-effect.baseball a::before {
    /* 두 번째 항목의 스타일 */
     content: "";
    position: absolute;
    width: 94%;
    height: 94%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, #BBBBBB, #FFFFF8);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}

.sport-item.special-effect.baseball:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}



 .sport-item.special-effect.bowling::before {
            background-color:  #D6F0FF;       
        }      
  .sport-item.special-effect.bowling a::before {
    /* 두 번째 항목의 스타일 */
     content: "";
    position: absolute;
    width: 92%;
    height: 92%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, white, black);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}

.sport-item.special-effect.bowling:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}


.sport-item.special-effect.tennis::before {
            background-color:  #D6F0FF;       
        }      
  .sport-item.special-effect.tennis a::before {
    /* 두 번째 항목의 스타일 */
     content: "";
    position: absolute;
    width: 92%;
    height: 92%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, #CCFF00, #FAED7D);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 0;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8); 
}

.sport-item.special-effect.tennis:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
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


<div class="sports-slider-wrapper">
    <div class="sports-grid">
        <div class="sport-item special-effect soccer">
            <a href="rlist?jongmok_id=1">
                <img src="/static/photos/ball.png" alt="Soccer Ball" />
                <span class="sport-label">Soccer</span>
            </a>
        </div>
        <div class="sport-item special-effect basketball">
            <a href="rlist?jongmok_id=2">
                <img src="/static/photos/ball2.png" alt="BasketBall" />
                <span class="sport-label">Basketball</span>
            </a>
        </div>
        <div class="sport-item special-effect volleyball">
            <a href="rlist?jongmok_id=3">
            <img src="/static/photos/ball3.png" alt="Volleyball" />
          <span class="sport-label">Volleyball</span></a>
        </div>     
        <div class="sport-item special-effect baseball">
            <a href="rlist?jongmok_id=4">
            <img src="/static/photos/ball4.png" alt="Baseball" />
          <span class="sport-label">BaseBall</span></a>
        </div> 
       <div class="sport-item special-effect dangu">
            <a href="rlist?jongmok_id=5">
            <img src="/static/photos/ball3.png" alt="Dangu" />
          <span class="sport-label">당구</span></a>
        </div>    
        <div class="sport-item special-effect bowling">
            <a href="rlist?jongmok_id=6">
            <img src="/static/photos/ball6.png" alt="Bowling" />
          <span class="sport-label">Bowling</span></a>
        </div>    
        <div class="sport-item special-effect golf">
            <a href="rlist?jongmok_id=7">
            <img src="/static/photos/ball3.png" alt="Golf" />
          <span class="sport-label">골프</span></a>
        </div>    
         <div class="sport-item special-effect tennis">
            <a href="rlist?jongmok_id=8">
            <img src="/static/photos/ball8.png" alt="Tennis" />
          <span class="sport-label">Tennis</span></a>
        </div>   
        <div class="sport-item special-effect swim">
            <a href="rlist?jongmok_id=9">
            <img src="/static/photos/ball3.png" alt="Swim" />
          <span class="sport-label">수영</span></a>
        </div>
        <div class="sport-item special-effect badmin">
            <a href="rlist?jongmok_id=10">
            <img src="/static/photos/ball3.png" alt="Badmin" />
          <span class="sport-label">배트민턴</span></a>
        </div>
        <div class="sport-item special-effect tacgu">
            <a href="rlist?jongmok_id=11">
            <img src="/static/photos/ball3.png" alt="Tacgu" />
          <span class="sport-label">탁구</span></a>
        </div>
        <div class="sport-item special-effect guocgu">
            <a href="rlist?jongmok_id=12">
            <img src="/static/photos/ball3.png" alt="Guocgu" />
          <span class="sport-label">족구</span></a>
        </div>
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

    // 이 부분을 수정했습니다.
    $('.sports-grid').slick({
        infinite: true, 
        slidesToShow: 7, // 한 번에 보여질 아이템 수
        slidesToScroll: 1,
        draggable: true // 마우스 드래그 허용
    });
    
    // 이 부분을 수정했습니다.
    $('.sports-grid').on('wheel', function(e) {
        if(e.originalEvent.deltaY > 0) {
            $(this).slick('slickNext');
        } else {
            $(this).slick('slickPrev');
        }
        e.preventDefault();
    });

    $('.sport-item.special-effect').hover(
        function() {  
            $(this).find('.sport-label').css('opacity', '1');
        },
        function() {
            $(this).find('.sport-label').css('opacity', '0');
        }
    );
});
</script>
</body>
</html>