<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<form action="adminPanel" method="get">
		<table>
			<tr>
				<th>Imię</th>
				<th>Login</th>
				<th>Email</th>
				<th>Premium</th>
			</tr>
			<c:forEach items="${userList}" var="element">
			<tr>
			<td><input type="text" value="${element.name}" /></td>
			<td><input type="text" name="login" value="${element.login}" /></td>
			<td><input type="text" value="${element.email}" /></td>
			<td><input type="checkbox" name="isPremium" <c:if test="${element.isPremium}">checked</c:if> value="${element.login}"><br></td>
			</tr></c:forEach>
		</table>
			<input type="submit" name="saveData" value="Zapisz">
	</form>
</body>
</html>

