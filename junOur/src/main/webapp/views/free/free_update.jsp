<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../main/top_bottom/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 수정</title>
    <style>
        body {
            background: #807979;
        }
        #section {
            height:700px;
        }
        table {
            width: 900px;
            border-radius: 25px;
            border: 6px solid #242424;
            background-color:#242424;
            margin: auto;
            font-size:20px;
        }
        th, td {
            border: 1px solid #242424;
            padding: 15px;
            background-color:#8C8C8C;
        }
        
        caption {
            margin-bottom: 15px;
        }
        a {
            text-decoration: none;
        }
        input[type=text], textarea {
            width: 100%;
            box-sizing: border-box;
        }
        textarea {
            height: 200px;
        }
        th.left_top {
           border-top-left-radius:13px;
           background-color:#8C8C8C;
        }
        td.right_top {
           border-top-right-radius:13px;
        }
        td.mmt_under {
           border-bottom-left-radius:13px;
           border-bottom-right-radius:13px;
        }
    </style>
</head>
<body>
  <div id="section">  
    <table align="center">
        <caption><h2>자유게시판 수정</h2></caption>
        <form method="post" action="free_update_ok">
            <tr>
                <th class="left_top" width="150">이름</th>
                <td class="right_top"><input type="text" name="userid" value="${fvo.userid}"></td>
            </tr>
            <tr>
                <th>제목</th>
                <td><input type="text" name="title" value="${fvo.title}"></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea name="content">${fvo.content}</textarea></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="pwd"></td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="mmt_under">
                    <input type="submit" value="글 수정">
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
    </table>
  </div>  
    <%@ include file="../main/top_bottom/footer.jsp" %>
</body>
</html>
