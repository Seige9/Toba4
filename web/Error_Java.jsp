<%-- 
    Document   : Error_jave
    Created on : Oct 20, 2015, 3:12:00 PM
    Author     : Shawn_000
--%>

<%@ page isErrorPage="true" %>
<link rel="stylesheet" href="Toba.css">
<html>
<head>
<title>Show Error Page</title>
</head>
<body>
<h1>Opps...Error_java</h1>
<p>Sorry, an error occurred.</p>
<p>Here is the exception stack trace: </p>
<pre>
<% exception.printStackTrace(response.getWriter()); %>
</pre>
</body>
</html>