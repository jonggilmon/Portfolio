<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#pwd {
			display:none;
		}
	</style>
	<script>
		function pwdClick()
		{
			var chk=document.getElementById("hide");
			if(chk.checked)
				{
					document.getElementById("pwd").style.display="block";
				}
			else
				{
					document.getElementById("pwd").style.display="none";
				}
		}
	</script>
</head>
<body>
	<section>
		<form method="post" action="mtmOk" name="mform">
			<div> 1:1 문의사항 </div>
			<div> <input type="text" name="title" placeholder="문의 제목"> </div>
			<div> <textarea name="content" placeholder="문의 내용"></textarea></div>
			<div> <input type="checkbox" name="hide" id="hide" onclick="pwdClick()">비밀글 체크
			<div id="pwd">비밀번호<input type="password" name="pwd"></div>
			</div>
			<div> <input type="submit" value="문의하기"> </div>
		</form>
	</section>
</body>
</html>