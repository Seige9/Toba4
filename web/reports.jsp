<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*"%>

<%
    String[][] users=null;
try{
	users=(String[][])request.getAttribute("users");
}catch(Exception ex){
    
}
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    
<head>
    <title>TOBA: Titan Online Banking Application</title>    
    <link rel="stylesheet" href="Toba.css" />
</head>
<body>
<div>
    <header>
        <h1>Titan Online Banking Application</h1>
    </header>
    <nav>
    <ul>
    <li><a href="index.html">Home</a>
    </li>
    <li><a href="Login.html">Login</a>
    </li>
    <li><a href="NewCustomer.jsp">New Customer</a>
    </li>
    <li><a href="Account_activity.html">Account Activity</a>
    </li>
    <li><a href="Transaction.html">Transaction</a></li>
    <li><a href="/Toba4/ReportServlet1">Spreadsheet</a></li>
    
    </ul>
   </nav>
</div>



<center><h2 style="margin-left:120px;">User Details</h2>  </center>

<table cellspacing='10' align="center">
<tr>
 <td>UserName</td>
 <td>FirstName</td>
 <td>LastName</td> 
 <td>Phone</td>
 <td >Address</td>
 <td>City</td>
 <td>State</td>
 <td>ZipCode</td>
 <td>Email</td>
 <td>End Date</td>
</tr>
<%
if(users!=null){
for(String[] user:users)
{
%>
   <tr>
   
    <td><% if(user[0]!=null) out.write(user[0]); %></td>	
    <td><%if(user[1]!=null) out.write(user[0]);%></td>	
    <td><% if(user[2]!=null) out.write(user[0]); %></td>  
    <td><%if(user[3]!=null) out.write(user[0]);%></td>
	<td><%if(user[4]!=null) out.write(user[0]);%></td>
    <td><%if(user[5]!=null) out.write(user[0]); %></td>
    <td><%if(user[6]!=null) out.write(user[0]); %></td>
    <td><%if(user[7]!=null) out.write(user[0]);%></td>
 	<td><%if(user[8]!=null) out.write(user[0]);%></td>
  </tr>
 
  

<%
  }
}
%> 
</table>


</body>
</html>


    
