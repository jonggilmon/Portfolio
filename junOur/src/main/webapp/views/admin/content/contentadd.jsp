<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="../../admin/menu.jsp" %>
        
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    section div{
    
      display:flex;
      width:500px;
      margin:auto;
      
    }
  </style>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
function searchAddress() {
   new daum.Postcode({
       oncomplete: function(data) {
           // 결과값에서 주소 가져와서 출력
           document.getElementById('address').value = data.roadAddress;
       }
   }).open();
}
</script>
</head>
<body>
  <section>
   <c:if test="${userid == 'admin123'}">
	<form name="cform" method="post" action="contentAddOk" enctype="multipart/form-data">
	    <div width="100"> <a href="/../admin/menu">관리자 창</a></div>
		<div> <input type="file" name="img"> 이미지 </div>

		<div><input type="date" name="rsdate"> 예약날짜 </div>
		<div> 
			<textarea name="sogae" rows="15" cols="50">
● 오시는 길 : 
● 주차 :  
● 흡연 : 흡연 구역 외 절대 금연  
● 주의사항 :   
			</textarea>
		소개</div>
		<div>
		 	<textarea name="jinhang" rows="15" cols="50">

● 

● 

●
 		 
		 	</textarea>
		 진행</div>
		<div>
			 <textarea name="rule" rows="15" cols="50">
매치규칙

● 

● 

● 	
	 


알아두면 좋아요

● 

● 

● 

			 </textarea>
		 룰</div>
		<div>
        <label for="inwon">인원:</label>
        <select name="inwon" id="inwon">
          <% for(int i=1; i<=30; i++) { %>
         <option value="<%= i %>"><%= i %>명</option>
           <% } %>
        </select>
      </div>
		<div>
   <label for="address">주소:</label>
   <input type="text" name="address" id="address" readonly="readonly" placeholder="주소 검색을 통해 입력">
   <button type="button" onclick="searchAddress()">주소 찾기</button>
</div>
<div>
   <input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
</div>
		<div>
		<label for="rstime">예약시간:</label>
		<select name="rstime" id="rstime">
		<% for(int i=0; i<24; i++) { %>
		<option value="<%= String.format("%02d", i) %>:00"><%= String.format("%02d", i) %>:00</option>
		<option value="<%= String.format("%02d", i) %>:30"><%= String.format("%02d", i) %>:30</option>
		<% } %>
		</select>
		</div>
		
		
		
		<div> <input type="text" name="title">제목 </div>
	
        <div><input type="submit" value="입력"></div>
		
		<div>
   <label for="jongmok_id">스포츠 종목:</label>
   <select name="jongmok_id">
      <option value="1">축구</option>
      <option value="2">농구</option>
      <option value="3">배구</option>
      <option value="4">야구</option>
      <option value="5">당구</option>
      <option value="6">볼링</option>
      <option value="7">골프</option>
      <option value="8">테니스</option>
      <option value="9">수영</option>
      <option value="10">배드민턴</option>
      <option value="11">탁구</option>
      <option value="12">족구</option>
     
   </select>
</div>
	</form>
	</c:if>
	 <c:if test="${userid != 'admin123'}">
        
      </c:if>
  </section>
</body>
</html>