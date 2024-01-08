<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>전자 결재 신청</title>
</head>
<body>
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
