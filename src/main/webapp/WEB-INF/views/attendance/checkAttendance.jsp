<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>근태 조회 결과</title>
</head>
<body>
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
