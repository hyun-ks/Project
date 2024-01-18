<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>전자 결재 신청</title>
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
    <h1>전자 결재 신청</h1>
    
    <form method="post" action="process_approval.jsp">
        <label for="approvalType">결재 유형:</label>
        <select name="approvalType" id="approvalType">
            <option value="expense">경비 신청</option>
            <option value="leave">휴가 신청</option>
            <!-- 다른 유형의 결재도 추가할 수 있습니다. -->
        </select><br><br>
        
        <label for="reason">신청 사유:</label><br>
        <textarea name="reason" id="reason" rows="4" cols="50"></textarea><br><br>
        
        <input type="submit" value="신청">
    </form>
</body>
</html>
