<%@ include file="include.jsp"%>

<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/style.css"/>" />
	
<title>Test Bank</title>
</head>
<body>
	<h2>Test Bank Home</h2>
	<p>
		Hi
		<shiro:guest>Guest</shiro:guest>
		<shiro:user>
			<shiro:principal />
		</shiro:user>
		! (
		<shiro:user>
			<a href="/login/logout">Log out</a>
		</shiro:user>
		<shiro:guest>
			<a href="/login/login.jsp">Log in</a>
		</shiro:guest>
		)
	</p>
	<shiro:user>
	<p>
		<ul>
			<li><a href="/balance/index.jsp">Balance</a></li>
			<li><a href="/loans/index.jsp">Loans</a></li>
		</ul>
	</p>
	</shiro:user>
</body>
</html>
