<%-- 
    Document   : NewCustomer
    Created on : Oct 27, 2015, 7:57:18 PM
    Author     : Shawn_000
--%>

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
			<h2>New Customer</h2>
			<p><i>${"Please Fill in All of the Fields."}</i></p>
			<form action="NewCustomerServlet" method="post">
				<input type ="hidden" name="action" value="add"/><br>
				<label class ="pad_top">First Name:</label>
				<input type="text" name="Firstname" /><br>
				<label class ="pad_top">Last Name:</label>
				<input type="text" name="Lastname" /><br>
				<label class ="pad_top">Phone:</label>
				<input type="text" name="Phone" /><br>
				<label class ="pad_top">Address:</label>
				<input type="text" name="Address" /><br>
				<label class ="pad_top">City:</label>
				<input type="text" name="City" /><br>
				<label class ="pad_top">State:</label>
				<input type="text" name="State" /><br>
				<label class ="pad_top">Zipcode:</label>
				<input type="text" name="Zipcode" /><br>
				<label class ="pad_top">Email:</label>
				<input type="email" name="Email" /><br>
				<label>&nbsp;</label>
				<input type="submit" value="Join" class="margin_left" />
			</form>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>
</html>