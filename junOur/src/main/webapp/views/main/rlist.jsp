<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@ include file="top_bottom/header.jsp" %>
<title>Insert title here</title>
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

</style>

</head>
<body>

<div id="banner"><img src="/static/photos/soccer.jpg" width="1100" height="400"></div>

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
                <c:when test="${subReserve.currentCount < subReserve.maxCount}">
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
 </body>
</html>
   <%@ include file="top_bottom/footer.jsp" %>