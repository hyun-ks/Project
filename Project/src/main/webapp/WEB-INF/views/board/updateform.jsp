<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<style>

header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            padding-left: 20px;
            min-height: 70px;
              border-bottom: #e8491d 3px solid;
            }
            
     table{
       text-align: center;
        margin-right:auto;
        margin-left: 580px;
        
        
	}
	th{
	
  	text-align: left;
  	text-align: center;
	}
	
	td{
	text-align: right;
  	text-align: center;
	}
	
.orange{
text-align: center;
}


</style>


</head>
<body>
<header></header>

<h1  style="text-align: center;" >글 수정</h1>
<h5 style="text-align: center;"">글  수정을 원하시면 수정해 주세요</h5><br>
<form method="post" id="updateform" action="/board/update" >


<hr style=" width: 38%">
<input type="hidden" name="_method" value="put">
</hr>

	<table>
		<tr>	
			<td class="orange">제목</td>
			<td><input name="title" value="${dto.title }"/>
				<input name="num" value="${dto.num}" type="hidden"> 
			</td>
		</tr>
		<tr>
			<td class="orange">작성자</td>
			<td><input name="id" value="${dto.userid}" readonly></td>
		</tr>
		
		</table>
		
		<hr style=" width: 38%"></hr>
			<div class="orange">
			<p><textarea name="content" type="text" placeholder="내용을 입력하세요" rows="20" cols="100" style= "resize: none;">${b.content}</textarea></p>
	<hr style=" width: 38%"></hr>
	
		<tr>
		
			<td colspan="2" align="center" ><input type="submit" value="수정 완료"> </td>
		</tr>
</div>

</form>
</body>
</html>