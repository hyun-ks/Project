<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>내 정보 업데이트</title>
    <script>
        window.onload = function() {
            alert("변경 사항이 저장되었습니다.");
            // 여기에 프로세스 진행을 위한 코드를 추가할 수 있습니다.
            // 예를 들어, 특정 기능을 호출하거나 서버로부터 데이터를 가져오는 등의 작업을 수행할 수 있습니다.
            // 이 예시에서는 3초 후에 "프로세스가 완료되었습니다!"라는 알림을 띄우는 것으로 대체하겠습니다.
            
        };
        </script>
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

<h1>내 정보 업데이트</h1>

<%
    // 사용자로부터 넘겨받은 정보 가져오기
    String updatedUsername = request.getParameter("username");
    String updatedEmail = request.getParameter("email");

    // 여기서는 예시로 출력하지만, 실제로는 데이터베이스에 업데이트하는 로직을 추가해야 합니다.
    out.println("<p>수정된 사용자명: " + updatedUsername + "</p>");
    out.println("<p>수정된 이메일: " + updatedEmail + "</p>");

    // 실제 데이터베이스 업데이트 로직을 구현해야 합니다.
    // 여기서는 가정으로 데이터베이스에 업데이트한다는 메시지만 출력합니다.
    out.println("<p>데이터베이스에 정보를 업데이트합니다...</p>");

    // 실제 데이터베이스 업데이트 로직은 여기에 들어가야 합니다.
    // updateUserInfo(updatedUsername, updatedEmail);
    // 위의 메서드는 가정일 뿐 실제로는 데이터베이스에 정보를 업데이트하는 로직을 넣어야 합니다.
%>
<a href="../main">홈으로</a>
</main>
</body>
</html>
