<%-- 
    Document   : home.jsp
    Created on : 19 Apr, 2019, 9:09:02 PM
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
                height: 593px;
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
            
        </style>
    </head>
    <body>
               </table>-->
<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
    <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
       
        <li><a href="about.jsp">About Us</li>
        <li><a href="contact.jsp">Contact Us</li>
        <li><a href="address.jsp"> Address</li>
        <li class="button" style="background: yellow; padding:3px 15px; border-radius:5px"><a href="login1.jsp"  style="color:#000; text-decoration: none;">Login</a></li>
        <li class="button" style="background: yellow; padding:3px 15px; border-radius:5px"><a href="register.jsp" style="color:#000; text-decoration: none;">Sign up</a></li>
     <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html" style="color:red; text-decoration: none;">logout</a></li>
    
    </ul>
</div>
 
    <div class="backimg" style="position: relative">
        <div style="position: absolute; top: 0; left: 0; width: 100%; height:100%; background: wheat(0,0,0,.5)"></div>
        <div class="hero_text">
       
        <h1 style="font-size: 50px; color:white; align:left; margin: 0; line-height: 1; color: yellow;">
           
            Welcome to bookcheap flight.com
        </h1>
         <p style="font-size: 18px; color:white; align:left;">It promises to be a good experience getting your flight from us.</p>
       
         <p style="font-size: 14px; color:white; align:left;"> We use cookies so that we can offer you the best possible website experience. This includes cookies which are necessary for the operation of the website and to manage our corporate commercial objectives, as well as other cookies which are used solely for anonymous statistical purposes, for more comfortable website settings, or for the display of personalised content. You are free to decide which categories you would like to permit. Please note that depending on the settings you choose, the full functionality of the website may no longer be available. Further information can be found in our Privacy Policy.
        
        </div></div></div>
 
    
     
      
    </body>
</html>
