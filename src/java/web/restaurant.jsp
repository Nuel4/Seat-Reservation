<%-- 
    Document   : food.jsp
    Created on : 11 Apr, 2019, 5:59:45 PM
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
    <p style="width:60%"><img src="pic/airlog.jpg">Flight Reservation system</p>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href=".jsp">Home</a></li>
        <li><a href=".jsp">About Us</li>
        <li><a href=".jsp">Contact Us</li>
        <li><a href=".jsp"> Address</li>
        <li><a href="index.html">LOGOUT</a>
    </ul>
</div>
          <form method="post" action="restaurant2.jsp">
        <br><br><h2> SELECT SEAT NUMBER</h2>
        <tr>
              <input type="checkbox" name="food" value="pizza">pizza...$2
                <input type="checkbox" name="food" value="rice">rice...$1
                  <input type="checkbox" name="food" value="chicken">chicken....$3
                    <input type="checkbox" name="food" value="coke">coke....$1
                     <input type="checkbox" name="food" value="fanta">fanta....$4
                      <input type="checkbox" name="food" value="beans">.beans...$5
                       <input type="checkbox" name="food" value="yam">yam....$1.5
                        <input type="checkbox" name="food" value="eba">eba....$1.3
                        <input type="checkbox" name="food" value="burga">burga....$4
                        <input type="checkbox" name="food" value="sandwitch">sandwitch....$2
           </tr>
           <br><br><label><input type="submit" name="submit" value="submit">
    </form>
    </body>
</html>
