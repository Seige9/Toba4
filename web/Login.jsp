<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
	<head>
		<title>TOBA: Titan Online Banking Application</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Titan Online Banking Application will serve as a bankjing application for all of its customers.">
		<link rel="stylesheet" href="Toba.css">
	</head>
	<body>
		<%@include file="jspf/header.jspf" %>
		<%@include file="jspf/nav.jspf" %>
		<main>
			<h2>Login</h2>
			<p>Required fields are marked with an asterisk (*).</p>
			<form method="post" action="LoginServlet">
				*Username:
				<input type="text" name="Username" />
				<br/> *Password:
				<input type="text" name="Password" />
				<br/>
				<input type="submit" value="login" />
				<input type="button" value="New Customer" onclick="window.location.href = 'NewCustomer.jsp'" />
				<a href="password_reset.jsp">Reset Password</a>
			</form>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>