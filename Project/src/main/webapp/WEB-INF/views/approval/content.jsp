<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>휴가 상세보기</title>
</head>
<body>
<table border="1">
	
	<tr><td>휴가 종류</td>
	<%-- <c:forEach items="${app}" var="a">
	<td>${a.atype}</td>
	</c:forEach></tr> --%>
	<td>${dto.atype }</td></tr>
	<tr><td>작성자</td><td>${dto.userid}</td></tr>
	<tr><td>파일</td><td><a href="/approvaldownload/${dto.appnum}">${dto.name}</a></td></tr>
	<tr><td>등록일</td><td><fmt:formatDate value="${dto.regdate}" dateStyle="long"/></td>
	<tr><td colspan="2" align="right">
	<c:if test="${user.userid == dto.userid }">
	<a id="${dto.appnum}" href="#">글 삭제</a>
	</c:if>
	<a href="../list">목록 이동</a> 
	</td></tr>
</table>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("a[id]").click(function(){
			let appnum = $(this).attr("id");
			$.ajax({url:"/approval/delete", data:"appnum="+appnum, method:"delete"}
			).done(function(){
				location.href="/approval/list";
			})
			return false;
		})//click
	})//ready

</script>
</body>
</html>