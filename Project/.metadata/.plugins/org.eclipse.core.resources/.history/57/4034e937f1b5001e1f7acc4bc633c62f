<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String employeeId = request.getParameter("employeeId");
    String dateTime = request.getParameter("dateTime");

    // 데이터베이스 연결 설정 (아래의 정보는 예시이며, 실제 정보로 교체해야 함)
    String url = "jdbc:mysql://localhost:3306/your_database_name";
    String username = "your_username";
    String password = "your_password";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, password);
        Statement stmt = conn.createStatement();

        // 출퇴근 정보를 데이터베이스에 저장하는 SQL 쿼리 실행
        String sql = "INSERT INTO attendance (employee_id, datetime) VALUES ('" + employeeId + "', '" + dateTime + "')";
        stmt.executeUpdate(sql);

        conn.close();
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    }
%>
