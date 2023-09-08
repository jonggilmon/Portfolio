<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    width: 1800px;
    height: 500px;
    text-align: center;
  }
  section #second {
    visibility: hidden;
  }
  section #third {
    visibility: hidden;
  }
</style>
<script>
  var snum; // server 인증번호
  var pnum; // 입력받은 핸드폰 비밀번호
  var dbpnum; // db에 전화번호가 있는지 없는지 확인 0이 없음 1이 있음

  function numSend() {
    pnum = document.mform.userPnum.value;
    
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

  function numChk() {
    userNum = document.mform.userNum.value;
    
    if (userNum == snum) 
    {
        
        var chk3 = new XMLHttpRequest();
        chk3.onload = function() {
        document.getElementById("userid").innerText = chk3.responseText;
        document.getElementById("third").style.visibility = "visible";
      }
      chk3.open("get", "getUserid?pnum=" + pnum);
      chk3.send();
    }
  }
</script>
</head>
<body>
<section>
  <form name="mform">
    <div> 아이디 찾기 </div>
    <div> 가입하실 때 입력하셨던 전화번호를 입력해주세요 </div>
    <div id="first">
      전화번호 입력<input type="text" name="userPnum" placeholder="-를 빼고 입력하세요"> 
      <input type="button" value="인증번호 보내기" onclick="numSend()">
    </div>
    <div id="second">
      <input type="text" name="userNum" placeholder="인증번호를 입력하세요"> 
      <input type="button" value="인증번호 확인" onclick="numChk()">
    </div>
    <div id="third">
      사용자의 아이디는 <div id="userid"> </div> 입니다
    </div>
  </form>
</section>
</body>
</html>
