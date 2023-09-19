<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <style>
    #section {
    width: 1100px;
    height: 500px;
    margin: auto;
    margin-top: 50px;
    text-align: center;

    
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
      width:406px;
      height:33px;
    }
    #section .msg {
      margin-top:20px;
    }
  </style>
  
  <div id="section">
    <form method="post" action="free_update_ok">
      <input type="hidden" name="no" value="${fvo.no}">
      <caption> <h2> 자유게시판 </h2> </caption>
      <table width="1000" align="center">
      <tr>
        <td> 이름 </td>
        <td> <input type="text" name="userid" value="${fvo.userid}"> </td>
      </tr>
      <tr>
        <td> 제목 </td>
        <td> <input type="text" name="title" value="${fvo.title}"> </td>
      </tr>
      <tr>
        <td> 내용 </td>
        <td> <textarea cols="70" rows="20" name="content">${fvo.content}</textarea> </td>
      </tr>
      <tr>
        <td> 비번 </td>
        <td> <input type="password" name="pwd"> </td>
      </tr>
      </table>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="글수정">
          <input type="button" onclick="history.back()" value="취소">
        </td>
      </tr>
      <c:if test='${chk == 1}'>
      <tr>
        <td colspan="2" align="center" style="color:red;">
          비밀번호가 틀렸습니다
        </td>
      </tr>
      </c:if>
    </form>
  </div>



