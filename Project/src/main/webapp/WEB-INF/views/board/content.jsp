<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 상세보기</title>

<style>



        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            padding-left: 30px;
            min-height: 70px;
            border-bottom:  3px solid #fff ;
            }
            
       
            
 
table{
 		width: 70%;
		text-align: center;
        margin:auto;
        border-collapse: collapse;
	
}

th, td {
  border: 1px solid #ddd; 
  padding: 8px; 
  text-align: center;
  font-weight: bold;
}

	.abuttons{
			margin-right: 15%;
   			text-decoration-line: none;
  			color: inherit; 
  			
}
	.bbuttons{
			margin-right: 15%;
   			text-decoration-line: none;
  			color: inherit;
}

		
</style>
</head>
<body>

<header></header>


<h1  align="center" >글 수정</h1>
<hr style="width: 5%"></hr><br>
<table border="1">
	<tr><td>제목</td><td>${dto.title}</td>
	<th>등록일</th><th><fmt:formatDate value="${dto.regdate }" dateStyle="long"/></th>
	</tr>
	<tr><td>작성자</td><td>${dto.userid}</td>
	<th>조회수</th><th>${dto.readcount}</tr>
	
	
	
	<c:if test="${ user.userid == dto.userid }">
	</c:if>
	<div class="abuttons" align="right">
	<button><a href="/board/update/${dto.num}"> 수정</a></button>
	</div>
	
	
	<hr style= "width: 70%">
	</hr>
	
</table>

	<hr style=" width: 70%"></hr>
	
<table style="align: left">

	<tr><td>내용</td></tr>
	<tr><td>${dto.content} </td></tr>

</table>
	<hr style= "width: 70%"></hr><br>
	
<div class="bbuttons" align="right">
	<tr>
	<th><button><a id="${dto.num}" href="#"> 삭제</a></button></th>
	<th><button><a href="../list"> 이동</a> </button></th>
	</tr>

</div>


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