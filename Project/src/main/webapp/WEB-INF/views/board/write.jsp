<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<style>
	
	header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            padding-left: 20px;
            min-height: 70px;
            border-bottom: #e8491d 3px solid;
            }
            
             nav {
        background: #333;
            float: left;
            width: 150px;
            text-align: center;
            margin-top: 20px;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-left: 0px;
        }
        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
        }


	table{
       text-align: center;
        margin-right:auto;
        margin-left: 580px;
        font-weight:bold;
        
	}
	th{
	
  	text-align: left;
  	text-align: center;
	}
	
	td{
	text-align: right;
  	text-align: center;
	}
	
	.content{
	
		text-align: center;
		resize: none;
		
	}
	.button-container{
	text-align: center;
	}
	 	
</style>
</head>
<body>
<header></header>

	<h1 style="text-align: center;">새 글 작성</h1>
	<h5 style="text-align: center;">게시판에 남기고 싶은 글이 있으시다면 남겨주세요!</h5>
	<form method="post" id="writeform">

	<hr style=" width: 38%">
	
	<table>
	<tr><th>제목</th><th><input type="text" name="title" placeholder="제목 입력" size="30"></th></tr>
		
	<tr><td>작성자</td><td><input name="userid" value="${user.userid}" readonly size="30" ></td></tr>
			
		</table>
		
		</hr>

		
		<div class="content">
		<hr  style="width: 38%"></hr>
			<p><textarea name="content" type="text" placeholder="내용을 입력하세요" rows="20" cols="100" style= "resize: none;"></textarea></p>
			
		</div>
		<hr style="width: 38%"></hr>
		
		
		<div class="button-container">
		
			<tr>
				<th><input type="submit" value="등록"></th>
				<th><input type="submit" value="취소"></th>
			
			</tr>
			
	</div>
	
		</form>
	
</body>
</html>