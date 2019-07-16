<%-- 
    Document   : passwd.jsp
    Created on : 18 Apr, 2019, 9:50:26 AM
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
            td{color: white;}
            input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:#20c198;
  color:white;
  transition:all .3s ease-in-out;
            
        </style>
    </head>
      <body style="padding:0; margin: 0">
          
          <div class="backimg">
              <div class="hero_text"></div>

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
              <a href="login1.jsp" align="left" style="color: red;">BACK</a>
        <form method="post" action="passwd2.jsp">
             <table align="center">
                 <h3 align="center">PASSWORD RECOVERY </h3>
                 <div>
                     <td> <label> PHONE NUMBER</label></td>
                     <td> <input type="text" name="digit" size="30" placeholder="phone number"></td>
                 </div>
                   <div>
                     <td> <label> email</label></td>
                     <td> <input type="email" name="emm" size="30" placeholder="email"></td>
                 </div>
             </table>
            <br>
            <tr>
            <div>
            <center>  <input type="submit" name="submit" value="ENTER"></center>
            </div>
             </tr>
            <br> 
        </form>
    </body>
</html>
