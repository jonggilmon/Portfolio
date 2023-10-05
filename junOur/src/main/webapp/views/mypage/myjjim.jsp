<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background: #F2F5F7;
	}
	section{
		width: 1200px;
		height: 700px;
		margin: 0 auto;
	}
	table{
		width: 100%;
		border-top: 1px solid #333;
		border-collapse: collapse;
		border-spacing: 2px;
		  white-space: nowrap;
        overflow: hidden;     
        text-overflow: ellipsis; 
        border:1px solid black;
	}
	tr td{
		border-bottom: 1px solid #333;
		border-left: 1px solid #333;
		padding: 5px;
		text-align: center;
		border:1px solid black;
	}
	tr:first-child{
		text-align: center;
		background: #747474;
		color: white;	
	}
   tr:first-child, td:first-child {
    border-left: none;
  }
   section #btn {
      width:160px;
      height:26px;
      background:#333;
      color:white;
      border:1px solid #333;
      margin-left: 1080px; 
    }
     section #btn2 {
      width:150px;
      height:36px;
      background:#333;
      color:white;
      border:1px solid #333;
      margin-top: 400px;
      
    }
</style>
<script>
function mainClick(my, n) 
{
    var sub = document.getElementsByClassName("sub");
    var len = sub.length;
    var mainElements = document.getElementsByClassName("main");
    
    if (mainElements[n]) {
        mainElements[n].checked = my.checked;
    }
    
    for (i = 0; i < len; i++) {
        sub[i].checked = my.checked;
    }
}
function subClick()
{
	var sub=document.getElementsByClassName("sub");
	var len=sub.length;
	var sel=0; // class="sub"의 체크된 숫자 파악
	for(i=0;i<len;i++)
	{
		if(sub[i].checked)
			sel++;
	}	
	
	var main=document.getElementsByClassName("main");
	if(len==sel)
	{
		main[0].checked=true;
	}	
	else
	{
		main[0].checked=false;
	}	
}
function selectDel()
{
	var sub=document.getElementsByClassName("sub");
	var len=sub.length;
	
	var delsub="";   // 삭제할 찜의 no필드값을 ,로 구분하여 저장하는 변수
	for(i=0;i<len;i++)
	{
		if(sub[i].checked)
		{
			delsub=delsub+sub[i].value+",";
		}	
	}	
	
	location="jjimDel?nos="+delsub;
}


</script>
</head>
 <%@ include file="../main/top_bottom/header.jsp" %>  
<body>
  <section>
  <caption><h2>나의 찜 목록</h2></caption>
  	<table width="1100" align="center">
  		<tr>
          <td width="120"> <input type="checkbox" class="main" onclick="mainClick(this,1)"> 전체선택 </td>
  		   <td>종목</td>
  		   <td>날짜</td>
  		   <td>인원</td>
  		   <td>시간</td>
  		   <td>장소</td>
  		   <td>이동</td>
  		</tr>
  		<c:forEach items="${mapall}" var="map">
  		<tr>
  		   <td><input type="checkbox" class="sub" value="${map.no}" onclick="subClick()"></td>
  		   <td>
  		   	<c:if test="${map.jongmok_id == 1}">
  		   		축구 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 2}">
  		   		농구 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 3}">
  		   		배구 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 4}">
  		   		야구 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 5}">
  		   		당구 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 6}">
  		   		볼링 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 7}">
  		   		골프 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 8}">
  		   		테니스 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 9}">
  		   		수영
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 10}">
  		   		배트민턴 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 11}">
  		   		탁구 
  		   	</c:if>
  		   	<c:if test="${map.jongmok_id == 12}">
  		   		족구 
  		   	</c:if>
  		   </td> <!-- 종목 -->
  		   <td>${map.rsdate}</td> <!-- 날짜 -->
  		   <td>${map.inwon}</td> <!-- 인원 -->
  		   <td>${map.rstime}</td> <!-- 시간 -->
   		   <td>${map.address}</td> <!-- 장소 -->
		<td><a href="../main/content/content?no=${map.no}">바로가기</a></td>
  		</tr>
  		</c:forEach>
  		<tr>
  		   <td></td>
  		   <td colspan="6"><input type="button" id="btn" value="삭제" onclick="selectDel()"></td>
  		</tr>
  	</table>
  	<div align="center"><input type="button" id="btn2" value="메인으로" onclick="location='/main/main'"></div>
  </section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>