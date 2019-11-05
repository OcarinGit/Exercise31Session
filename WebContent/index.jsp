<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Login Credentials</h2>
	<form action="LoginServlet" method="post">
		<p>
			<label for="txtUsername">Username:</label>
			<input type="text" id="txtUsername" name="txtUsername">
		</p>
		<p>
			<label for="txtPassword">Password:</label>
			<input type="Password" id="txtPassword" name="txtPassword">
		</p>
		<p>
			<input type="submit" value="Login">
		</p>
	</form>
</body>
</html>