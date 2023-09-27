<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../main/top_bottom/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    text-align: center;
    background-color: #f0f0f0;
    background:#807979;
  }
  section #second {
    visibility: hidden;
  }
  section #third {
    visibility: hidden;
  }

  section {
    max-width: 400px;
    margin: 0 auto;
    background-color:#807979;
    padding: 20px;
    
    height:600px;
  }
  input[type="text"], input[type="button"] {
    width: 300px;
    margin-top: 10px;
    padding: 10px;
    margin-bottom: 10px;
 	border:6px solid #242424;
    border-radius:25px;    }
    #second {
   	visibility:hidden;
   }
   #third {
   	visibility:hidden;
   }
  #link1 a {
  	display:inline-block;
  	border:6px solid #242424;
    border-radius:25px;
    color:black;
    padding:10px;
    margin-left:20px;
    margin-right:20px;
  	;
  }
</style>
<script>
  var snum; // server 인증번호
  var pnum; // 입력받은 핸드폰 비밀번호
  var dbpnum; // db에 전화번호가 있는지 없는지 확인 0이 없음 1이 있음

  function numSend() {
    pnum = document.mform.userPnum.value;
    userid=document.mform.userid.value;
    var chk3 = new XMLHttpRequest();
    chk3.onload=function()
    {
    	if(chk3.responseText==0)
    		{
    			alert("존재하지 않는 아이디입니다");
    		}
    }
    chk3.open("get","chkUserid?userid="+userid);
    chk3.send();
    
    
    
    var chk = new XMLHttpRequest();
    chk.onload = function() 
    {
      if (chk.responseText == "0")
      {
        dbpnum = chk.responseText; // 0
        
      } 
      else if (chk.responseText == "1") // else if 안쓰고 그냥 else 썼음
      {
        dbpnum = chk.responseText; // 1
        
      }
      if (pnum.length != 11)
      {
        alert("번호를 입력하세요.");
      }
      else if (dbpnum == "0") 
      {
        alert("가입되지 않은 전화번호입니다.");
      } 
      else if (dbpnum == "1")
	  {
        var chk2 = new XMLHttpRequest();
        chk2.onload = function() {
          if (chk2.responseText == "0")
          {
            alert("오류가 발생했습니다.");
          } 
          else
          {
            snum = chk2.responseText;
            alert("인증번호를 보냈습니다.")
            alert(snum);
            document.getElementById("second").style.visibility = "visible";
          }
        }
        chk2.open("get", "numSend?pnum=" + pnum);
        chk2.send();
      }
    }
    chk.open("get", "chkPnum?pnum=" + pnum);  // 첫 ajax 전체 안에 들어가있음
    chk.send();
  }

  function numChk() 
  {
    userNum = document.mform.userNum.value;
    
    if (userNum == snum ) 
    {
       	userid=document.mform.userid.value;
       	
        var chk=new XMLHttpRequest();
        chk.onload=function()
        {
        	document.getElementById("pwd").innerText=chk.responseText;
        	document.getElementById("third").style.visibility="visible";
        }
        chk.open("get","PnUchk?userid="+userid);
        chk.send();
    }
    else
    	{
    		alert("오류입니다");
    	}
  }
</script>
</head>
<body>
<section>
  <form name="mform">
    <div><h2> 비밀번호 찾기 </h2> </div> 
    <hr>
    
    <div > 가입하실 때 입력하셨던 아이디를 입력해주세요 </div>
    <div> <input type="text" name="userid"> </div>
   
    <div> 가입하실 때 입력하셨던 전화번호를 입력해주세요 </div>
    <p>
    <div id="first">
      전화번호 입력<input type="text" name="userPnum" placeholder="-를 빼고 입력하세요"> 
      <input type="button" value="인증번호 보내기" onclick="numSend()">
    </div>
    <div id="second">
      <input type="text" name="userNum" placeholder="인증번호를 입력하세요"> 
      <input type="button" value="인증번호 확인" onclick="numChk()">
    </div>
    <div id="third">
      사용자의 비밀번호는 <div id="pwd"> </div> 입니다
    </div>
    <div top="-200">
    <div id="link1">
    <a href=../main/main>메인으로</a><a href="idfind">아이디 찾기</a>
    </div>
    </div>
  </form>
</section>
</body>
</html>
       <%@ include file="../main/top_bottom/footer.jsp" %>

