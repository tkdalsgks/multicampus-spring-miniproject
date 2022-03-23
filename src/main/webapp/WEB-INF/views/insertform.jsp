<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	

</head>
<body>

	<form action="register" method="post">
		아이디 <input type="text" name="userId"><br>
		암호 <input type="password" name="userPwd"><br>
		이름 <input type="text" name="userName"><br>
		이메일 <input type="text" name="userEmail"><br>
		<input type="submit" value="회원가입"><br>
	</form>

</body>
</html>