<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <!-- CSS와 스타일시트 링크 등 추가 -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            padding-left: 20px;
            min-height: 70px;
            border-bottom: #e8491d 3px solid;
        }
        .attendance-buttons {
        	padding-left: 85%;
        }
        nav {
        background: #333;
            float: left;
            width: 150px;
            text-align: center;
            margin-top: 20px;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-left: 0px;
        }
        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
        }
        main {
        margin-left: 150px;
        padding: 10px;
        }
        .profile {
        padding-top: 10px;
        padding-left: 10px;
        width: 500px;
        }
        .notices {
        padding-top: 10px;
        width: 500px;
        }
    </style>
</head>
<body>
    <header>
        <div class="user-info">
            <span>[${user.dept_name}]</span> 
            <span>[${user.em_name}님 접속하셨습니다]</span>
        </div>
        <div class="attendance-buttons">
            <a href="/attendance/check"><button>출근</button></a>
            <a href="/attendance/check"><button>퇴근</button></a>
        </div>
        <!-- 다른 메뉴 항목 -->
    </header>

    <nav>
        <ul>
            <!-- 왼쪽 메뉴 항목 -->
            
            <li><a href="/board/list">게시판</a><br></li>
            <li><a href="/attendance/deptread">근태 확인</a><br></li>
            <li><a href="/emp/list">사원 목록</a><br></li>
            <li><a href="/dept/list">부서 목록</a><br></li>
            <li><a href="/approval/list">전자 결재 시스템</a><br></li>
            <li><a href="/info/add">사원추가</a><br></li>
            <li><a href="/info/profile">마이페이지</a><br></li>
            
            <!-- ... -->
        </ul>
    </nav>

    <main>
    <table>
    <tr>
    <td>
        <div class="profile">
            <!-- 나의 정보 영역 -->
            asda
        </div>
        </td>
        <td>
        <div class="notices">
            <!-- 전체 공지사항 및 부서 공지사항 -->
            dsads
        </div>
        </td>
        <!-- 다른 구역들 -->
        </tr>
    </table>
    </main>

    <!-- 그 외 세부 구현 -->
</body>
</html>