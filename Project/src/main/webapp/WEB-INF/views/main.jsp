<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
	min-height: 70px;
	border-bottom: #e8491d 3px solid;
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

.myinfo {
	width: 200px;
	height: 30px;
	text-align: center;
	font-size: 20px;
	margin: auto;
	border-radius: 5px;
	box-shadow: inset 0 0 4px rgb(0 0 0/ 30%);
	display: flex;
	justify-content: center;
	align-items: center;
}

.myinfo b {
	display: flex;
	justify-content: center;
	align-items: center;
}

.myinfo_1 {
	width: 330px;
	height: 180px;
	float: right;
	margin-top: 20px;
	display: flex;
	justify-content: space-evenly;
	flex-direction: column;
}

.myinfo_2 {
	width: 150px;
	float: left;
	padding: 5px;
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 10px;
}

.deptatt {
	width: 500px;
	height: 30px;
	text-align: center;
	font-size: 20px;
	margin: auto;
	border-radius: 5px;
	box-shadow: inset 0 0 4px rgb(0 0 0/ 30%);
	display: flex;
	justify-content: center;
	align-items: center;
}

.deptatt_info {
	height: 200px;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
	overflow: hidden;
	gap: 10px;
	
}
.deptatt_info_1 {
	padding:50px 0px;
	display:flex;
}
.deptatt_info_1 div{
	display: flex;
	text-align:center;
	justify-content: center;
    align-items: center;
    line-height: 25px;
}
</style>
</head>
<body>
	<header>
		<div class="user-info" style="float: left; padding-left: 10%;">
			<span>[${user.em_name}님 접속하셨습니다]</span><span>[${user.dept_name}]</span>
			<a href="/login/logout"><button style="cursor: pointer;">로그아웃</button></a>

		</div>
		<div class="attendance-buttons" style="float: right; padding-right: 10%;">
			<a href="/attendance/check?commit=출근"><button style="cursor: pointer;">출근</button></a> 
			<a href="/attendance/check?commit=퇴근"><button style="cursor: pointer;">퇴근</button></a>
			
		</div>
	</header>
	<aside>
			<div><a href="/main">메인 화면</a></div>
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
				<div class="profile">
						<div class="myinfo">
							<b>나의 정보</b>
						</div>
						<div class="myinfo_1">
							<div>
								<strong>사원번호:</strong> ${user.userid}
							</div>
							<div>
								<strong>생년월일:</strong>
								<fmt:formatDate value="${user.em_birth}" pattern="yyyy년 MM월 dd일" />
							</div>
							<div>
								<strong>입사일:</strong>
								<fmt:formatDate value="${user.em_hiredate}"
									pattern="yyyy년 MM월 dd일" />
							</div>
							<div>
								<strong>부서명:</strong> ${user.dept_name}
							</div>
							<div>
								<strong>전화번호:</strong> ${user.em_phone}
							</div>
							<div>
								<strong>주소:</strong> ${user.em_address}
							</div>
							<div>
								<strong>e-mail:</strong> ${user.em_email}
							</div>
						</div>
						<div class="myinfo_2">
							<div>
								<img src="/upload/${user.em_photo}" alt="사진"
									style="width: 150px; height: 150px;">
							</div>
							<div>
								<strong>이름:</strong> ${user.em_name}
							</div>
						</div>
					</div>
				</td>
				<td style="padding-left:3px; padding-right:3px;">
					<div class="notices">전체 공지사항</div>
				</td>
				<td>
					<div class="deptnotices">부서 공지사항</div>
				</td>
			</tr>
			</table>
			<table>
			<tr>
				<td>
					
					<div class="workhour">
					<span><fmt:formatDate value="${Date}" pattern="yyyy년 MM월 dd일"/></span>
					
					<p>현재 <span>${Time}</span>근로중입니다</p>

					
					</div>
				</td>
				<td style="padding-left:3px; padding-right:3px;">
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
				<td style="padding-left:3px;">
					<div class="deptattendance">
						<div class="deptatt"><b>부서원 근태</b></div>
						<div class="deptatt_info">
							<c:forEach items="${view}" var="v">
								<div class="deptatt_info_1">
									<div style="width: 120px; height: 120px;">
										<img src="/upload/${v.em_photo}" alt="사진"
											style="width: 120px; height: 120px;">
									</div>
									<div style="width: 70px;">${v.em_position}
										<br> ${v.em_name} <br> ${v.commit}
									</div>
								</div>
							</c:forEach>

						</div>
					</div>

				</td>
			</tr>
		</table>
	</main>

</body>
</html>