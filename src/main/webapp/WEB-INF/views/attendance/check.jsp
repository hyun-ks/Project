<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>출퇴근 등록</title>
</head>
<body>

<c:if test="${popupMessage == null}">

 
         <span>[${user.userid}]</span>
         <span>${user.em_name}</span>
         <span> 현재시간 : <fmt:formatDate value="${time}" pattern="yyyy/MM/dd HH:mm"/> </span>
         <span>${commit} </span>   
         
</c:if>

<c:if test="${popupMessage != null}">
	
<script> alert("${popupMessage}"); 
		history.go(-1);

</script>

</c:if>         
</body>
</html>