<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지 - 내 정보 수정</title>
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

<h1>마이페이지 - 내 정보 수정</h1>

<%
    String updatedUsername = request.getParameter("username");
    String updatedEmail = request.getParameter("email");

    // 이 부분에서는 받아온 정보를 처리하고 데이터베이스에 업데이트하는 코드가 들어가야 합니다.
    // 여기서는 입력된 정보를 확인하여 출력하는 예시 코드를 작성하겠습니다.
%>

<div>
    <h2>수정된 정보 확인</h2>
    <p><strong>수정된 사용자명:</strong> <%= updatedUsername %></p>
    <p><strong>수정된 이메일:</strong> <%= updatedEmail %></p>
    <!-- 사용자가 수정한 정보를 확인합니다. -->

    <%-- 여기에 데이터베이스 업데이트 로직을 추가해야 합니다. --%>
    <%-- 예시: 데이터베이스에 사용자 정보 업데이트 --%>
    <%-- updateUserInfo(updatedUsername, updatedEmail); --%>
    <%-- 위의 메서드는 가정일 뿐 실제로는 데이터베이스에 정보를 업데이트하는 로직을 넣어야 합니다. --%>
</div>
</main>
</body>
</html>
