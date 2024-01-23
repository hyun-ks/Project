<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>사원추가</title>
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
.insert {
	width: 500px;
	margin: auto;
	margin-top: 30px;
	background: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.insert input[type="text"], .insert input[type="password"] {
	width: 250px;
	padding: 10px;
	margin-top: 5px;
	margin-bottom: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
.insert input[type="file"], .insert input[type="hidden"]{
padding-top:12px;
}
main form div div{
height: 48px;
}
main form div div label{
float:left;
padding-top:15px;
padding-left:15px;
}
main form div div input{
float:right;
}

</style>
</head>
<body>
	<header>
		<div class="user-info">
			<span>[${user.dept_name}]</span> <span>[${user.em_name}님
				접속하셨습니다]</span> <a href="/login/logout"><button>로그아웃</button></a>
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
			<li><a href="/emp/insert">사원추가</a><br></li>
			<li><a href="/info/profile">마이페이지</a><br></li>
		</ul>
	</nav>
	<main>
		<form action="insert" method="post" enctype="multipart/form-data" class="insert">
		<h2>사원 추가</h2>
			<div>
			<div><label>userid</label> <input name="userid" type="text"></div> 
			<div><label>em_name</label> <input name="em_name" type="text"></div>
			<div><label>em_birth</label> <input name="em_birth" placeholder=" yyyy/MM/dd" type="text"></div>
			<div><label>em_hiredate</label> <input name="em_hiredate" placeholder=" yyyy/MM/dd" type="text"></div>
			<div><label>em_gender</label> <label style="float:right;"><input type="radio" name="em_gender" value="여">여</label>
			<label style="float:right;"><input type="radio" name="em_gender" value="남">남</label> </div> 
									 	 
			<div><label>em_phone</label> <input name="em_phone" type="text"></div>
			<div><label>em_address</label> <input name="em_address" type="text"></div>
			<div><label>em_email</label> <input name="em_email" type="text"></div>
			<div><label>em_photo</label> <input name="photo" type="file"> 
										<input name="em_photo" type="hidden" value=""></div>
			<div><label>em_salary</label> <input name="em_salary" type="text"></div>
			<div><label>auth_set</label> <input name="auth_set" type="text"></div>
			<div><label>vac_no</label> <input name="vac_no" type="text"></div>
			<div><label>Password</label> <input name="Password" type="password"></div>

			<div>
			<div style="float:right; width:220px;"><select name="dept_no" style="padding:5px; width:100px; height:38px;">
				<c:forEach items="${dept}" var="d">
					<option value="${d.dept_no}">${d.dept_name}</option>
				</c:forEach>
			</select> <input type="submit" value="추가" style="width: 100px;
	padding: 10px;
	margin-bottom: 5px;
	border-radius: 5px;
	background: #333;
	color: #fff;
	border: none;
	cursor: pointer; float: right;"></div></div>
			</div>
		</form>
	</main>
</body>
</html>