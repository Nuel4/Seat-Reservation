<%-- 
    Document   : register.jsp
    Created on : 26 Mar, 2019, 8:29:45 AM
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
        <%
           /* String flid =session.getAttribute("flight").toString();
            out.print(" flight id"+flid);
            String cumtomer =session.getAttribute("regno").toString();
            out.print(" customer id"+cumtomer);*/
            
            %>
        <h1 align="center">TICKETING TYPE!</h1>
        <h3> <a href="index.html" align="right">Exit</a></h3>
        <form method="post" action="choiceselect.jsp">
           <table align="center"
             <tr>
                 <td>TICKET CLASS</td><td>TICKET TYPE</td><td>AGE GRADE</td>
             <tr>  
             <tr>
                 <td> STANDARD <input type="radio" name="rad" value="stand"></td><br>
           
             <td> ECONOMY <input type="radio" name="rad" value="economy"></td><br>
             <td>FIRST CLASS <input type="radio" name="rad" value="first"></td><br>
            </tr>
                <tr>
                <td>TICKET TYPE</td><td>ONE WAY TICKET <input type="radio" name="typ" value="one"></td>
           
                               <td>RETURN TICKET<input type="radio" name="typ" value="rturn"></td>
                            
            </tr>
             <tr>
                <td>AGE GRADE</td><td>ADULT<input type="radio" name="grade" value="adult"></td>
           
                               <td>CHILD<input type="radio" name="grade" value="chld"></td>
                            
            </tr>
             <tr>
                  <td>NUMBER(A) OF SEAT<input type="text" name="adl"></td>
            </tr>
            <tr>
                  <td>NUMBER(C) OF SEAT<input type="text" name="chd"></td>
            </tr
            <tr>
            <tr>
                  <td>AGE<input type="text" name="ag"></td>
            </tr>
             <tr>
             <h4> SELECT SEAT NUMBER</h4>
           
               <label><input type="checkbox" name="seat" value="1">1</label>
                 <label><input type="checkbox" name="seat" value="2">2</label>
                   <label><input type="checkbox" name="seat" value="3">3</label>
                     <label><input type="checkbox" name="seat" value="4">4</label>
                       <label><input type="checkbox" name="seat" value="5">5</label>
                         <label><input type="checkbox" name="seat" value="6">6</label>
                           <label><input type="checkbox" name="seat" value="7">7</label>
                             <label><input type="checkbox" name="seat" value="8">8</label>
                               <label><input type="checkbox" name="seat" value="9">9</label>
                                <label><input type="checkbox" name="seat" value="10">10</label>
           </tr>
              <tr>
                  <td> SOURCE:BANGALORE</td>
                   <label><input type="checkbox" name="sta" value="bng" checked="checked">BANGALORE</label>
              </tr>
              <%-- <center> <select name="place">
                
                       <option value="Bangalore"> BANGALORE</option>
                <option value="dehli"> DELHI</option>
                <option value="Mysore"> MYSORE</option>
                <option value="Goa">  GOA</option>
                <option value="Mumbai">  MUMBAI</option>
                <option value="Pune">  PUNE </option>
                <option value="Kolkata" >  KOLKATA</option>
                          </select>

              --%>
                     
          
            <tr>
                
            </tr>
            <tr>
            <h2 align="center"> DESTINATION
             <center> <select name="destination">
                     
                <option value="Bangalore"> BANGALORE</option>
                <option value="Dehli"> DELHI</option>
                <option value="Mysore"> MYSORE</option>
                <option value="Goa">  GOA</option>
                <option value="Mumbai">  MUMBAI</option>
                <option value="Pune">  PUNE </option>
                <option value="Kolkata" >  KOLKATA</option>
                     
            </select>
             </tr>
            </center>
                <tr>
                <td> <input type="submit" name="submit" value="SUBMIT "></td>
                </tr>
                
                <td> <input type="reset" name="res" value="reset"></td>
             
            </tr>
           
            </table>
        </form>
    </body>
</html>
