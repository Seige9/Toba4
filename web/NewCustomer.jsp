<%-- 
    Document   : NewCustomer
    Created on : Oct 27, 2015, 7:57:18 PM
    Author     : Shawn_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
   <head>
      <title>TOBA: Titan Online Banking Application</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Titan Online Banking Application will serve as a bankjing application for all of its customers.">
      <link rel="stylesheet" href="Toba.css">
   </head>
   <div>
      <header>
         <h1>Titan Online Banking Application</h1>
      </header>
      <nav>
         <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="Login.html">Login</a></li>
            <li><a href="NewCustomer.jsp">New Customer</a></li>
            <li><a href="Account_activity.html">Account Activity</a></li>
            <li><a href="Transaction.html">Transaction</a></li>
   </div>
   </ul>
   </nav>
   </main>
   <h2>New Customer</h2>
   <p><i>${"Please Fill in All of the Fields."}<i></p>
   <form action="NewCustomer" method="post">
      <input type ="hidden" name="action" value=add";<br>
      <label class ="pad_top">First Name:</label>
      <input type="text" name="Firstname" value ="${user.Firstname}"<br>
      <label class ="pad_top">Last Name:</label>
      <input type="text" name="Lastname" value ="${user.Lastname}"<br>
      <label class ="pad_top">Phone:</label>
      <input type="text" name="Phone" value ="${user.Phone}"<br>
      <label class ="pad_top">Address:</label>
      <input type="text" name="Address" value ="${user.Address}"<br>
      <label class ="pad_top">City:</label>
      <input type="text" name="City" value ="${user.City}"<br>
      <label class ="pad_top">State:</label>
      <input type="text" name="State" value ="${user.State}"<br>
      <label class ="pad_top">Zipcode:</label>
      <input type="text" name="Zipcode" value ="${user.Zipcode}"<br>
      <label class ="pad_top">Email:</label>
      <input type="email" name="Email" value ="${user.Email}"<br>
      <label>&nbsp;<label>
      <input type="submit" value="Join" class=" margin_left"
   </form>
   </main>

