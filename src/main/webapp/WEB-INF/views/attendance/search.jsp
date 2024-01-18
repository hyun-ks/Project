<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>조회 결과</title>
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

.check {
	width: 600px;
	margin: auto;
	margin-top: 10px;
	padding: 20px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.check ul {
}

.check ul li {
	margin: 3px;
}
.date{

}
</style>
</head>
<body>
	<header>
		<div class="user-info">
			<span>[${user.dept_name}]</span> <span>[${user.em_name}님
				접속하셨습니다]</span> <a href="login"><button>로그아웃</button></a>
		</div>
		<div class="attendance-buttons">
			<a href="/attendance/check?commit=출근"><button>출근</button></a> <a
				href="/attendance/check?commit=퇴근"><button>퇴근</button></a>
		</div>
	</header>
	<nav>
		<ul>
			<li><a href="/board/list">게시판</a><br></li>
			<li><a href="/attendance/deptread">근태 확인</a><br></li>
			<li><a href="/emp/list">사원 목록</a><br></li>
			<li><a href="/dept/list">부서 목록</a><br></li>
			<li><a href="/approval/list">전자 결재 시스템</a><br></li>
			<li><a href="/emp/insertform">사원 추가</a><br></li>
			<li><a href="/info/profile">마이페이지</a><br></li>
		</ul>
	</nav>
	<main>
		<div class="check">
			<h2>조회 결과</h2>
			<div class="date">
			<fmt:formatDate value="${startDate}" pattern="yyyy/MM/dd"/> 
			 ~ <fmt:formatDate value="${endDate}" pattern="yyyy/MM/dd"/>
			</div>
			<ul>
				<c:forEach items="${sc}" var="s">

					<li>사원번호${s.userid} ${s.checktime} ${s.commit}</li>

				</c:forEach>
			</ul>
		</div>
	</main>
</body>
</html>