<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    
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
	display: flex;
	flex-direction: column;
	list-style-type: none;
	padding: 0;
	gap: 10px;
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
           			<a href="login"><button>로그아웃</button></a>
	</div>
        <div class="attendance-buttons">
            <a href="/attendance/check?commit=출근"><button>출근</button></a>
            <a href="/attendance/check?commit=퇴근"><button>퇴근</button></a>
        </div>
	</header>
	<nav>
		<ul>
			<li><a href="/board/list">게시판</a><br></li>
     			<li><a href="/attendance/deptread">근태 확인</a><br></li>
			<li><a href="/emp/list">사원 목록</a><br></li>
			<li><a href="/dept/list">부서 목록</a><br></li>
			<li><a href="/approval/list">전자 결재 시스템</a><br></li>
			<li><a href="/info/profile">마이페이지</a><br></li>
		</ul>
	</nav>
    <main>

<h1>마이페이지 - 내 정보</h1>

<%
    // 여기에 사용자 정보를 가져오는 Java 코드를 넣어야 합니다.
    // 예를 들어, 사용자 정보를 가져오는 함수가 있다고 가정하겠습니다.
    String username = "사용자명"; // 사용자명을 가져오는 함수 호출 (가정)
    String email = "이메일@example.com"; // 이메일을 가져오는 함수 호출 (가정)
%>

<div>
    <h2>내 정보</h2>
    <form action="updateUserInfo" method="post">
        <label for="username">사용자명:</label>
        <input type="text" id="username" name="username" value="<%= username %>"><br><br>

        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" value="<%= email %>"><br><br>

        <input type="submit" value="정보 수정">
    </form>
    <!-- 사용자 정보를 보여주고, 수정할 수 있는 폼을 제공합니다. -->
</div>
</main>
</body>
</html>