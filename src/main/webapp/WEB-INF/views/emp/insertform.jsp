<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="insert" method="post" enctype="multipart/form-data">
userid <input name="userid"> <br>
em_name <input name="em_name"> <br>
em_birth <input name="em_birth"> <br>
em_hiredate <input name="em_hiredate"> <br>
em_gender <input type="radio" name="em_gender" value="남">남 
<input type="radio" name="em_gender" value="여">여 
<br>
em_phone <input name="em_phone" > <br>
em_address <input name="em_address"> <br>
em_email <input name="em_email"> <br>
em_photo <input name="photo" type="file"> 
<input name="en_photo" type="hidden" value=""> <br>
em_salaly <input name="em_salaly"> <br>
auth_set <input name="auth_set"> <br>
vac_no <input name="vac_no"> <br>
dept_no <input name="dept_no"> <br>
<input type="submit" value="추가">
</form>
</body>
</html>