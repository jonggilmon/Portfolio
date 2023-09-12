<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #searchSub {
    width:400px;
    height:70px;
   }
   #searchbutton{
   width:70px;
   height:74px;
   }

  .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            color: #fff;
        }

        .logo {
         
            align-items: center;
        }

        .logo img {
            width:180px;
            height:140px;
          
        }

        .nav-links {
            list-style: none;
            display: flex;
        }

        .nav-links li {
            margin-right: 20px;
        }

        .nav-links li a {
            color: #fff;
            text-decoration: none;
        }


</style>
</head>
<body>
   <div class="header">
        <div class="logo">
           <a href="/main/main"> <img src="/static/main/mm.png" ></a>   
        </div>
         <div class="search">
            <input type="text" placeholder="검색어를 입력하세요" id="searchSub">
            <button id="searchbutton">검색</button>
        </div>
        <ul class="nav-links">
          <c:if test="${userid==null}">
                <li><a href="/member/login">로그인</a></li>
                <li><a href="/member/member">회원가입</a></li>
                <li>문의사항</li>
            </c:if>
        <c:if test="${userid!=null}">
             <c:choose>
                <c:when test="${userid == 'admin123'}">
                    <li><a href="/admin/menu">관리자 페이지</a></li>
                </c:when>
                <c:otherwise>
                    <li>문의사항</li>
                    <li><a href="/mypage/mypage">마이페이지</a></li>
                </c:otherwise>
            </c:choose>
            <li>${sessionScope.name}</li>
            <li><a href="/member/logout">로그아웃</a></li>
            </c:if>
            
            
            <!-- 세션에 "userid" 키가 없으면 로그아웃 상태로 간주 -->
          
            
        </ul>
    </div>
</body>
</html>