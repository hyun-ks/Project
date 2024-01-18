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
			<span>사용자명: [사용자명]</span> <span>부서: [부서명]</span>
		</div>
		<div class="attendance-buttons">
			<a href="/attendance/check"><button>출퇴근</button></a>
		</div>
	</header>
	<nav class="nav">
		<ul>
			<li><a href="/emp/list">직원 정보</a><br>
				<ul>
					<li><a href="/emp/list">사원 목록</a><br></li>
					<li><a href="/dept/list">부서 목록</a><br></li>
				</ul></li>
			<li><a href="/board/list">게시판</a><br>
				<ul>
					<li><a href="/board/notice">공지사항</a><br></li>
					<li><a href="/board/plan">교육계획</a><br></li>
					<li><a href="/board/library">자료실</a><br></li>
					<li><a href="/board/evaluation">사원 평가</a><br></li>
				</ul></li>
			<li><a href="/attendance/read">근태 확인</a><br></li>
			<li><a href="/approval/list">전자 결재 시스템</a><br></li>
			<li><a href="/info/profile">마이페이지</a><br></li>
		</ul>
	</nav>
    <main>

<h1>마이페이지</h1>

<h2> 내정보 </h2>
<strong>사원번호:</strong>${user.userid}<br>
<strong>이름:</strong>${user.em_name}<br>
<strong>생년월일:</strong>${user.em_birth}<br>
<strong>입사일:</strong>${user.em_hiredate}<br>
<strong>부서명:</strong>${user.dept_name}<br>
<strong>연봉:</strong>${user.em_salaly}<br>
<strong>전화번호:</strong>${user.em_phone}<br>
<strong>주소:</strong>${user.em_address}<br>
<strong>e-mail:</strong>${user.em_email}<br>

<%
    String username = "사용자명"; // 사용자명을 가져오는 함수 호출 (가정)
    String email = "이메일@example.com"; // 이메일을 가져오는 함수 호출 (가정)
%>

<div>
  
        <button type="button" onclick="location.href=('http://localhost:8081/info/edit');"> 정보수정 </button>
        
    </form>
    <!-- 사용자 정보를 보여주고, 수정할 수 있는 폼을 제공합니다. -->
</div>
</main>
</body>
</html>