<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="java.util.List" %>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	
	<div>
		<form action="user/login" method="post">
			Username:<input type="text" name="username"/><br/>
			Password:<input type="passwrod" name="password"/><br/>
			<input type="submit" value="login" /><br/>
		</form>
	</div>
	
	<a href="user/register">register</a>
		
</body>
</html>
