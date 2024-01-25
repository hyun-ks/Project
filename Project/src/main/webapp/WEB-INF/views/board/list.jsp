<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <title>Board List</title>
    <!-- CSS와 스타일시트 링크 등 추가 -->
    <style>
    body {
            
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin:  auto;
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
        	padding-left: 85%
        	
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
			
		.attend-buttons {
			margin-right: 180px;
   			text-decoration-line: none;
  			 color: inherit; 
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
		<h1>게시판</h1>
		<hr style="width: 4% "></hr><br>
		
		<div id="search" align="center">
	<form action = "search">
		<select name="searchn">
			<option value="0">제목</option>
			<option value="1">내용</option>
			<option value="2">작성자</option>
		</select>
		<input type="text" name="search" size="30" maxlengh="70"/>
		<input type="submit" value="검색" />
		</form></div>
		
			<div   align="right">
			<div class="attend-buttons">
			<p><button><a href="/main"  target='_blank'></a><a href="write">글 등록</a></button></p>
		
		</div>
            </div>
	

		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>No.1</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${bList}" var="b">
					<tr>
						<td>${b.num}</td>
						<td><a href ="content/${b.num}">${b.title}</a></td>
						<td>${b.userid }</td>
						<td><fmt:formatDate value="${b.regdate}" dateStyle="short"/> </td>
						<td>${b.readcount }</td>
					</tr>
				</c:forEach>
			</table>
			<div id="page"><br>
				<c:if test="${begin > pageNum }">
					<a href="list?p=${begin-1 }"> [이전]</a>
				</c:if>
				<c:forEach begin="${begin }" end="${end}" var="i">
					<a href="list?p=${i}">${i}</a>
				</c:forEach>
				<c:if test="${end < totalPages }">
					<a href="list?p=${end+1}">[다음]</a>
				</c:if>
			</div>

		</c:if>
		<c:if test="${count == 0 }">
	아직 입력한 글이 없습니다.
</c:if>
	
</body>
</html>