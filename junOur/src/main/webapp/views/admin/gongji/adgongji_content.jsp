<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../admin/menu.jsp" %>
  <style>
    #section{
  	  height: 650px;
    }
    table {
        width: 700px;
        border-collapse: collapse;
        margin-top: 20px;
        margin: auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 15px;
    }
    th {
        background-color: #f2f2f2;
        color: black;
    }
    caption {
        margin-bottom: 15px;
    }
    a {
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
  
  
  <div id="section">
    <table width="700" align="center">
      <caption> <h2> 공지사항 </h2> </caption>
      <tr>
        <th width="100"> 제목 </th>
        <td> ${gvo.title} </td>
      </tr>
      <tr>
        <th> 작성자 </th>
        <td> ${gvo.userid} </td>
      </tr>
      <tr>
        <th> 조회수 </th>
        <td> ${gvo.readnum} </td>
      </tr>
      <tr>
        <th> 내용 </th>
        <td> ${gvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="adgongji_list"> 목록 </a>
         <c:if test="${gvo.userid==userid}">
          <a href="adgongji_update?no=${gvo.no}"> 수정 </a>
          <a href="#" onclick="showDeleteButton(); return false;"> 삭제 </a> <!-- return false;는 링크를 클릭했을 때 브라우저가 해당 링크의 기본 동작을 실행하지 않도록 하는 역할을 합니다.  -->
         </c:if>
         
        </td>
      </tr>
      <tr id="del" style="display:none;">
        <td colspan="2" align="center" style="border:none;">
          <form method="post" action="gdelete">
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


