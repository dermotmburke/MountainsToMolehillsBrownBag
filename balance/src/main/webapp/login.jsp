<%@ include file="include.jsp"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="http://www.testbank.co.uk/style.css" />
</head>
<body>

	<img src="http://www.testbank.co.uk/logo.png"/>
	<p>Click here to <a href="/auth/login.jsp">Log in</a></p>
	<div class="env_info"><%= System.getProperties().getProperty("server")%></div>
</body>
</html>
