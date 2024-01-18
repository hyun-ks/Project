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

<h1>마이페이지 - 내 정보 수정</h1>

<div>
    <h2>기본 정보 확인</h2>
    <strong>사원번호:</strong> ${user.userid}<br>
    <strong>이름:</strong> ${user.em_name}<br>
    <strong>생년월일:</strong> ${user.em_birth}<br>
    <strong>입사일:</strong>${user.em_hiredate}<br>
    <strong>부서명:</strong>${user.dept_name}<br>
	<strong>연봉:</strong>${user.em_salaly}<br>
    
    <!-- 사용자가 수정한 정보를 확인합니다. -->
    
     <h2>개인정보 수정</h2>
	<form id="updateForm" action="/info/update-mypage" method="get">
    <!-- 수정할 내용 입력 폼 -->

    <!-- 추가 필드들을 여기에 추가 -->
    <div class="form-group">
        <label for="phoneNumber">전화번호:</label>
        <input type="text" id="phoneNumber" name="em_phone">
    </div>
    <div class="form-group">
        <label for="email">e-mail:</label>
        <input type="email" id="email" name="em_email">
    </div>
    <div class="form-group">
        <label for="address">주소:</label>
        <input type="text" id="address" name="em_address">
    </div>
    <div class="form-group">
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="Password">
    </div>
    <div class="form-group">
        <label for="confirmPassword">비밀번호 확인:</label>
        <input type="password" id="confirmPassword" name="confirmPassword">
    </div>

    <!-- 비밀번호 일치 여부 확인 메시지 -->
    <div id="pwConfirm"></div>

    <!-- 비밀번호 불일치 메시지 -->
    <div id="pwMismatch" style="color: red;"></div>

    <!-- JavaScript 코드 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function pwCheck() {
            if ($('#password').val() == $('#confirmPassword').val()) {
                $('#pwConfirm').text('비밀번호 일치').css('color', 'green');
            } else {
                $('#pwConfirm').text('비밀번호 불일치').css('color', 'red');
            }
        }

        // 비밀번호 입력이 변경될 때마다 pwCheck 함수 호출
        $('#password, #confirmPassword').on('input', pwCheck);

        // 폼 서브밋 전에 실행되는 함수
        $('#updateForm').submit(function () {
            // 빈 칸이 있는지 확인
            if ($('#phoneNumber').val() === '' || $('#email').val() === '' || $('#address').val() === '' || $('#password').val() === '' || $('#confirmPassword').val() === '') {
                showError('빈 칸을 채워주세요');
                return false;
            }

            // 비밀번호 일치 여부 확인
            if ($('#password').val() !== $('#confirmPassword').val()) {
                showError('비밀번호가 일치하지 않습니다');
                return false;
            }

            // 여기에서 추가적인 유효성 검사를 수행할 수 있습니다.

            // 모든 검사를 통과하면 true 반환
            return true;
        });

        function showError(message) {
            alert(message);   
        }
    </script>

    <!-- 저장 버튼 -->
    <button type="submit"> 수정 </button>
</form>

            <!-- 기타 수정할 내용을 여기에 추가 -->
    
    <%-- 여기에 데이터베이스 업데이트 로직을 추가해야 합니다. --%>
    <%-- 예시: 데이터베이스에 사용자 정보 업데이트 --%>
    <%-- updateUserInfo(updatedUsername, updatedEmail); --%>
    <%-- 위의 메서드는 가정일 뿐 실제로는 데이터베이스에 정보를 업데이트하는 로직을 넣어야 합니다. --%>
</div>
</main>
</body>
</html>
