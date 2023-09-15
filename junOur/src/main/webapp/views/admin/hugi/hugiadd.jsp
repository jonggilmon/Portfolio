<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #section {
      width:1100px;
      height:500px;
      margin:auto;
      margin-top:50px;
      text-align:center;
    }
    #section input[type=text] {
      width:400px;
      height:30px;
    }
    #section textarea {
      width:400px;
      height:200px;
    }
    #section input[type=submit] {
      width:400px;
      height:30px;
    }
    section {
      width:1100px;
      height:500px;
      margin:auto;
      margin-top:50px;
      text-align:center;
    }
    section div {
      margin-top:20px;
    }
    section input[type=text] {
      width:400px;
      height:40px;
      border:1px solid green;
      outline:none;
    }
    section textarea {
      width:400px;
      height:150px;
      border:1px solid green;
      outline:none;
    }
    section input[type=text]:focus {
      border-width:2px;
    }
    section textarea:focus {
      border-width:2px;
    }
    section input[type=submit] {
      width:406px;
      height:43px;
      border:1px solid green;
      background:green;
      color:white;
      font-weight:900;
    }
  </style>
  <script>
  <script>
  function chgstar(n)
  {
     // 매개변수 n까지 별을 노란색(stat1.png)으로 변경
     for(i=0;i<=n;i++)
     {
        document.getElementsByClassName("star")[i].src="/static/hugi_star/star1.png";
     }   
     
     // 클릭된 위치 오른쪽 별은 회색으로 (star2.png)
     for(i=n+1;i<5;i++)
      {
        document.getElementsByClassName("star")[i].src="/static/hugi_star/star2.png";
      }    
     
     document.pkc.star.value=n+1;
   }
  
     function check()
     {
        if(document.pkc.start.value=="0")
        {
           alert("별점을 하나 이상 선택해주세요.");
           return false;
        }
        else
           
           return true;
     }
  </script>
</head>
<body>  
  <!-- 별점 -->
  <section>
   <form name="pkc" method="post" action="hugiadd_ok" onsubmit="return check()">
        <input type="hidden" name="star" value="0">
     <div>
        <img src="/static/hugi_star/star2.png" onclick="chgstar(0)" class="star">
        <img src="/static/hugi_star/star2.png" onclick="chgstar(1)" class="star">
        <img src="/static/hugi_star/star2.png" onclick="chgstar(2)" class="star">
        <img src="/static/hugi_star/star2.png" onclick="chgstar(3)" class="star">
        <img src="/static/hugi_star/star2.png" onclick="chgstar(4)" class="star">
     </div>
   </form>
  </section>
  <div id="section">  
    <form method="post" action="hugiadd_ok">
	  <div> 제목 <input type="text" name="title"> </div>
	  <div> 이름 <input type="text" name="userid"> </div>
	  <div> 내용 <textarea name="content"> </textarea> </div>
	  <div> <input type="submit" value="글 등록"> </div>
    </form>
  </div>
</body>
</html>