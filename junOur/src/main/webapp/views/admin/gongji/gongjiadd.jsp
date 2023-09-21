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
    
    .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    color: #fff;
    padding: 10px 20px; 
  }
   .nav-links {
    list-style: none;
    display: flex;
    margin: 3;
    padding: 0;
  }
  .nav-links li {
    margin-right: 20px;
  }
  .nav-links li a {
    color: #fff;
    text-decoration: none;
  }
  </style>
</head>
<body>
  <div class="header">  
	  <ul class="nav-links">
            <li><a href="/admin/member/memberView">회원관리</a></li>
            <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
            <li><a href="/admin/inquiry/list">문의사항</a></li>
            <li><a href="/admin/action/action_list">활동사진</a></li>
            <li><a href="/admin/free/adfree_list">자유게시판</a></li>
            <li><a href="/admin/content/contentadd">일정관리</a></li>
            <li><a href="/main/main">홈화면</a></li>
       </ul>
    </div>
  
  <div id="section">  
    <form method="post" action="gongjiAddOk">
	  <div> 제목 <input type="text" name="title"> </div>
	  <div> 이름(userid) <input type="text" name="userid"> </div>
	  <div> 내용 <textarea name="content"> </textarea> </div>
	  <div> <input type="submit" value="글 등록"> </div>
    </form>
  </div>  
</body>
</html>