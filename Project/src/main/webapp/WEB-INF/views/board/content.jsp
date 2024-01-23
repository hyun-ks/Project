<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 상세보기</title>
</head>
<body>
<table border="1">
	<tr><td>제목</td><td>${dto.title}</td>
	<tr><td>작성자</td><td>${dto.userid}</td>
	<tr><td>내용</td><td>${dto.content}</td>
	<tr><td>등록일</td><td><fmt:formatDate value="${dto.regdate }" dateStyle="long"/></td>
	<tr><td>조회수</td><td>${dto.readcount}</td>
	<tr><td colspan="2" align="right">
	<c:if test="${ user.userid == dto.userid }">
	<a href="/board/update/${dto.num}">글 수정 </a> 
	<a id="${dto.num}" href="#">글 삭제</a>
	</c:if>
	<a href="../list">목록 이동</a> 
	</td></tr>
</table>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("a[id]").click(function(){
			let num = $(this).attr("id");
			$.ajax({url:"/board/delete", data:"no="+num, method:"delete"}
			).done(function(){
				location.href="/board/list";
			})
			return false;
		})//click
	})//ready

</script>
</body>
</html>