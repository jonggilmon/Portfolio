<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../admin/menu.jsp" %>
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

    #ob {
    opacity:0;
    }

  </style>
</head>
<body>
  
  
  <div id="section">  
    <form method="post" action="adgongjiAddOk">
    <caption> <h2> 공지사항 </h2> </caption>
	  <div> 제목 <input type="text" name="title"> </div>
	  <div id="ob"><input type="text" name="userid" value="admin123"> </div>
	  <div> 내용 <textarea name="content"> </textarea> </div>
	  <div> <input type="submit" value="글 등록"> </div>
    </form>
  </div>  
</body>
</html>
<%@ include file="../../main/top_bottom/footer.jsp" %>