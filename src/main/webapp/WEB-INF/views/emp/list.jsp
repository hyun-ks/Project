<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee List</title>
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
            <a href="/attendance/check"><button>출근</button></a>
            <a href="/attendance/check"><button>퇴근</button></a>
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
    <h1>Employee List</h1>

    <table border="1">
        <tr>
            <th>userid</th>
            <th>em_name</th>
            <th>em_birth</th>
            <th>em_hiredate</th>
            <th>em_gender</th>
            <th>em_phone</th>
            <th>em_address</th>
            <th>em_email</th>
            <th>em_photo</th>   
            <th>em_salaly</th>   
            <th>auth_set</th>
            <th>vac_no</th>
        </tr>
        
         <c:forEach items="${emp}" var="e">
         <tr>
         	<td> ${e.userid}</td>
       		<td> ${e.em_name}</td>
       		<td> ${e.em_birth}</td>
       		<td> ${e.em_hiredate}</td>
       		<td> ${e.em_gender}</td>
       		<td> ${e.em_phone}</td>
       		<td> ${e.em_address}</td>
       		<td> ${e.em_email}</td>
       		<th> ${e.em_photo}</th> 
       		<td> ${e.em_salaly}</td>
       		<td> ${e.auth_set}</td>
       		<td> ${e.vac_no}</td>
       	 </tr>
         </c:forEach>
       
    </table>
    </main>
</body>
</html>