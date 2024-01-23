<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

aside {
	background: #333;
	float: left;
	width: 150px;
	margin-top: 50px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
}

aside div {
	display: flex;
	justify-content: center;
    align-items: center;
    border-bottom: 1px solid #fff;
    padding: 10px 2px;
}
aside div a {
	color: #fff;
	text-decoration: none;
	font-size: 1.2em;
}

main {
	margin-left: 150px;
	padding: 10px;
}
.profile {
	width: 500px;
	height: 250px;
	padding: 10px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.notices {
	padding: 10px;
	width: 500px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.deptnotices {
	padding: 10px;
	width: 500px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.workhour {
	padding: 10px;
	width: 500px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.calendar {
	padding: 10px;
	width: 500px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.library {
	padding: 10px;
	width: 500px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.vacation {
	padding: 10px;
	width: 500px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.deptattendance {
	padding: 10px;
	width: 1026px;
	height: 250px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<header>
		<div class="user-info">
          			<span>[${user.dept_name}]</span> 
           			<span>[${user.em_name}님 접속하셨습니다]</span>
           			<a href="/login/logout"><button style="cursor: pointer;">로그아웃</button></a>
	</div>
        <div class="attendance-buttons">
            <a href="/attendance/check?commit=출근"><button style="cursor: pointer;">출근</button></a>
            <a href="/attendance/check?commit=퇴근"><button style="cursor: pointer;">퇴근</button></a>
        </div>
	</header>
	<aside>
			<div><a href="/board/list">게시판</a></div>
     		<div><a href="/attendance/deptread">근태 확인</a></div>
			<div><a href="/emp/list">사원 목록</a></div>
			<div><a href="/dept/list">부서 목록</a></div>
			<div><a href="/approval/list">전자 결재 시스템</a></div>
			<div><a href="/emp/insert">사원추가</a></div>
			<div style="border: 0px;"><a href="/info/profile">마이페이지</a></div>
	</aside>
	<main>
		<table>
			<tr>
				<td>
				<div class="profile">나의 정보
				<div><strong>사원번호:</strong> ${user.userid}</div> 
				<div><strong>이름:</strong> ${user.em_name}</div>
				<div><strong>생년월일:</strong> ${user.em_birth}</div>
				<div><strong>입사일:</strong> ${user.em_hiredate}</div>
				<div><strong>부서명:</strong> ${user.dept_name}</div>
				<div><strong>연봉:</strong> ${user.em_salary}</div>
				<div><strong>전화번호:</strong> ${user.em_phone}</div>
				<div><strong>주소:</strong> ${user.em_address}</div>
				<div><strong>e-mail:</strong> ${user.em_email}</div>
				</div>
				</td>
				<td>
					<div class="notices">전체 공지사항</div>
				</td>
				<td>
					<div class="deptnotices">부서 공지사항</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="workhour">근로 시간</div>
				</td>
				<td>
					<div class="calendar">달력</div>
				</td>
				<td>
					<div class="library">자료실</div>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<div class="vacation">휴가 정보</div>
				</td>
				<td>
					<div class="deptattendance">부서원 근태
					<p>
					<c:forEach items="${view}" var="v">
					<li>${v.em_name} [${v.userid}] ${v.checktime} ${v.commit}</li>
					</c:forEach>
					</p>
					</div>
					
				</td>
			</tr>
		</table>
	</main>

</body>
</html>