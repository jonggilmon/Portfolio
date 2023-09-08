<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    body {
      width:1800px;
      height:500px;
      text-align:center;

    }
  </style>
  <script>
  	var snum; // server 인증번호
  	var pnum; // 입력받은 핸드폰 비밀번호
  	var chknum;  // submit 중복 핸드폰 번호 확인용
    var userNum;  // 사용자의 인증번호
    var dbpnum; // db에 전화번호가 있는지 없는지 확인 0이 없음 1이 있음
    function numSend()
    {
    	pnum = document.mform.userPnum.value;
    	
    	var chk=new XMLHttpRequest();
    	
    	chk.onload=function()
    	{
    		alert(chk.responseText);
    		
    		if(chk.responseText==1)
    			{
    				dbpnum=1;
    				alert("DB에 전화번호 있음");
    			}
    		else
    			{
    				dbpnum=0;
    				alert("DB에 전화번호 없음")
    			}
    	}
    	chk.open("get","chkPnum?pnum="+pnum);
    	chk.send();
    	
    	
    	if(pnum.length!=11)
  		{
  			alert("번호를 입력하세요.");
  		}
    	else if(dbpnum===0)
    	{
    		alert("가입되지 않은 전화번호입니다.");
    	}
  	    else
        {
          var chk2 = new XMLHttpRequest();

          chk2.onload = function() 
          {
            if (chk2.responseText == 0) 
            {
                alert("오류가 발생했습니다.");
            } 
            else 
            {
                snum = chk2.responseText;
                alert("인증번호를 보냈습니다.")
            }
          } 

        chk2.open("get", "numSend?pnum=" + pnum);
        chk2.send();
        
        }
    	
    }
    function numChk() 
    {
            userNum = document.mform.userNum.value;
		    alert(snum);    
		    alert(dbpnum);
            if(userNum == snum)
        	{
        		var chk3=new XMLHttpRequest();
        		chk3.onload=function()
        		{
        			alert(chk3.responseText);
        			document.getElementById("userid").innerText=chk3.responseText;
        		}
        		chk3.open("get","getUserid?dbpnum="+dbpnum);
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
	<div>
	  <input type="text" name="userPnum" placeholder="-를 빼고 입력하세요"> 
	  <input type="button" value="인증번호 보내기" onclick="numSend()">
	</div>

	<div>
	  <input type="text" name="userNum"> 
	  <input type="button" value="인증번호 확인" onclick="numChk()">
	</div>
	
	<div>
	  사용자의 아이디는 <input type="text" id="userid"> 입니다
	</div>
   </form>
  </section>
</body>
</html>