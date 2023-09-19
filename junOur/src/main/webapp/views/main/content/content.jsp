<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ include file="../top_bottom/header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 body{
 	background: #F6F6F6;
 }
 section {
    width: 1100px;
    margin: auto;
 }
     
 section #first #mainimg {
    text-align: center;
}

section #first #mainimg img {
   
    width: 1100px;
    height: 400px;
    margin: auto; 
}
    section #first #simg {
      display: inline-block;
      width: 1100px;
      height: 300px;
      border: 1px solid black;
    }

    section #first #simg #zimg {

      float: right;
      margin-top: 270px;
    }

    section #second{
       display: flex;
       margin-top: 1px;
       justify-content: space-between;
       width: 1100px;
    }

    section #second #jin, section #second #jinhang {
      width: 680px;
      height: 500px;
      border: 0px solid black;
      background: white;
    }

    section #second #remenu {
      position: relative;
      width: 400px;
      height: 500px;
      border: 1px solid black;
    }

    section #second #remenu #reprice,  section #second #remenu #title  {
      position: absolute;
      width: 300px;
      height: 120px;
      border: 1px solid black;
      margin-top: 70px;
      text-align: center;
      left: 40px;
    } 

    section #second #remenu #reday, section #second #remenu #rsdate {
      width: 400px;
      height: 80px;
      border: 1px solid black;
    }

    section #second #remenu #jangso, section #second #remenu #inwon {
      width: 400px;
      height: 80px;
      border: 1px solid black;
    }

    section #second #remenu #juso, section #second #remenu #address {
      width: 400px;
      height: 40px;
      border: 1px solid black;
    }

    section #second #remenu #retime, section #second #remenu #rstime {
      width: 400px;
      height: 80px;
      border: 1px solid black;
    }

    section #third {
      display: flex;
      width: 1100px;
      margin-top: 1px;
      justify-content: space-between;
    }

    section #third #sogae{
      width: 680px;
      height: 600px;
      border: 1px solid black;
    }

    section #third #rebtn {
      width: 400px;
      height: 150px;
      border: 1px solid black;
    }

    section #third #qna {
      width: 100px;
      height: 100px;
      border: 1px solid black;
      margin-top: 400px;
      float: right;
    }
     /* 여기서부터 레이어 */
  #modal{
    width:100%;
    height:100%;
    position:absolute;
    left:0;
    top:0;
    background:rgba(0,0,0,0.5); 
    z-index:1; 
    display:none; 
}
#modal.active{
    display:block;
}
.modal_up{   /*레이어 팝업창 스타일*/
   width:450px;
   height:350px;
   position:fixed;
   left:40%; 
   top:35%; 
   background-color:#ffffff;
}
.uptitle{
   margin-top:30px;
   text-align:center; 
   line-height:16px; 
   font-size:20px; 
   font-weight:bold;
}
.upbody{
   padding:30px;
   text-align:center;
   font-size:16px;
   line-height:30px; 
}
.btn{
   width:80px;
   height:20px;
   display:block;
   text-align:center;
   font-size:15px;
   font-weight:bold;
   background:#cccccc;
   position:absolute; 
   right:10px;
   bottom:10px;
}
.ab{
   margin-left : 130px;
   height:20px;
   line-height: 20px;
   position: absolute;
   bottom:10px;
}
  /* 여기서부터 레이어 */
  #modal{
    width:100%;
    height:100%;
    position:absolute;
    left:0;
    top:0;
    background:rgba(0,0,0,0.5); 
    z-index:1; 
    display:none; 
}
#modal.active{
    display:block;
}
.modal_up{   /*레이어 팝업창 스타일*/
	width:450px;
	height:350px;
	position:fixed;
	left:40%; 
	top:35%; 
	background-color:#ffffff;
}
.uptitle{
	margin-top:30px;
	text-align:center; 
	line-height:16px; 
	font-size:20px; 
	font-weight:bold;
}
.upbody{
	padding:30px;
	text-align:center;
	font-size:16px;
	line-height:30px; 
}
.btn{
	width:80px;
	height:20px;
	display:block;
	text-align:center;
	font-size:15px;
	font-weight:bold;
	background:#cccccc;
	position:absolute; 
	left:10px;
	bottom:10px;
}
.btndong{
	width:80px;
	height:20px;
	display:block;
	text-align:center;
	font-size:15px;
	font-weight:bold;
	background:#cccccc;
	position:absolute; 
	right:10px;
	bottom:10px;
}
.ab{
	margin-left : 130px;
	height:20px;
	line-height: 20px;
	position: absolute;
	bottom:10px;
}

  </style>
</head>
<body>
<section>
  <div id="first">
    <form method="post" action="zoomimg"> 
     <div id="mainimg">
       <img src="/static/photos/${contentDetail.img}" alt="Image">
     </div>  
    </form> 
  </div> 
  
  <div id="second">
  	
     <div id="jinhang">
       ${contentDetail.jinhang}
     </div>  
     
     <div id="remenu">  
       <div id="rsdate">${contentDetail.rsdate}</div>
       <div id="inwon">${contentDetail.inwon}</div>
       <div id="address">${contentDetail.address}</div>
       <div id="rstime">${contentDetail.rstime}</div>
       <div id="title">${contentDetail.title}</div> 
     </div>  
 </div> 
 
 <div id="third">
 	
   <div id="sogae">
     ${contentDetail.sogae}
   </div> 
   
   <div id="rebtn">
    <input type="button" value="신청하기" id="btn2">
     
   
    <div id="modal"> <!--  레이어 팝업창 영역 -->
  	<div class="modal_up">
    <div class="uptitle">※신청하기 전 주의사항※</div>
    <div class="upbody">
    저희 모션메이트에서는 아무런 금전적 보상을
    취하지 않고 장소를 대여해주는 사이트 입니다.
    따라서 사용자의 부주의로 인한 불이익은 해당 사이트에서
    아무런 보상을 해 줄 수 없습니다. 또한 후기가 좋지 않으신 분들은
    사이트 차원에서 제재할 수 있으니 그 점 확인 바랍니다.
    오늘도 저희 모션메이트를 이용해 주셔서 감사합니다.
    </div>
    <div class="btn">닫기</div><div style="color:red; font-size:14px;" class="ab">주의사항을 모두 읽고 닫아 주세요.</div>
   <div class="btndong" onclick="redirectToCorrectPage()">동의하기</div>
  </div>
</div> 
 
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$("#btn2").click(function(
  ){
	$("#modal").addClass("active");
  });
  $(".btn").click(function(
  ){
	$("#modal").removeClass("active");
  }); 
  
  function redirectToCorrectPage() {
	    var userId = "${sessionScope.userid}";
	    if (userId) { 
	      window.location.href = "pwdAgree";
	    } else {
	      window.location.href = "../../member/login";
	    }
	  }
  
</script>
     <div id="qna">

     </div>
   </div> 
 </div>
 </section>
</body>
</html>
<%@ include file="../top_bottom/footer.jsp" %>