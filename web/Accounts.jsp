<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.AccountType" %>

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
			<h3>Accounts</h3>
			<table>
				<thead><th>Id</th><th>Type</th><th>Balance</th><th>Send Fund</th></thead>
					<c:forEach var="account" items="${sessionScope['user'].accountCollection}">
					<tr>
						<td><c:out value="${account.id}"/></td>
						<td>
							<c:set var="checking" value="<%= AccountType.CHECKING.getValue()%>"/>
							<c:choose> 

								<c:when test="${account.type == checking}">
									<c:out value="<%= AccountType.CHECKING.name()%>"></c:out>
								</c:when>
								<c:otherwise>
									<c:out value="<%= AccountType.SAVINGS.name()%>"></c:out>
								</c:otherwise>
							</c:choose>
						</td>
						<td><c:out value="${account.balance}"/></td>
						<td>
							<form action="TransactionServlet" method="post">
								Amount <input type="number" id="amount" name="amount">
								<input type="hidden" value="${account.id}"
									   id="from-account" name="from-account">
								To Account Id <input type="number" id="to-account" name="to-account">
								<input type="submit" value="Send">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
			<p>${requestScope['message']}</p>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>
</html>