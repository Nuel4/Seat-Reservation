<%-- 
    Document   : flightsearch.jsp
    Created on : 5 Apr, 2019, 8:40:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body{
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            .backimg{
                background-image: url(pic/globe.jpg);
                background-color: gray;
                height: 900px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                
                position: relative;
            }
            .hero_text{
                text-align: center;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                color: white;
               
            }
            p{
    padding: 12px 12px 12px 0;
    color: red;
}
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}
            
        </style>
    </head>
    <body style="padding:0; margin: 0">

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
    <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="home.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</li>
        <li><a href="contact.jsp">Contact Us</li>
        <li><a href="address.jsp"> Address</li>
        <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>
     
        <br><br>
    <div class="backimg">
        <div class="hero_text">
           
        </div>
        <div>
             <%
            
            String cusname = session.getAttribute("name").toString();
            out.print("<br><p>Hello "+cusname+", Your registration is successful.Please select your source and destination. !!!<br><br>");
            %>
            <h1  align="center" style="background-color:DodgerBlue; width: 30%; margin: 0 auto;"> SEARCH FOR FLIGHT</h1>
       <p font color ="00ff00"></p>
        <form method="post" action="flightcheck.jsp">
            
       
                
            <center> <table>
            <tr>
              
            <td style="color:red;">From</td>
            <select name="place" style="background-color:">
                
                <option value="Bangalore"> BANGALORE</option>
                <option value="Dehli"> DEHLI</option>
                <option value="Mysore"> MYSORE</option>
                <option value="Goa">  GOA</option>
                <option value="Mumbai">  MUMBAI</option>
                <option value="Pune">  PUNE </option>
                <option value="Kolkata" >  KOLKATA</option>
                     
            </select>
             <td></td><td></td>&nbsp;&nbsp;&nbsp;&nbsp;
             <td style="color:red;"> TO</td>
              <select name="destination">
                
                <option value="Bangalore"> BANGALORE</option>
                <option value="Dehli"> DEHLI</option>
                <option value="Mysore"> MYSORE</option>
                <option value="Goa">  GOA</option>
                <option value="Mumbai">  MUMBAI</option>
                <option value="Pune">  PUNE </option>
                <option value="Kolkata" >  KOLKATA</option>
                     
            </select>

             <%-- <td>CALENDER
             <div class="calender">
                 <div class="date">
                     <div class="day">S</div>
                     <div class="day">M</div>
                     <div class="day">T</div>
                     <div class="day">W</div>
                     <div class="day">T</div>
                     <div class="day">F</div>
                     <div class="day">S</div>
                    
                         <div class="number">
                             
</div>--%>
             <td></td>
                
    <tr></tr><tr></tr><td></td>&nbsp;&nbsp;&nbsp;&nbsp;
            
            
             <%--  &nbsp;&nbsp;&nbsp;&nbsp;
                NUMBER OF SEAT:</td>
                <input type="text" name="plan" placeholder="Number Of Seat"> --%>
            </tr>
            <tr>
             <td style="color:red;">DATE</td></center>
            <td> <input type="date" name="dat"></td></center>
            </tr>
</table>
            
            <tr>
            <br>
            
            <center> <td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="submit" name="submit" value="SEARCH "></td></center></tr>
       
 <br><br>
 <h2 align="left" style="color: white"><b> HOW DOES IT WORK?</b></h2>
        <center> &nbsp;&nbsp;&nbsp;<h3 style="color:yellow">SEARCH.SELECT.BOOK</h3></center>
        <h2 style="border:px solid Tomato; color: white">
            Check ok other few steps to complete your dream journey anywhere within India.
            Either you take a flight or book a hotel room. Just follow three simple steps.
        </h2>

</form>
         </div></div></div>
    
        
        
    
    </body>
</html>
