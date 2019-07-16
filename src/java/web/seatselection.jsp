<%-- 
    Document   : seatselection.jsp
    Created on : 8 Apr, 2019, 2:36:11 PM
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
        <form method="post" action="seatselection2.jsp">
        <br><br><h2> SELECT SEAT NUMBER</h2>
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
           <br><br><label><input type="submit" name="submit" value="submit"></label>
    </form>
    </body>
</html>
