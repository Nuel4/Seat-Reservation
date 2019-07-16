<%-- 
    Document   : custdetail.jsp
    Created on : 15 Apr, 2019, 9:23:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
        <form method="post" action="login.jsp" style="width:50%; margin: 0 auto;">
            <table>
              
                <tr>
                 <td></td><br><br>
                </tr>
                <tr>
                    
                    <td> USER ID<input type="text" name="reg" placeholder="passport Id"></td></tr>
                <tr>
                <td>PASSWORD  <input type="text" name="pas" placeholder="name"></td>
                </tr>
                
                 <tr>
            <td></td>
            </tr>
            </table>
            
            <tr>
                <input type="submit" name="submit" value="LOGIN"> <tr>
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<td> <a href="register.jsp" target="right">SING UP</a></td><br><br>
                </tr>
           
        </form>
    </body>
</html>
