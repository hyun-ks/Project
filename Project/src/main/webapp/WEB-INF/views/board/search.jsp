<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>검색 글 목록</title>
<style>
   
    body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            padding-left: 20px;
            min-height: 70px;
            border-bottom: #e8491d 3px solid;
        }
        .attendance-buttons {
        	padding-left: 85%;
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
        main {
        margin-left: 150px;
        padding: 10px;
        }
		#center {
			text-align : center;
			margin-left: auto;
			margin-right: auto;
			margin:80px;
			}

table {
        width: 80%;
        border-top: 1px solid #444444;
        border-collapse: collapse;
        margin-left:auto; 
        margin-right:auto;
        
      }
      
      td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  text-align: center;
}

th {
  padding: 8px;
  text-align: left;
  text-align: center;
  border-top: 2px solid #000;
  border-bottom: 2px solid #000;
  color: #000;
}

		.dbuttons {
			margin-right: 180px;
   			text-decoration-line: none;
  			 color: inherit; 
   }
   

#page {
			text-align: center;
		}
</style>
</head>
<body>
   <header>
        <div class="user-info">
            <span>사용자명: [사용자명]</span><br> <!-- 사용자 이름 -->
            <span>부서: [부서명]</span> <!-- 부서명 -->
        </div>
        <div class="attendance-buttons">
            <button>출퇴근</button>
        
        </div>
        <!-- 다른 메뉴 항목 -->
    </header>

    <nav>
        <ul>
            <!-- 왼쪽 메뉴 항목 -->
           	
            <li><a href="/board/list">게시판</a><br></li>
            <li><a href="/attendance/deptread">근태 확인</a><br></li>
            <li><a href="/emp/list">사원 목록</a><br></li>
            <li><a href="/dept/list">부서 목록</a><br></li>
            <li><a href="/approval/list">전자 결재 시스템</a><br></li>
            <li><a href="/emp/insert">사원추가</a><br></li>
            <li><a href="/info/profile">마이페이지</a><br></li>
            
            <!-- ... -->
        </ul>
    </nav>
	<div id="center">
		<h1 >${search}로 검색한 결과입니다.</h1>
		<hr style= "width: 10% "></hr><br>
		
		<div id="search" align="center">
<form action="search">
<select name="searchn">
<option value="0">제목</option>
<option value="1">내용</option>
<option value="2">작성자</option>
</select>
<input type="text" name="search" size="15" maxlength="50" /> 
<input type="submit" value="검색" />
</form></div>
		
		<div align="right">
		<div class="dbuttons">
		<tr>
			<p><th><button><a href="/board/list">게시판 목록</a></button></th>
			<th> <button><a href="list">등록</a></button></th></p>
			</tr>
		</div>
</div>
		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${bList}" var="board">
					<tr>
						<td><a href ="content/${board.num}">${board.title}</a></td>
						<td>${board.userid }</td>
						<td><fmt:formatDate value="${board.regdate }" dateStyle="short"/> </td>
					</tr>
				</c:forEach>
			</table>
			<div id="page"><br>
				<c:if test="${begin > pageNum }">
					<a href="search?p=${begin-1}&search=${search}&searchn=${searchn}">[이전]</a>
				</c:if>
				<c:forEach begin="${begin }" end="${end}" var="i">
					<a href="search?p=${i}&search=${search}&searchn=${searchn}">${i}</a>
				</c:forEach>
				<c:if test="${end < totalPages }">
					<a href="search?p=${end+1}&search=${search}&searchn=${searchn}">[다음]</a>
				</c:if>
			</div>

		</c:if>
		<c:if test="${count == 0 }">
	검색 조건에 맞는 글이 없습니다.
</c:if>
	
	</div>
</body>
</html>