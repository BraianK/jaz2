<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="registration" method="get">
	<div>
		<label>Name:</label> <input type="text" id="name" name="name" />
	</div>
	<div>
		<label>Login:</label><input type="text" id="login" name="login" />
	</div>
	<div>
		<label>Email:</label><input type="text" id="email" name="email" />
	</div>
	<div>
		<label>Hasło:</label><input type="password" id="password" name="password" />
	</div>
	<div>
		<label>Potwierdz hasło:</label><input type="password" id="passwordConfirm" name="passwordConfirm" />
	</div>
		<input type="submit" name="registerButton" value="Wyslij">
	</form>
		<div>
		${errorMessage}
		</div>

</body>
</html>