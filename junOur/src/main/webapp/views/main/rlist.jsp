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
    height: 300px; /* 높이는 필요에 따라 조정 */
}

.pika-single {
    position: relative !important;
    top: 0 !important;
    left: 0 !important;
    margin: auto !important;
}
#calendar {
    margin: 0 auto 20px; /* 아래쪽 마진을 추가 */
}


</style>
 <!-- Pikaday and moment.js library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/css/pikaday.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/pikaday.min.js"></script>
</head>
<body>

<div id="calendarContainer">
    <input type="text" id="calendar">
</div>
<table width="1100" align="center" id="aa" border="0" border-collapse:collapse>
<c:forEach items="${AllReserves}" var="subReserve">
    <tr>
        <td width="350">${subReserve.title}</td>
        <td>${subReserve.rsdate}</td>
        <td>${subReserve.inwon}</td>
        <td>${subReserve.writeday}</td>
        <td></td>
        <td>
          <!-- 예: subReserve 객체에 현재 인원 수를 나타내는 currentCount와 최대 인원 수를 나타내는 maxCount 프로퍼티가 있다고 가정 -->
        <c:choose>
    <c:when test="${subReserve.currentCount < subReserve.inwon}">
        <a href="/main/content/content?no=${subReserve.no}" class="myButton">모집중</a>
    </c:when>
    <c:otherwise>
        <a class="myButton" style="opacity: 0.5; pointer-events: none;">모집마감</a>
    </c:otherwise>
</c:choose>
        </td>
    </tr>
</c:forEach>
</table>
<script>
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
        data.forEach(item => {
            var row = table.insertRow();
            row.insertCell(0).innerText = item.rsdate;
            row.insertCell(1).innerText = item.rstime;
            row.insertCell(2).innerText = item.title;
            row.insertCell(3).innerText = item.inwon;
            row.insertCell(4).innerText = item.readnum;
            
            
            const btnCell = row.insertCell(5);
            if (item.currentCount < item.inwon) {
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
