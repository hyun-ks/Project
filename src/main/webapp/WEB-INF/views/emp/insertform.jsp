<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <title>사원추가</title>
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
            height: 600px;
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
            <li><a href="/emp/insert">사원추가</a><br></li>
            <li><a href="/info/profile">마이페이지</a><br></li>
            
            <!-- ... -->
        </ul>
    </nav>
<body>
<form action="insert" method="post" enctype="multipart/form-data">
userid <input name="userid"> <br>
em_name <input name="em_name"> <br>
em_birth <input name="em_birth" placeholder=" yyyy/MM/dd"> <br>
em_hiredate <input name="em_hiredate" placeholder=" yyyy/MM/dd"> <br>
em_gender <input type="radio" name="em_gender" value="남">남 
<input type="radio" name="em_gender" value="여">여 
<br>
em_phone <input name="em_phone" > <br>
em_address <input name="em_address"> <br>
em_email <input name="em_email"> <br>
em_photo <input name="photo" type="file"> 
<input name="en_photo" type="hidden" value=""> <br>
em_salaly <input name="em_salaly"> <br>
auth_set <input name="auth_set"> <br>
vac_no <input name="vac_no"> <br>
Password<input name="Password" type="password"><br>

 		<select name="dept_no">
		<c:forEach items="${dept}" var="d">
		<option value="${d.dept_no}">${d.dept_name}</option>
		</c:forEach>
		</select>		
<input type="submit" value="추가">
</form>
</body>
</html>