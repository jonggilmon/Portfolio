<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../main/top_bottom/header.jsp" %>
  <style>
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
    body {
       background:#807979;
    }
    table {
       width:800px;
       height:600px;
       border-radius:25px;
	   border:6px solid #242424;
       font-color:#242424;
       background-color:#242424;
    }
    table tr {
       border-radius:13px;
       background-color:#BDBDBD;
    }
    table td, table th {
       border: 1px solid #242424;
    }
    #page1 a {
       display:inline-block;
    }
    td.left_top {
       border-top-left-radius:13px;
       background-color:#8C8C8C;
       font-size:20px;
    }
    td.right_top {
       border-top-right-radius:13px;
       padding-left:20px;
       font-size:17px;
    }
    td.mmt_under {
       border-bottom-left-radius:13px;
    }
    td.mmt_title {
       padding-left:20px;
    }
    td.mmt_under {
       border-bottom-left-radius:13px;
       border-bottom-right-radius:13px;
    }
    td.mmt {
       background-color:#8C8C8C;
       font-size:20px;
    }
    td.mmt_in {
       padding-left:20px;
       font-size:17px;
    }
    .button {
       display: inline-block;
       padding: 5px 15px;
       background-color: #8C8C8C;
       color: #FFFFFF;
       border: none;
       border-radius: 5px;
       cursor: pointer;
       margin: 5px;
       width: 70px;
    }
    .button:hover {
       background-color: #242424;
    }
  </style>

</head>
<body>
  
    <table width="800" align="center">
      <caption> <h2> 공지사항 </h2> </caption>
      <tr>
        <td width="80" align="center" class="left_top"> 제목 </td>
        <td class="right_top"> ${gvo.title} </td>
      </tr>
      <tr>
        <td align="center" class="mmt"> 작성자 </td>
        <td class="mmt_in"> ${gvo.userid} </td>
      </tr>
      <tr>
        <td align="center" class="mmt"> 조회수 </td>
        <td class="mmt_in"> ${gvo.readnum} </td>
      </tr>
      <tr>
        <td align="center" class="mmt"> 내용 </td>
        <td class="mmt_in"> ${gvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center" class="mmt_under">
          <a href="gongji_list" class="button"> 목록 </a>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>