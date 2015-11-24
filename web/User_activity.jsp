<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
--><html>
	<head>
		<title>TOBA: Titan Online Banking Application</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Titan Online Banking Application will serve as a bankjing application for all of its customers.">
		<link rel="stylesheet" href="Toba.css">
		<link rel="stylesheet" href="Toba.css">
	</head>
	<body>
		<%@include file="jspf/header.jspf" %>
		<%@include file="jspf/nav.jspf" %>
		<main>
			<h2>Welcome</h2>
			<p>
				Account Activity: 
				<c:choose> 
					<c:when test="${sessionScope['user'] != null}">
						Welcome, <c:out value="${sessionScope['user'].firstname} ${sessionScope['user'].lastname}" />
					</c:when>
					<c:otherwise>
						Not Logged In
					</c:otherwise>
				</c:choose>
			</p>
			<p>Information Displayed Below:</p>
			<p>
				<c:out value="${requestScope['message']}" />
			</p>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>
</html>