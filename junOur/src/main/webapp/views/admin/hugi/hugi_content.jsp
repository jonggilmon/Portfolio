<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function showDeleteButton() {
  var deleteRow = document.getElementById("del");
  deleteRow.style.display = "table-row"; // 버튼을 보이게 설정
}
</script>

</head>
<body>
  <div id="section">
    <table width="600" align="center">
      <caption> <h2> 공지사항 </h2> </caption>
      <tr>
        <td width="100"> 제목 </td>
        <td> ${hvo.title} </td>
      </tr>
      <tr>
        <td> 작성자 </td>
        <td> ${hvo.userid} </td>
      </tr>
      <tr>
        <td> 조회수 </td>
        <td> ${hvo.readnum} </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <div id="inner"> ${hvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="hugi_list"> 목록 </a>
         <c:if test="${hvo.userid==userid}">
          <a href="hugi_update?no=${hvo.no}"> 수정 </a>
          <a href="#" onclick="showDeleteButton(); return false;"> 삭제 </a> <!-- return false;는 링크를 클릭했을 때 브라우저가 해당 링크의 기본 동작을 실행하지 않도록 하는 역할을 합니다.  -->
         </c:if>
        </td>
      </tr>
      <tr id="del" style="display:none;">
        <td colspan="2" align="center" style="border:none;">
          <form method="post" action="delete">
            <input type="hidden" name="no" value="${hvo.no}">
            <input type="submit" value="삭제">
          </form>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>