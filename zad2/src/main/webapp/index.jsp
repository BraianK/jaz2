<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Strona główna</title>
</head>
<body>
	<div class="container" style="margin-top: 200px; text-align: center">
		<div class="card" >
			<div class="card-body">
				<form action="" method="get">
					<input class="btn btn-primary btn-lg" type="submit"
						formaction="premium" value="Strona premium"> <input
						class="btn btn-primary btn-lg" type="submit"
						value="Panel administratora" formaction="adminPanel"> <input
						class="btn btn-primary btn-lg" type="submit" value="Zaloguj"
						formaction="login"> <input class="btn btn-primary  btn-lg"
						type="submit" value="Zarejestruj" formaction="registration">
					<input class="btn btn-primary btn-lg" type="submit"
						value="Dane użytkownika" formaction="userData">
				</form>
			</div>
		</div>
	</div>
</body>
</html>