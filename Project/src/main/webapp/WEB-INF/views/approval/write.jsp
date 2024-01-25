<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<style>
	.orange{background-color: orange;}
	table{border-collapse : collapse;}
</style>
</head>
<body>
<form method="post" enctype="multipart/form-data"id="writeform">
	<table border="1">
		<tr>
			<td class="orange">휴가종류</td>
			<td><select name="num">
				<c:forEach items="${type}" var="t">
					<option value="${t.num}">${t.atype}</option>
				</c:forEach>
			</select></td>
		</tr>
		<tr>
			<td class="orange">작성자</td>
			<td><input name="userid" value="${user.userid}" readonly></td>
		</tr>
		<tr>
		<td><label for="startDate">시작 날짜:</label></td>
        <td><input type="date" id="startDate" name="startDate"></td>
        </tr>
        <tr>
        <td><label for="endDate">종료 날짜:</label></td>
        <td><input type="date" id="endDate" name="endDate"></td>
		</tr>
		<tr>
		<td class="orange">자료</td>
		<td><input type="file" name="file"></td>
		</tr>
		
		<tr>
		<td class ="orange">결제자</td>
		<td><select name="userid">
    	<c:forEach items="${name}" var="n">
		<option value="${n.userid}">${n.em_name}</option>
		</c:forEach>
		</select>
		<select name="userid">
    	<c:forEach items="${name}" var="n">
		<option value="${n.userid}">${n.em_name}</option>
		</c:forEach>
		</select>
		<select name="userid">
    	<c:forEach items="${name}" var="n">
		<option value="${n.userid}">${n.em_name}</option>
		</c:forEach>
		</select></td>
		</tr>
		
		
		
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="새글 등록"> 
			</td>
		</tr>
	</table>

</form>

</body>
</html>