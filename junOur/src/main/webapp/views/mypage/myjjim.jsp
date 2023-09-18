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
		width: 1100px;
		height: 600px;
		margin: 0 auto;
	}
	table{
		width: 100%;
		border-top: 1px solid #333;
		border-collapse: collapse;
		border-spacing: 2px;
	}
	tr td{
		border-bottom: 1px solid #333;
		border-left: 1px solid #333;
		padding: 5px;
		text-align: center;
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
      width:100px;
      height:26px;
      background:#333;
      color:white;
      border:1px solid #333;
      margin-left: 970px; 
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
function mainClick(my, n) {
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
  		   <td>시간</td>
  		   <td>장소</td>
  		</tr>
  		<tr>
  		   <td><input type="checkbox" class="sub" value="0" onclick="subClick()"></td>
  		   <td>축구</td>
  		   <td>23/09/18</td>
  		   <td>10:00</td>
  		   <td>고양 충장운동장</td>
  		</tr>
  		<tr>
  		   <td colspan="5"><input type="button" id="btn" value="삭제" onclick=""></td>
  		</tr>
  	</table>
  	<div align="center"><input type="button" id="btn2" value="메인으로" onclick="location='/main/main'"></div>
  </section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>