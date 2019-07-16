<%-- 
    Document   : selectchoice2.jsp
    Created on : 8 Apr, 2019, 2:54:36 PM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
                 height: 40px;
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

           <div class="backimg" style="position: relative"></div>
           
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
      
        <%!
            String name;
            int klm,pr;
            int price,tfare;
            ResultSet rs,rs1,rs2;
            Statement stmt,stmt1;
        int f=0;
            %>
        <%
            
            
          // String flightnumber=session.getAttribute("flight").toString();
            String flname = session.getAttribute("regno").toString();
            
          // String fliname=session.getAttribute("flightname").toString();
          // String flightsource=session.getAttribute("source").toString();
          // String destination=session.getAttribute("desty").toString();
            String flightid = request.getParameter("fly");
            String ticket = request.getParameter("ticketclass");
               String typ = request.getParameter("ticketype");
                String numberofseat = request.getParameter("num");
               int numseat = Integer.parseInt(numberofseat );
          
               try
            {
      String cumtomerno =session.getAttribute("regno").toString();
      
      
            
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
stmt1=con.createStatement(); 
 rs=stmt.executeQuery("select * from flight where flightid='"+ flightid+"'");
//out.print("select * from flight where flightid='"+ flightid+"'");

 if(rs.next())
 {
     String name= rs.getString(2);
    
     klm=rs.getInt(5);
 
rs1=stmt.executeQuery("select "+ticket+" from ticket as tck where companyid='"+flightid+"'");
 
 if(rs1.next())
 {
  
 String ticket1 =rs1.getString(""+ticket);
  pr = Integer.parseInt(ticket1);
  
 price = klm * pr;
   
 tfare = price *numseat;
  
 if(typ.equals("returnticket"))
 {
     tfare = tfare * 2 - 500;
    out.print("<br><br><br><h2 style='color:red;'> You have been given discount of RS.500 for return ticket</h2>");
    
  
 }
 else
 {
     tfare =tfare;
    
  
 }
 
 }
stmt.execute("update  customerinfo set flightname='"+name+"',flightid='"+flightid+"',ticketclass='"+ticket+"',ticketype='"+typ+"',amt='"+price+"',number="+numseat+",totalfare="+tfare+" where id='"+cumtomerno+"'");
rs2=stmt.executeQuery("select * from customerinfo where id ='"+cumtomerno+"'" );  


if(rs2.next())
  {
      f=1;
    
      
  }
  else
  {
     out.print("not successful");  
  }
 
 }
 
            }       
        
 
                         catch(Exception e)
               {
                  e.printStackTrace();
                   
               }
               %>
               
               <%
                if(f==1)
                {
                    %>
                    
                    <tr>
                          
                    <table align="center">
            <h3 align="center"> DETAILS</h3>
            <tr>
                <td>FROM</td><td><input type="text" name="rt" value=<%=rs2.getString("source")%> ></td>
            </tr>
            
            <tr>
                <td>TO</td><td><input type="text" name="name" value=<%=rs2.getString("destination")%>></td>
            </tr>
             
            <tr>
                <td> TICKET CLASS</td><td><input type="text" name="wo" value=<%=rs2.getString("ticketclass")%>></td>
            <br>
            </tr>
           
            <tr>
                <td>TICKET TYPE</td><td><input type="text" name="ad" value=<%=rs2.getString("amt")%>></td>
            </tr>
            <tr>
                <td>NUMBER OF PASSENGERS</td><td><input type="text" name="oc" value=<%=rs2.getString("number")%>></td>
            </tr>
            <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="em" value=<%=rs2.getString("totalfare")%>></td>
            </tr>
            
            
              
                    </table>       
                    <br><br>
                    <center>  <a href="checkbox1.jsp" target="top">ACCEPT </a></h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="flightsearch.jsp" target="top">CHANGE FLIGHT </a></h2></center>
                         </table>
    </center>
           </form>  
           <%
               }
%>
    </body>
</html>
