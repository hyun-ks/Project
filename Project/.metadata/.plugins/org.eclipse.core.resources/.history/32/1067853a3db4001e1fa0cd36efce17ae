<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hrm.board.BoardDAO" %>
<%@ page import="com.hrm.board.Board" %>
<!DOCTYPE html>
<html>
<head>
    <title>Board List</title>
    <!-- CSS와 스타일시트 링크 등 추가 -->
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
    </style>
</head>
<body>
    <header>
        <div class="user-info">
            <span>사용자명: [사용자명]</span> <!-- 사용자 이름 -->
            <span>부서: [부서명]</span> <!-- 부서명 -->
        </div>
        <div class="attendance-buttons">
            <button>출근</button>
            <button>퇴근</button>
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
            <li><a href="/info/profile">마이페이지</a><br></li>
            
            <!-- ... -->
        </ul>
    </nav>
    <main>
    <h2>게시판 목록</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <%-- 여기에 서버에서 게시글 목록을 가져와서 표시하는 부분 --%>
             <%-- <%
                // 여기서는 가상의 데이터를 사용하여 게시글 목록을 보여주는 예시입니다.
                // 실제로는 데이터베이스에서 게시글을 가져와야 합니다.
                List<Board> boards = BoardService.getBoardList(); // BoardService는 가상의 서비스로 가정하고 있습니다.

                for (Board board : boards) {
            %>
                <tr>
                    <td><%= board.getId() %></td>
                    <td><a href="viewBoard.jsp?id=<%= board.getId() %>"><%= board.getTitle() %></a></td>
                    <td><%= board.getAuthor() %></td>
                    <td><%= board.getDate() %></td>
                </tr>
            <%
                }
            %>  --%>
        </tbody>
    </table>
    <fieldset>
		  <legend class="blind">게시판 내부 검색</legend>
		  <div class="buttom_search_wrap clear">
			<div class="select_box bottom_array fl">
    			<select id="search_type" name="search_type">
    			  <option value="search_subject_memo">제목+내용</option>
    			  <option value="search_subject">제목</option>
    			  <option value="search_memo">내용</option>
    			  <option value="search_name">글쓴이</option>
    			      			</select>
    			<div class="select_area" onclick="showLayer(this, 'searchTypeLayer');return false;">
    			  <span id="search_type_txt">제목+내용</span><span class="blind">게시물 정렬 옵션</span>
    			  <span class="inner"><em class="sp_img icon_option_more"></em></span>
    			</div>
    			<ul id="searchTypeLayer" class="option_box" style="left:-1px;top:36px;display:none">
    			  <li onclick="javascript:searchTypeSel('search_subject_memo')">제목+내용</li>
    			  <li onclick="javascript:searchTypeSel('search_subject')">제목</li>
    			  <li onclick="javascript:searchTypeSel('search_memo')">내용</li>
    			  <li onclick="javascript:searchTypeSel('search_name')">글쓴이</li>
    			      			</ul>
		  	</div>
			<div class="bottom_search fl clear">
			<div class="inner_search">
			  <input class="in_keyword" type="text" name="search_keyword" title="검색어 입력" value="">
			</div>
			<button class="sp_img bnt_search" onclick="search('');return false;"><span class="blind">검색</span></button>
		  </div>
		</div>
		</fieldset>
    </main>
</body>
</html>