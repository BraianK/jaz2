<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="get">
		<div>
			<label>Imie:</label><input type="text" id="name" name="name" value="${userData.name}" />
		</div>
		<div>
			<label>Login:</label><input type="text" id="login" name="login" value="${userData.login}" />
		</div>
		<div>
			<label>Email:</label><input type="text" id="email" name="email" value="${userData.email}" />
		</div>
	</form>

</body>
</html>