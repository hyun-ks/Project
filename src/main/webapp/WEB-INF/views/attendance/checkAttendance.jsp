<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>근태 조회 결과</title>
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
    <h2>근태 조회 결과</h2>
    <% 
        String employeeId = request.getParameter("employeeId");
        String startDateStr = request.getParameter("startDate");
        String endDateStr = request.getParameter("endDate");

        // 날짜 형식 변환
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = dateFormat.parse(startDateStr);
        Date endDate = dateFormat.parse(endDateStr);

        // 데이터베이스 연결 설정 (아래의 정보는 예시이며, 실제 정보로 교체해야 함)
        String url = "jdbc:mysql://localhost:3306/your_database_name";
        String username = "your_username";
        String password = "your_password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement stmt = conn.createStatement();

            // 출퇴근 정보를 데이터베이스에서 조회하는 SQL 쿼리 실행
            String sql = "SELECT * FROM attendance WHERE employee_id = '" + employeeId + "' AND datetime BETWEEN '" + startDateStr + "' AND '" + endDateStr + "'";
            ResultSet rs = stmt.executeQuery(sql);

            // 조회된 결과 출력
            while (rs.next()) {
                String dateTime = rs.getString("datetime");
                // 결과를 출력하는 등의 작업 수행
                out.println("직원 ID: " + employeeId + " / 날짜 및 시간: " + dateTime + "<br>");
            }

            conn.close();
        } catch (Exception e) {
            out.println("Exception: " + e.getMessage());
        }
    %>
</body>
</html>
