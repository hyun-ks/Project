<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hrm.board.BoardDAO" %>
<%@ page import="com.hrm.board.Board" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시글</title>
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
        <h1>게시글</h1>
    <% 
        // URL 매개변수로부터 게시글 ID를 받아옴
        String boardIdParam = request.getParameter("id");
        
        // 게시글 ID가 없을 경우 에러 메시지 표시
        if (boardIdParam == null || boardIdParam.isEmpty()) {
    %>
        <p>게시글 ID가 없습니다.</p>
    <% 
        } else {
            int boardId = Integer.parseInt(boardIdParam);
            BoardDAO boardDAO = new BoardDAO();
            Board board = boardDAO.getBoardById(boardId); // 해당 ID의 게시글을 가져옴

            // 가져온 게시글이 없을 경우 에러 메시지 표시
            if (board == null) {
    %>
                <p>해당 ID의 게시글을 찾을 수 없습니다.</p>
    <% 
            } else {
    %>
                <h2><%= board.getTitle() %></h2>
                <p><%= board.getContent() %></p>
                <!-- 다른 게시글 정보들을 여기에 표시할 수 있음 -->
    <% 
            }
        }
    %>
    </main>

    <!-- 그 외 세부 구현 -->
</body>
</html>