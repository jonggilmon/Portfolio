<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<%@ include file="top_bottom/header.jsp" %>
<title>Insert title here</title>
<%
    String jongmok_id = request.getParameter("jongmok_id");
%>

<style>

   #banner{
      width: 1100px;
      height: 400px;
      margin: auto;
      overflow: hidden;
      margin-top: 60px;
   }
   #aa{
      margin-top: 50px;
      border-spacing: 70px 30px;
      
   }
   table{
      border-collapse: collapse;
   }
   tr{
      border-bottom: 1px solid #eeeeee;
   }
   td{
      padding: 1rem;
      color:white;
      font-weight: 600;
      font-size: 18px;
      
   }
   .myButton {
   box-shadow:inset 1px -1px 28px -50px #91b8b3;
   background:linear-gradient(to bottom, #5D5D5D 5%, #5D5D5D 100%);
   background-color:#5D5D5D;
   border-radius:5px;
   border:1px solid #566963;
   display:inline-block;
   cursor:pointer;
   color:#ffffff;
   font-family:Impact;
   font-size:15px;
   font-weight:bold;
   font-style:italic;
   padding:9px 25px;
   text-decoration:none;
   text-shadow:0px 0px 0px #2b665e;
  
}
.myButton:hover {
   background:linear-gradient(to bottom, #6c7c7c 5%, #768d87 100%);
   background-color:#6c7c7c;
}
.myButton:active {
   position:relative;
   top:1px;
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
#calendarContainer {
    display: flex;
    flex-direction: column; 
    justify-content: center;
    align-items: center;
    border:1px solid black;
    height: 640px;
    background-color: transparent !important;
   
}

.pika-single {
    position: relative !important;
    top: 0 !important;
    left: 0 !important;
    margin-left: auto !important; /* 여기서 추가 */
    margin-right: 0 !important; /* 여기서 추가 */
    width: 480px !important;  /* 달력의 너비 조정 */
    height: 400px !important; /* 달력의 높이 조정 */
    font-size: 1.4em;
    margin-bottom: 0 !important; 
    border: none !important;
    background-color: transparent !important;
   
}
.pika-single .pika-lendar {
    padding-top: 2em;  /* 여기서 년, 월, 버튼의 높이를 위한 여백을 추가합니다 */
}

.pika-single th, .pika-single td {
    padding: 11px !important;
    font-size: 1.05em !important;
    
   
}

.pika-single th {
    font-size: 1.26em;
}

.pika-single .pika-title {
 font-size: 1.5em;
    position: absolute;
    top: 0.8em;  /* 상단 여백을 약간 추가 */
    left: 50%;
    transform: translateX(-50%);
    width: auto;
    z-index: 5; /* 추가 */
}

.pika-single .pika-button {
    width: 28px;    
    height: 28px;   
    line-height: 28px;  
    font-size: 11.2px;
}


#calendar {
    /* 아래쪽 마진을 추가 */
    margin-bottom: 0;
    opacity: 0;
}

#backgroundVideo {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
    z-index: -1; /* 영상이 항상 뒷면에 위치하도록 함 */
    object-fit: cover; /* 비디오 비율 유지하며 화면에 꽉 차도록 함 */
}

</style>
 <!-- Pikaday and moment.js library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/css/pikaday.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/pikaday.min.js"></script>
</head>
<body>

<div id="calendarContainer">
 <video autoplay muted loop id="backgroundVideo">
    <source src="/static/content/soccer.mp4" type="video/mp4">  
</video>
    <input type="text" id="calendar">
   
</div>
<table width="1100" align="center" id="aa" border="0" border-collapse:collapse>
<c:forEach items="${AllReserves}" var="subReserve">
    
</c:forEach>
</table>
<script>
function getVideoSourceByJongmokId(jongmokId) {
    var videoBasePath = "/static/content/";
    switch (parseInt(jongmokId)) {
        case 1: return videoBasePath + "soccer.mp4";
        case 2: return videoBasePath + "basketball.mp4";
        case 3: return videoBasePath + "volleyball.mp4";
        case 4: return videoBasePath + "baseball.mp4";
        case 5: return videoBasePath + "dangu.mp4";
        case 6: return videoBasePath + "bowling.mp4";
        case 7: return videoBasePath + "golf.mp4";
        case 8: return videoBasePath + "tennis.mp4";
        case 9: return videoBasePath + "swim.mp4";
        case 10: return videoBasePath + "badmin.mp4";
        case 11: return videoBasePath + "video3.mp4";
        case 12: return videoBasePath + "footval.jpg";
        default: return videoBasePath + "default.mp4"; // fallback video if needed
    }
}


var calendarContainer = document.getElementById('calendarContainer');
calendarContainer.addEventListener('wheel', function(event) {
    var scrollValue = event.deltaY;
    calendarContainer.scrollLeft += scrollValue;
    event.preventDefault();
}, false);


window.onload = function() {
	

	
	 var currentDate = new Date();
    var calendar = new Pikaday({
        field: document.getElementById('calendar'),
        showOn: 'always',
        bound: false,
        defaultDate: currentDate, // 달력 초기화 시 현재 날짜를 기본 값으로 설정
        setDefaultDate: true, // 현재 날짜를 달력에 설정
        toString(date, format) {
            return moment(date).format('YYYY년 MM월 DD일 dddd');
        },
        onSelect: function(date) {
            var selectedDate = moment(date).format('YYYY-MM-DD'); 
            fetchDataForDate(selectedDate);
        },
        i18n: {
            previousMonth: '지난달',
            nextMonth: '다음달',
            months: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            weekdays: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
            weekdaysShort: ['일', '월', '화', '수', '목', '금', '토']
        },
        firstDay: 0
    });
    
    fetchDataForDate(moment(currentDate).format('YYYY-MM-DD')); // 페이지 로드 시 현재 날짜의 데이터를 가져옵니다.
    
    var videoElement = document.getElementById('backgroundVideo');
    var sourceElement = videoElement.querySelector('source');
    sourceElement.src = getVideoSourceByJongmokId('<%= jongmok_id %>');
    videoElement.load();
};

function fetchDataForDate(date) {
	  let jongmokId = '<%= jongmok_id %>';
	  fetch('/getReservationsByDate?rsdate=' + date + '&jongmok_id=' + jongmokId)
        .then(response => response.json())
        .then(data => {
        	 console.log(data);
            updateTableWithData(data);
        });
}

function updateTableWithData(data) {
    if (Array.isArray(data)) {
        var table = document.getElementById('aa');
        table.innerHTML = ''; 
        const today = new Date();
        data.forEach(item => {
            var row = table.insertRow();
            row.insertCell(0).innerText = item.rsdate;
            var formattedRstime = item.rstime.slice(0, 2) + ':' + item.rstime.slice(2);
            row.insertCell(1).innerText = formattedRstime;
            row.insertCell(2).innerText = item.title;
            row.insertCell(3).innerText = item.currentCount+ "/" + item.inwon;
            row.insertCell(4).innerText = item.readnum;
            
            
            const rsDate = new Date(item.rsdate); // 아이템의 날짜를 Date 객체로 변환

            const btnCell = row.insertCell(5);
            
            // 기간 만료 판단
            if (rsDate < today) {
                const expiredBtn = document.createElement("a");
                expiredBtn.classList.add("myButton");
                expiredBtn.style.opacity = "0.5";
                expiredBtn.style.pointerEvents = "none";
                expiredBtn.innerText = "기간 만료";
                btnCell.appendChild(expiredBtn);
            } else if (item.currentCount < item.inwon) {
                const btnLink = document.createElement("a");
                btnLink.href = "/main/content/content?no=" + item.no;
                btnLink.classList.add("myButton");
                btnLink.innerText = "모집중";
                btnCell.appendChild(btnLink);
            } else {
                const closedBtn = document.createElement("a");
                closedBtn.classList.add("myButton");
                closedBtn.style.opacity = "0.5";
                closedBtn.style.pointerEvents = "none";
                closedBtn.innerText = "모집마감";
                btnCell.appendChild(closedBtn);
            }
        });
    } else {
        console.error('The response data is not an array:', data);
    }
}

</script>


</body>
<%@ include file="top_bottom/footer.jsp" %>
</html>
