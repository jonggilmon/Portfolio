<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <style>
     #del {
     display:none;  25565546hhojoo
   }
    #section {
     width:1100px;
     height:500px; 
     margin:auto;   ㅇㄴㅇ989898989898
     margin-top:50px;
   }
   #section table tr td {
     border:1px solid #cccccc;
   }
   #section table tr:last-child td {
     border:none;
     height:50px;
   }
   #section table td {
     height:30px;
   }
   #section table #inner {
     width:500px;
     height:200px;
     overflow:auto;
   }
   
   #section table a {
     text-decoration:none;
     color:black;
     margin-left:20px;
     display:inline-block;
     width:100px;
     height:30px;
     line-height:30px;
     border:1px solid black;
   }
   
  </style>
  <script>
  function del()
  {
	   document.getElementById("del").style.display="table-row";
  }
  </script>
 
  <div id="section">
     <table width="600" align="center">
       <caption> <h2> 게시판 내용 </h2></caption>
       <tr>
         <td width="100"> 제 목 </td>
         <td> ${avo.title} </td>
       </tr>
       <tr>
         <td> 사진 </td>
         <td> <img src="/static/action/${avo.img}" width="200"> </td>
       </tr>
       <tr>
         <td> 조회수 </td>
         <td> ${avo.readnum} </td>
       </tr>
       <tr>
         <td> 내 용 </td>
         <td> <div id="inner"> ${avo.content} </div> </td>
       </tr>
       <tr>
         <td colspan="2" align="center">
        
            <a href="action_list"> 목록 </a>
        
          <c:if test="${avo.userid==userid}">
            <a href="action_update?no=${avo.no}"> 수정 </a>
            <a href="#" onclick="del()"> 삭제 </a>
           </c:if>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <%@ include file="../../main/top_bottom/header.jsp" %>
<head>
    <meta charset="UTF-8">
    <title>${avo.title}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
>>>>>>> 55517e86f57859d469ef0067c001e8f0e55f77b6

        .container {
            max-width: 1100px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        .head {
            text-align: center;
            background-color: #cccccc;
            color: black;
            padding: 5px;
        }
        .writeday{
        	margin-left:900px;
        	margin-top: 20px;
        }
        .readnum{
        	margin-left:900px;
        	margin-top: 20px;
        }

        .content {
            padding: 20px;
            text-align: center; /* 사진 가운데 정렬을 위해 추가 */
            font-size:16px;
            border-top: 1px solid #eeeeee; /* 상단 구분선 추가 */
            border-bottom: 1px solid #eeeeee; /* 하단 구분선 추가 */
            padding-top: 20px; /* 상단 여백 추가 */
            padding-bottom: 20px; /* 하단 여백 추가 */
        }

        .content img {
            max-width: 100%;
            height: auto;
            display: block; /* 가운데 정렬을 위해 추가 */
            margin: 0 auto; /* 가운데 정렬을 위해 추가 */
            margin-bottom: 20px;
        }

        .actions {
            text-align: center;
            margin-top: 20px;
        }

        .actions a {
            text-decoration: none;
            color: #333;
            margin: 0 10px;
            padding: 5px 15px;
            border: 1px solid #333;
            background-color: #fff;
        }

        .actions a:hover {
            background-color: #333;
            color: #fff;
        }

        #del {
            display: none;
        }
    </style>
    <script>
        function del() {
            document.getElementById("del").style.display = "table-row";
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="head">
            <h3>${avo.title}</h3>
        </div>
        <div class="writeday">작성일자 : ${avo.writeday}</div>
        <div class="writeday">조회수: ${avo.readnum}</div>
        <div class="content">
            <img src="/static/action/${avo.img}" width="650" height="600">
            
            <div style="border:1px solid #eeeeee;">${avo.content}</div>
        </div>
        <div class="actions">
            <a href="action_list">목록</a>
            <c:if test="${avo.userid==userid}">
                <a href="action_update?no=${avo.no}">수정</a>
                <a href="#" onclick="del()">삭제</a>
            </c:if>
        </div>
        <div id="del">
            <form method="post" action="action_delete">
                <input type="hidden" name="no" value="${avo.no}">
                <input type="submit" value="삭제">
            </form>
        </div>
    </div>
</body>
</html>
   <%@ include file="../../main/top_bottom/footer.jsp" %>