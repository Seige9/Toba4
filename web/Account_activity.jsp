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
			<table>
				<thead>
				<th>Transaction Id</th>
				<th>From Account</th>
				<th>To Account</th>
				<th>Amount</th>
				<th>Datetime</th>
				</thead>
				<c:forEach var="account" items="${sessionScope['user'].accountCollection}">
					<tr>
						<td colspan="5">Account Id '<c:out value="${account.id}"/>' Sent-Transactions</td>
					</tr>
					<c:forEach var="transaction" items="${account.sentTransactionCollection}">
						<tr>
							<td><c:out value="${transaction.id}"/></td>
							<td><c:out value="${transaction.fromAccount.id}"/></td>
							<td><c:out value="${transaction.toAccount.id}"/></td>
							<td><c:out value="${transaction.amount}"/></td>
							<td><c:out value="${transaction.datetime}"/></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5">Account Id '<c:out value="${account.id}"/>' Recieved-Transactions</td>
					</tr>
					<c:forEach var="transaction" items="${account.recievedTransactionCollection}">
						<tr>
							<td><c:out value="${transaction.id}"/></td>
							<td><c:out value="${transaction.fromAccount.id}"/></td>
							<td><c:out value="${transaction.toAccount.id}"/></td>
							<td><c:out value="${transaction.amount}"/></td>
							<td><c:out value="${transaction.datetime}"/></td>
						</tr>
					</c:forEach>
				</c:forEach>
			</table>
			<p>
				<c:out value="${requestScope['message']}" />
			</p>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>
</html>