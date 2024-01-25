<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>전자 결재 목록</title>
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
    <h1>전자 결재 목록</h1>
    
    <%
        // 여기서 데이터베이스 연결 및 쿼리를 수행하여 결재 목록을 가져옵니다.
        // 예를 들어, Java의 JDBC를 사용하여 데이터베이스에 연결하고 쿼리를 실행할 수 있습니다.
        // 가져온 데이터를 반복문을 통해 테이블 혹은 목록으로 표시합니다.
        try {
            // 데이터베이스 연결 코드 작성
            
            // 쿼리를 통해 결재 목록을 가져옵니다.
            // ResultSet으로 결과를 받아온 후 반복문을 통해 목록을 표시합니다.
            // 예를 들어,
            // ResultSet rs = statement.executeQuery("SELECT * FROM 결재목록");
            // while (rs.next()) {
            //     // 여기서 결재 목록을 표시하는 코드 작성
            // }
            
            // 데이터베이스 연결 해제
        } catch (Exception e) {
            e.printStackTrace();
            // 에러 처리 로직 추가
        }
    %>
    
    <!-- 여기에 결재 목록을 표시할 HTML 코드 작성 -->
    <!-- 예를 들어, 테이블 형태로 결재 목록을 표시 -->
    </main>
</body>
</html>
