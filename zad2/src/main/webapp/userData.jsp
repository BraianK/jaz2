<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="margin-top: 50px;">
		<div class="card" style="width: 50%; margin: auto;">
			<div class="card-body">
				<form action="" method="get">
					<div class="form-group">
						<label>Imię:</label><input class="form-control" type="text" id="name" name="name"
							value="${userData.name}" />
					</div>
					<div class="form-group">
						<label>Login:</label><input class="form-control" type="text" id="login" name="login"
							value="${userData.login}" />
					</div>
					<div class="form-group">
						<label>Email:</label><input class="form-control" type="text" id="email" name="email"
							value="${userData.email}" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>