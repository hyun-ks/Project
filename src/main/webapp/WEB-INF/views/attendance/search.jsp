<%@ page contentType="text/html; charset=UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div>
	 ${startDate} ${endDate}<br>

	<c:forEach items="${sc}" var="s">
	<td>사원번호${s.userid} ${s.checktime} ${s.commit}</td><br>
	</c:forEach>
</div>		
</body>
</html>