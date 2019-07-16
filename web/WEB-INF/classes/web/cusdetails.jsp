<%-- 
    Document   : cusdetails.jsp
    Created on : 26 Mar, 2019, 10:21:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    Date:<%=new java.util.Date()%>
 <%@page import="java.util.Calendar"%>
 <%@page import="java.util.Random"%>
 <%@page import="java.text.SimpleDateFormat"%>
 <%@page import="java.awt.Color"%>
    <body style="padding:0; margin: 0">

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
     <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="home.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</li>
        <li><a href="contact.jsp">Contact Us</li>
        <li><a href="address.jsp"> Address</li>
       <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Login</a></li>
    </ul>
</div>
        <form method="post" action="Bpayment.jsp">
            <table>
                
            <tr>
                <td> <input type="text" name="paid" value="CUSTOMER ID"</td>
            </tr>
            <tr>
            <tr>
                <td> <input type="text" name="ba" placeholder="CUSTOMER FULL NAME  "></td>
            </tr>
            <tr>
                <td> <input type="text" name="name" placeholder="PHONE NUMBER "></td>
            </tr>
            <tr>
                <td> <input type="text" name="typ" placeholder="DOB "></td>
            </tr>
            <tr>
                <td>GENDER</td><td>MALE <input type="radio" name="rad" value="MALE"></td>
           
                               <td>FEMALE <input type="radio" name="rad" value="MALE"></td>
                
            </tr>
            <tr>
                <td> <input type="password" name="pass" placeholder="SAVE "></td>
                <tr>
            </table>
           
                <td> <input type="submit" name="submit" value="PAY "></td>
        </form>
    </body>

