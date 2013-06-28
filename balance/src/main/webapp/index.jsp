<%@ include file="include.jsp"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="http://www.testbank.co.uk/style.css" />
<title>Test Bank</title>
</head>
<body>
	<img src="http://www.testbank.co.uk/logo.png"/>
	<p>
		Hi
		<shiro:guest>Guest</shiro:guest>
		<shiro:user>
			<shiro:principal />
		</shiro:user>
		! (
		<shiro:user>
			<a href="/auth/s/logout">Log out</a>
		</shiro:user>
		<shiro:guest>
			<a href="/auth/s/login.jsp">Log in</a>
		</shiro:guest>
		)
	</p>
	<p>
		<ul>
			<li><a href="/balance/index.jsp">Balance</a></li>
			<li><a href="/loans/index.jsp">Loans</a></li>
			<li><a href="/mortgage/s/index">Mortgage</a></li>
		</ul>
	</p>
	<p>The Balance of your account is 
	<%= org.apache.shiro.SecurityUtils.getSubject().getSession().getAttribute("balance") %>
	<div class="env_info"><%= System.getProperties().getProperty("server")%></div>
</body>
</html>
