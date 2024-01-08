<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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
	min-height: 70px;
	border-bottom: #e8491d 3px solid;
}

.login-form {
	width: 30%;
	margin: 5% auto;
	background: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-form input[type="text"], .login-form input[type="password"],
	.login-form input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.login-form input[type="submit"] {
	background: #333;
	color: #fff;
	border: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<header>
		<div class="container">
			<h1>Welcome to HR Management System</h1>
		</div>
	</header>
	<div class="container">
		<div class="login-form">
			<h2>Login</h2>
			<form action="loginProcess" method="post">
				Username: <input type="text" name="username"><br>
				Password: <input type="password" name="password"><br> <input
					type="submit" value="Login"><br>
					
			</form>
		</div>
	</div>
</body>
</html>