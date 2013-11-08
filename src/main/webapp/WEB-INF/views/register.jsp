<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Register Page</title>
</head>
<body>

	<div>
		<form action="register" method="post">
			Username:<input type="text" name="username"/><br/>
			Password:<input type="passwrod" name="password"/><br/>
			<input type="submit" value="login" /><br/>
		</form>
	</div>
		
</body>
</html>
