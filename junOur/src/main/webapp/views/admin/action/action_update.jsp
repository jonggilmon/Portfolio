<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      width:406px;
      height:33px;
    }
    #section .msg {
      margin-top:20px;
    }
  </style>
   
 
  <div id="section">
    <form method="post" action="action_update_ok">
      <input type="hidden" name="no" value="${avo.no}">
      <h2> 게시판 글쓰기 </h2>
      <div class="msg"> <input type="file" value="${avo.img}" name="img" placeholder="아이디"> </div>  
      <div class="msg"> <input type="text" value="${avo.title}" name="title" placeholder="제 목"> </div>  
      <div class="msg"> <textarea name="content" placeholder="내용을 입력하세요">${avo.content}</textarea> </div>
      
  <div class="msg"> <input type="submit" value="글 수정"> </div> 
    </form>  
  </div>












