<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
--><html>
	<head>
		<title>TOBA: Titan Online Banking Application </title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Titan Online Banking Application will serve as a bankjing application for all of its customers.">
		<link rel="stylesheet" href="Toba.css">
	</head>

	<body>
		<%@include file="jspf/header.jspf" %>
		<%@include file="jspf/nav.jspf" %>
		<main>
			<h2>Welcome</h2>
			<p>You Have Successfully Signed Up For A New Account: </p>
			<p>Here is the information that you entered:</p>

			<label>Email:</label>
			<span>${sessionScope["user"].email}</span><br>
			<label>First Name:</label>
			<span>${sessionScope["user"].firstname}</span><br>
			<label>Last Name:</label>
			<span>${sessionScope["user"].lastname}</span><br>
			<label>Address:</label>
			<span>${sessionScope["user"].address}</span><br>
			<label>State:</label>
			<span>${sessionScope["user"].city}</span><br>
			<label>Zipcode:</label>
			<span>${sessionScope["user"].zipcode}</span><br>
			<label>Phone:</label>
			<span>${sessionScope["user"].phone}</span><br>
			<label>Username:</label>
			<span>${sessionScope["user"].username}</span><br>
			<label>Password:</label>
			<span>${sessionScope["user"].password}</span><br>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>
</html>