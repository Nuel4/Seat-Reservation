<%-- 
    Document   : checkbox1.jsp
    Created on : 12 Apr, 2019, 1:45:07 PM
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
             background-color: white;
               
            }
            .backimg{
                background-image: url(pic/air.jpg);
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

            
        </style>
    </head>
    <body style="padding:0; margin: 0">
            <%--<div class="backimg" style="position: relative">
        <div style="position: absolute; top: 0; left: 0; width: 100%; height:100%; background: rgba(0,0,0,.5)"></div>
        <div class="hero_text"></div>--%>

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
       <form method="post" action="checkbox2.jsp">
           <div align="center">  <br><br><h2> SELECT SEAT NUMBER</h2>
        <tr>
              
              <input type="checkbox" name="seat" value="seat1">1</label>
                <input type="checkbox" name="seat" value="seat2">2</label>
                  <input type="checkbox" name="seat" value="seat3">3</label>
                    <input type="checkbox" name="seat" value="seat4">4</label>
                     <input type="checkbox" name="seat" value="seat5">5</label>
                      <input type="checkbox" name="seat" value="seat6">6</label>
                       <input type="checkbox" name="seat" value="seat7">7</label>
                        <input type="checkbox" name="seat" value="seat8">8</label>
                        <input type="checkbox" name="seat" value="seat9">9</label>
                        <input type="checkbox" name="seat" value="seat10">10</label>
           </tr>
           <br><br><label><input type="submit" name="submit" value="submit"></label></div>
    </form>
    </body>
</html>
