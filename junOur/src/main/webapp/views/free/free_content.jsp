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
    #del {
      display:none;
    }
    #section table {
      border-spacing:0px;
    }
    #section table tr:first-child td {
      border-top:2px solid #999999;
    }
    #section table tr:last-child td {
      border-bottom:2px solid #999999;
    }
    #section table td {
      height:30px;
      border-bottom:1px solid #cccccc;
    }
    #section a {
      text-decoration:none;
      color:black;
    }
  </style>
  <script>
    function showDeleteButton() {
        var deleteRow = document.getElementById("del");
        deleteRow.style.display = "table-row"; // 버튼을 보이게 설정
    }
  </script>

</head>
<%@ include file="../main/top_bottom/header.jsp" %>
<body>
  <div id="section">
    <table width="600" align="center">
      <caption> <h2> 자유게시판 </h2> </caption>
      <tr>
        <td width="100"> 제목 </td> <td> ${fvo.title} </td>
      </tr>
      <tr>
        <td> 작성자 </td> <td> ${fvo.userid} </td>
      </tr>
      <tr>
        <td> 조회수 </td> <td> ${fvo.readnum} </td>
      </tr>
      <tr>
        <td> 내용 </td> <td> <div id="inner"> ${fvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="free_list"> 목록 </a>
          <a href="free_update?no=${fvo.no}"> 수정 </a>
          <a href="#" onclick="showDeleteButton(); return false;"> 삭제 </a> <!-- return false;는 링크를 클릭했을 때 브라우저가 해당 링크의 기본 동작을 실행하지 않도록 하는 역할을 합니다.  -->
        </td>
      </tr>
      <tr id="del">
        <td colspan="2" align="center" style="border:none;">
          <form method="post" action="delete">
            <input type="hidden" name="no" value="${fvo.no}">
            <input type="password" name="pwd" placeholder="비밀번호"> <input type="submit" value="삭제">
          </form>
        </td>
      </tr>
      <c:if test="${chk == 1}">
      <tr>
        <td colspan="2" align="center" style="color:red;">
          비밀번호가 틀렸습니다
        </td>
      </tr>
      </c:if>
    </table>
  </div>
</body>
<<<<<<< HEAD:junOur/src/main/webapp/views/admin/free/free_content.jsp
<%@ include file="../../main/top_bottom/footer.jsp" %>
</html>
=======
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
>>>>>>> origin/feature/rojoong:junOur/src/main/webapp/views/free/free_content.jsp
