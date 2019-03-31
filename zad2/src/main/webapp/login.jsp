<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form action="login" method="get">
		<div>
			<label>Login:</label><input type="text" id="login" name="login" />
		</div>
		<div>
			<label>Hasło:</label><input type="password" id="password" name="password" />
		</div>
			<input type="submit" name="loginButton" value="wyslij">
	</form>
		<div>
		${errorMessage}
		</div>		
</body>
</html>