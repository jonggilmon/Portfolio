<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@ include file="../top_bottom/header.jsp" %>
<title>Insert title here</title>
<style>
	body{
	   margin: 0;
	   padding: 0;
	   background:#807979;
	}
	table {
	   border-radius:25px;
	   border:6px solid #242424;
	   font-size:20px;
	   background-color:#242424;
	}
	table td, table th {
       border: 1px solid #242424;
       background-color:#BDBDBD;
    }
    td.left_top {
       border-top-left-radius:13px;
       background-color:#8C8C8C;
    }
    td.left_under {
       border-bottom-left-radius:13px;
       background-color:#8C8C8C;
    }
    td.right_top {
       border-top-right-radius:13px;
       padding-left:40px;
    }
    td.right_under {
       border-bottom-right-radius:13px;
       padding-left:40px;
    }
    td.mmt_left {
       background-color:#8C8C8C;
    }
    td.mmt_right {
       padding-left:40px;
    }
</style>
</head>
<body>
	<table width="700" height="650" align="center">
	<caption><h3>최근 예약 정보입니다.</h3></caption>
	<c:if test="${not empty recentReserveInfo}">
        <tr>     
            <td class="left_top" align="center">방번호</td>    
            <td class="right_top">${recentReserveInfo.reserve_no}</td>
        </tr>
        <tr>
            <td class="mmt_left" align="center">예약번호</td>
            <td class="mmt_right">${recentReserveInfo.reserve_id}</td>
        </tr>
        <tr>
            <td class="mmt_left" align="center">신청자 아이디</td>
            <td class="mmt_right">${recentReserveInfo.user_id}</td>
        </tr>
        <tr>
            <td class="mmt_left" align="center">신청자 닉네임</td>
            <td class="mmt_right">${recentReserveInfo.user_name}</td>
        </tr>     
        <tr>
            <td class="mmt_left" align="center">예약신청한 날짜</td>
            <td class="mmt_right">${recentReserveInfo.reserve_date}</td>
        </tr>
        <tr>
            <td class="mmt_left" align="center">예약 날짜</td>
            <td class="mmt_right">${recentReserveInfo.rs_date}</td>
        </tr>
        <tr>
            <td class="mmt_left" align="center">예약 장소</td>
            <td class="mmt_right">${recentReserveInfo.add_ress}</td>
        </tr>
        <tr>
            <td class="left_under"  align="center">예약한 시간</td>
            <td class="right_under">${recentReserveInfo.rs_time}</td>
        </tr>    
	</c:if>
    </table>
</body>
</html>

  <%@ include file="../top_bottom/footer.jsp" %>