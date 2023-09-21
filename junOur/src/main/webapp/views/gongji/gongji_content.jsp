<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../main/top_bottom/header.jsp" %>
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
  </style>

<script>
function showDeleteButton() {
  var deleteRow = document.getElementById("del");
  deleteRow.style.display = "table-row"; // 버튼을 보이게 설정
}
</script>

</head>
<body>
  <c:if test="${gvo.userid eq 'admin123'}">
	  <ul class="nav-links">
        <li><a href="/admin/member/memberView">회원관리</a></li>
        <li><a href="/admin/gongji/gongji_list">공지사항</a></li>
        <li><a href="/admin/inquiry/list">문의사항</a></li>
        <li><a href="/admin/action/action_list">활동사진</a></li>
        <li><a href="/admin/free/adfree_list">자유게시판</a></li>
        <li><a href="/admin/content/contentadd">일정관리</a></li>
        <li><a href="/main/main">홈화면</a></li>
      </ul>
  </c:if>
  
  <div id="section">
    <table width="600" align="center">
      <caption> <h2> 공지사항 </h2> </caption>
      <tr>
        <td width="100"> 제목 </td>
        <td> ${gvo.title} </td>
      </tr>
      <tr>
        <td> 작성자 </td>
        <td> ${gvo.userid} </td>
      </tr>
      <tr>
        <td> 조회수 </td>
        <td> ${gvo.readnum} </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <div id="inner"> ${gvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="gongji_list"> 목록 </a>
         
         
        </td>
      </tr>
      <tr id="del" style="display:none;">
        <td colspan="2" align="center" style="border:none;">
          <form method="post" action="delete">
            <input type="hidden" name="no" value="${gvo.no}">
            <input type="submit" value="삭제">
          </form>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>
<%@ include file="../../main/top_bottom/footer.jsp" %>