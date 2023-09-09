
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
   body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-size: 16px;
  }


  header, footer {
    padding: 0;
    margin: 0;
    width: 100%;
    background-color: #333; 
  
  }


 section form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    background-color: #f8f8f8;
  }

  section form div {
    margin-bottom: 15px;
  }

  section form h3 {
    text-align: center;
    margin-bottom: 20px;
  }

  section form input[type=text],
  section form input[type=password] {
    width: 95%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  section form select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  section form input[type=submit] {
    width: 100%;
    padding: 10px;
    background-color: #333;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  #uk, #pk, #pk2, #rk {
    font-size: 11px;
    color: red;
  }
  
  #intxt {
  	visibility:hidden;
  }
  #inbtn{
  	visibility:hidden;
  }
  </style>
  <script >
 
    var uidchk=0;
    function useridCheck(userid)
    {
      if(userid.length < 6)
      {
    	  document.getElementById("uk").innerText="아이디의 길이는 6자 이상입니다.";
		  document.getElementById("uk").style.color="red";
	      uidchk=0;
      }	  
      else
      {	  
    	var chk=new XMLHttpRequest();
    	chk.onload=function()
    	{
    	
    		if(chk.responseText=="0")
    		{
    			document.getElementById("uk").innerText="사용 가능한 아이디";
    			document.getElementById("uk").style.color="blue";
    			uidchk=1;
    		}	
    		else
    		{
    			document.getElementById("uk").innerText="사용 불가능한 아이디";
    			document.getElementById("uk").style.color="red";
    			uidchk=0;
    		}	
    	}
    	chk.open("get","useridCheck?userid="+userid);
    	chk.send();
    	
      }
    }
  
    var pchk=0;
    function pwdCheck()
    {
    	
    	var pwd=document.mform.pwd.value;   
    	var pwd2=document.mform.pwd2.value;
    	
    	if(pwd2.length > 0)
        {
    	   if(pwd==pwd2)
    	   {
    	   	   document.getElementById("pk").innerText="비밀번호가 일치합니다";
    		   document.getElementById("pk").style.color="blue";
    		   pchk=1;
    	   }	
    	   else
    	   {
    		   document.getElementById("pk").innerText="비밀번호가 불일치합니다";
    		   document.getElementById("pk").style.color="red";
    		   pchk=0;
    	   }
        }
    }
    function pwdLength(my)  
    {
    	var len=my.length;
    	
    	if(len < 6)
    	{
    		document.getElementById("pk2").innerText="비밀번호는 6자 이상 입력하세요";
    		document.getElementById("pk2").style.color="red";
    		pchk=0;
    		document.mform.pwd.focus();
    	}	
    	else
    	{
    		document.getElementById("pk2").innerText="비밀번호의 길이가 적당합니다";
    		document.getElementById("pk2").style.color="blue";
    		pchk=1;
    	}	
    }
    var birthcheck=0;
   
  ㄴ
    	
    var snum; // server 인증번호
	var pnum; 
    function numSend() {
        pnum = document.mform.phone.value;
      	if(pnum.length!=11)
      		{
      			alert("번호를 입력하세요");
      		}
      	else
      	{
          document.getElementById("intxt").style.visibility="visible"
          document.getElementById("inbtn").style.visibility="visible"
        
          var chk = new XMLHttpRequest();

          chk.onload = function() 
        {
            if (chk.responseText == 0) 
            {
                alert("오류가 발생했습니다.");
            } 
            else 
            {
                snum = chk.responseText;
                alert("인증번호를 보냈습니다.")
            }
        }

        chk.open("get", "numSend?pnum=" + pnum);
        chk.send();
        
      	}
    }
    var chknum;  // submit 중복 핸드폰 번호 확인용
    var userNum;  // 사용자의 인증번호
    function numChk() 
    {
        userNum = document.mform.userNum.value;
        
        if (userNum === snum) 
        {
            
            var chk=new XMLHttpRequest();
            chk.onload=function()
            {
            	
            	if(chk.responseText=="1")
            	{
            		alert("인증 성공했습니다.");
            		 	return true;
            		
            	}
            	else if(chk.responseText=="0");
            	{
            		
            		alert("이미 가입된 번호입니다");
            		chknum=chk.responseText;
            		
            			return false;
            	}
            		
            }
            chk.open("get","samePnum?pnum="+pnum);
            chk.send();
            
        }
        else 
        {
            alert("인증번호가 틀렸습니다, 다시 입력해주세요.");
        }
    }
    function check(my) 
    {

    	if(uidchk==0)
    	{
    		alert("아이디가 잘못 되었습니다");
    		my.userid.focus();
    		return false;
    	}	
    	else if(pchk==0)
    		 {
    		    alert("비밀번호가 잘못 되었습니다");
    		    my.pwd.value="";
    		    my.pwd2.value="";
    		    my.pwd.focus();
    		    return false;
    		 }
    	     else if(my.name.value.trim()=="") 
    	    	  {
    	    	      alert("이름을 입력하세요");
    	    	      my.name.focus();
    	    	      return false;
    	    	  }
    	     
    	     else if(my.gender.value.trim()=="선택하세요") 
	    	  {
	    	      alert("성별을 고르세요");
	    	      my.gender.focus();
	    	      return false;
	    	  }
    	     else if(my.birth.value.trim().length<=7) 
	    	  {
	    	      alert("생년월일을 입력하세요 ex)19960309");
	    	      my.birth.focus();
	    	      return false;
	    	  }
    	
    	          else if(my.phone.value.trim().length==0)
    	        	   {
    	        	     alert("전화번호를 입력하세요.");
    	        	     my.phone.focus();
    	        	     return false;
    	        	   }
    	          	  else if(snum!=userNum)
    	        	  {
    	        	  	alert("인증번호를 입력하세요.");
    	        	  	alert(snum);
    	        	  	my.userNum.focus();
    	        	  	return false;
    	        	  }
    	          	  else if(snum==null)
    	          		  {
    	          		    alert("인증번호를 받으세요.");
    	          		    return false;
    	          		  }
    	          	   	  else if(chknum==0)
    	        	      {
    	        	        alert("이미 가입된 전화번호입니다.");
    	        	        return false;
    	        	      }
    	                    else if(my.email.value.trim()=="")
    	            	    {
    	            	        alert("이메일을 입력하세요.");
    	            	        my.email.focus();
    	            	        return false;
    	            	    }
    	                      else
    	                    	return true;
    	     
    	
    }
  </script>
  
</head>
<body> 
<%@ include file="../main/top_bottom/header.jsp" %>
  <section>
    <form name="mform" method="post" action="memberOk" onsubmit="return check(this)">
      <div> <h3> 회원 가입 </h3></div>
      <div> <input type="text" name="userid" placeholder="아이디" onblur="useridCheck(this.value)"> <br><span id="uk"></span></div>
      <div> <input type="password" name="pwd" id="pwd" placeholder="비밀번호" onblur="pwdLength(this.value)" onkeyup="pwdCheck()">  <br><span id="pk2"></span></div>
      <div> <input type="password" name="pwd2" id="pwd2" placeholder="비밀번호 확인" onkeyup="pwdCheck()">  <br><span id="pk"></span> </div> 
      <div> <input type="text" name="name" placeholder="이 름"> </div> 
      <div> 
       성별 : 
       <select name="gender" class="selectbox">
       <option class="lang-option">선택하세요</option>
       <option class="lang-option">남자</option>
       <option class="lang-option">여자</option>
       </select>
      </div>
      
      <div>
         <input type="text" name="birth" placeholder="생년월일 ex) 19960309"> <br><span id="rk"></span>
      </div>
  	  
  	  
      <div> <input type="text" name="phone" placeholder="전화번호는 - 빼고 입력하세요.">
       <input type="button" value="인증번호 받기" onclick="numSend()">
       	<input type="text" name="userNum" placeholder="인증번호 확인" id="intxt">
       <input type="button" value="인증번호 확인" onclick="numChk()" id="inbtn">
       </div>  
      <div> <input type="text" name="email" placeholder="이메일"> </div> 
      <div> <input type="submit" value="회원 가입"> </div>
    </form>
  </section>
   <%@ include file="../main/top_bottom/footer.jsp" %>
</body>
</html>





