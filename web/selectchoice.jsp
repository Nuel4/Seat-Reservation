<%-- 
    Document   : selectcheckbox.jsp
    Created on : 8 Apr, 2019, 8:28:05 AM
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
                <%-- background-image: url(pic/air.jpg);--%>
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
              <div class="backimg">
        <div class="hero_text">
           
        </div>
        <div>

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
        <%
            String id = request.getParameter("id");
           // String flnme = session.getAttribute("name").toString();
             //out.print("name:"+flnme);
              //out.print("name:"+id);
            %>
            <a href="flightsearch.jsp" align="left">BACK</a>
              <form action="selectchoice2.jsp" method="post">
                  <div align="center">
            <br><br> <td>FLIGHT ID<input type="text" name="fly" readonly value="<%=id%>"></td><br><br>
            <h4>TICKET CLASS </h4>
            <td>FIRST CLASS</td>
            <td><input type="radio" name="ticketclass" value="firstclass"></td>
            <td>STANDARD CLASS</td>
            <td><input type="radio" name="ticketclass" value="standard"></td>
            <td>ECONOMY CLASS</td>
            <td><input type="radio" name="ticketclass" value="economy"></td>
                       </div>
            <div align="center">
    <tr>
        <h4>TICKET TYPE </h4>
            <td>ONE WAY TICKET</td>
            <td><input type="radio" name="ticketype" value="oneway"></td>
            <td>RETURN TICKET</td>
            <td><input type="radio" name="ticketype" value="returnticket"></td>
            
    </tr>
            </div> 
            <div align="center">
    <br><br> <td>HOW MANY SEAT?<input type="number" name="num"></td>
            </div> 
            
           
            </tr>
              <h4 align="center"> SELECT YOUR DESTINATION</h4>
          <tr>
              <%-- <select name="company">
           
                <option value="AirIndia">Air India</option>
                <option value="Air Canada"> Air Canada</option>
                <option value="Aeromexico"> Aeromexico</option>
                <option value="MumbaiAir">  Mumbai Air</option>
                <option value="Jato">  JATO</option>
                <option value="KenyanAirways"> Kenyan Airways </option>
                <option value="AirASIA" >  Air Asia</option>
            <option value="AirEthopia" >  Air Ethopia</option>
                <option value="NathanAirways">Nathan Airways</option>
                <option value="DeltaLine">Delta Line </option>
               
            </select>--%>
              </center>
</tr>
 
     <div align="center"> <br><br>
         <tr>
                <td> <input type="submit" name="submit" value="SUBMIT"></td>
     </div>
            

</form>
    </body>
</html>
