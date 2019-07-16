<%-- 
    Document   : admindeltecust.jsp
    Created on : 15 Apr, 2019, 2:41:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body style="padding:0; margin: 0">

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
    <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:80%" >
        <li><a href="adminflight.jsp" style="color: red">Schedule Flight</a></li>
        <li><a href="ticketclass.jsp" style="color: red">SET FARES</a></li>
        <li><a href="adminupdate.jsp" style="color: red">UPDATE FARE</a></li>
        <li><a href="flight.jsp" style="color: red"> VIEW AVAILABLE FLIGHT</a></li>
        <li><a href="admindelete.jsp" style="color: red"> DELETE</a></li>
        <li><a href="admincustomerinfo.jsp" style="color: red"> CUSTOMER DETAILS</a></li>
         <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>
        <h1 align="center"> CANCELLATION PAGE</h1>
        <h2 align="left" style="color: red;"><a href="admincust.jsp">BACK</a></h2>
        
         <form method="post" action="admindelecust.jsp">
             <table align="center">
                 <h3 align="center">ENTER THE PASSENGER'S ID TO  DELETED / CANCELED </h3>
                 <tr>
                     <td> <label> PASSENGER ID</label></td>
                     <td> <input type="text" name="digit"></td>
                 </tr>
                  
            <br>
            <tr>
                <td> <input type="submit" name="submit" value="DELETE"></td>
            </tr>
            <br>
             </table>
    </body>
</html>
