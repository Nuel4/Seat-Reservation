<%-- 
    Document   : adminduties
    Created on : 8 Apr, 2019, 12:42:09 PM
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
                background-image: url(pic/plane3.png);
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
            h3{color: yellow;}
            
            li a{
                text-decoration: none;
            }
            
            li a:hover{
                text-decoration: underline;
            }
            
        </style>
    </head>
    
        <body style="padding:0; margin: 0">
    <div class="backimg">
        <div class="hero_text"></div>
<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
    <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:80%" >
        <li><a href="adminflight.jsp" style="color: red">Schedule Flight</a></li>
        <li><a href="ticketclass.jsp" style="color: red">SET FARES</a></li>
        <li><a href="adminupdate.jsp" style="color: red">UPDATE FARE</a></li>
        <li><a href="flight.jsp" style="color: red"> VIEW AVAILABLE FLIGHT</a></li>
        <li><a href="admindelete.jsp" style="color: red"> DELETE</a></li>
        <li><a href="admincust.jsp" style="color: red"> CUSTOMER DETAILS</a></li>
         <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>
        <form>
            <h1 align="center">ADMIN DAILY DUTIES</h1>
            <center><tr> <td> <a href="adminflight.jsp"><h3>SCHEDULE FLIGHT TIME </h3> </a> </td> </tr><br>
                <br> <tr> <td> <a href="ticketclass.jsp"><h3>SET FARES </h3></a> </td> </tr><br>
                <br><tr> <td> <a href="adminupdate.jsp"><h3>UPDATE FARE</h3> </a> </td></tr><br>
                <br><tr><td> <a href="flight.jsp"><h3>VIEW</h3></a> </td></tr><br>
                <br>  <tr> <td> <a href="admindelete.jsp"><h3>DELETE</h3> </a> </td></tr><br>
                <br>  <tr> <td> <a href="admincust.jsp"><h3>CUSTOMER SERVICE</h3> </a> </td></tr><br>
                
               

            </center> 
          
        </form>
    </body>
</html>
