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
			<script language="javascript">
				function fncSubmit()
				{

					if (document.ChangePasswordForm.OldPassword.value === "")
					{
						alert('Please input old password');
						document.ChangePasswordForm.OldPassword.focus();
						return false;
					}

					if (document.ChangePasswordForm.newpassword.value === "")
					{
						alert('Please input Password');
						document.ChangePasswordForm.newpassword.focus();
						return false;
					}

					if (document.ChangePasswordForm.conpassword.value === "")
					{
						alert('Please input Confirm Password');
						document.ChangePasswordForm.conpassword.focus();
						return false;
					}

					if (document.ChangePasswordForm.newpassword.value !== document.ChangePasswordForm.conpassword.value)
					{
						alert('Confirm Password Not Match');
						document.ChangePasswordForm.conpassword.focus();
						return false;
					}

					document.ChangePasswordForm.submit();
				}
			</script>
			<form name="ChangePasswordForm" method="post" action="ResetPasswordServlet" OnSubmit="return fncSubmit();">

				<table border="1" align="center" bgcolor="#2B60DE">

					<tr>
						<td>OLD PASSWORD</td>
						<TD><input name="OldPassword" type="password" id="OLDpwd" size="20" value="${sessionScope["user"].password}"></td>
					</tr>
					<tr>
						<td>NewPassword</td>
						<td><input name="newpassword" type="password" id="newpassword">
						</td>
					</tr>
					<tr>
						<td>Confirm Password</td>
						<td><input name="conpassword" type="password" id="conpassword">
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" name="Submit" value="Save"></td>
					</tr>

				</table>
			</form>
		</main>
		<%@include file="jspf/footer.jspf" %>
	</body>
</html>