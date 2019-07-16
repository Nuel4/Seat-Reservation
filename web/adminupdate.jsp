<%-- 
    Document   : adminupdate.jsp
    Created on : 12 Apr, 2019, 10:48:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            td{color: black;}
            
            input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:#20c198;
  color:white;
  transition:all .3s ease-in-out;
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
        <li><a href="admincustomerinfo.jsp" style="color: red"> CUSTOMER DETAILS</a></li>
         <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>
    <h2 align="left" style="color: red"><a href="adminduties.jsp"> BACK</a></h2>     
        <form method="post" action="adminupdate2.jsp">
            
            <table align="center">
                <h1 align="center">UPDATE FLIGHT DATA</h1>
            <tr>
                <%-- <td> ENTER THE FLIGHT ID </td><br><br>--%>
                <td> <input type="text" name="flid" placeholder="FLIGHT ID"></td>
            </tr>
            </table>
            <tr>
            <br>
            <center> <td> <input type="submit" name="submit" value="ENTER "></td></center>
            <tr>
        </form>
    </body>
</html>
