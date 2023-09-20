<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
            margin: 0;
            padding: 0;
            
        }

        ul {
            list-style: none;
        }

        a {
            display: block;
            text-decoration: none;
            margin-bottom: 0;
            
        }

        footer {
            width: 100%;
            background: #333;
            height: 150px;
            background-color:#323232;
            
        }

        .bottomlogo {
            width: 100px;
            margin: 0 auto;
        }

        .bottomlogo img {
            width: 120px;
            height: 60px;
        }

        .copyright {
            width: 1200px;
            display: flex;
            font-size: 12px;
            margin: 0 auto;
            padding: 20px 0;
            line-height: 18px;
            background: #333;
            background-color:transparent;
            padding-bottom: 0;
        }

        .left {
            width: 900px;
            float: left;
            color: white;
            font-size: 13px;
            margin-top: 30px;
        }

        .right {
            width: 300px;
            float: right;
            color:white;
            margin-top: 30px;
        }

        .link {
            display: flex;
            color:white;
        }

        .link li a::after {
            content: "|";
            margin-left: 5px;
            margin-right: 5px;
        }

        .link li:last-child a::after {
            content: none;
            margin: 0;
        } 
        .link a {
        	color : white;
        }
    </style>
</head>

<body>
    <footer>
      
        <ul class="copyright">
            <li>
                <ul class="left">
                  <!--  <li>&nbsp;</li>
                  <li>&nbsp;</li>
                  <li>&nbsp;</li>
                  <li>&nbsp;</li>   -->        
                    <li>
                        Company : ㈜ 모션메이트 | Owner : 김종길,이호중,노윤호,이준환 | 10414 경기 고양시 일산동구 중앙로 1193 (마두동) 마두법조빌딩 701호
                    </li>
                    <li>
                        Company RegiStration : No.222-77-66655 /
                        Telecommunication services registration No.: 제2023~경기고양-77777호
                    </li>
                    <li>
                        Contect : EzenAc0510@ezenac.co.kr / 고객센터 : 2222-3333
                        operating time : (Mon-Fri : 9:00 - 11:30 / 13:00 - 17:30)
                    </li>
                </ul><!--left-->
            </li>
            <li>
                <ul class="right">
          <!--            <li>&nbsp;</li>
                  <li>&nbsp;</li>
                  <li>&nbsp;</li>
                  <li>&nbsp;</li> -->
              
                    <li>Copyright © EZ23. All rights reserved.</li>
                    <li>
                        <ul class="link">
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li>
                                <span class="icon-git-hub">
                                    <a href="https://github.com/lmat423/team_project">
                                        <img src="/static/main/GIT-LOGO.png" width="50" height="50">
                                    </a>
                                </span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul><!--copyright-->
    </footer>
</body>

</html>