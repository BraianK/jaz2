<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form action="" method="get">
		<input type="submit" value="Zarejestruj" formaction="registration">
		<input type="submit" value="Zaloguj" formaction="login"> 
		<input type="submit" value="Dane" formaction="userData">
		<input type="submit" formaction="premium" value="Strona premium">
		<input type="submit" value="Panel administratora" formaction="adminPanel">
	</form>
	<div>
		${errorMessage}
	</div>
</body>
</html>