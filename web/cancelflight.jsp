<%-- 
    Document   : cancelflight.jsp
    Created on : 15 Apr, 2019, 10:04:14 AM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            }
            .backimg{
                <%--background-image: url(pic/air.jpg);--%>
                 background-color: grey;
                position: relative;
            }
            
               
           
          

h3{color: blue;
}
td{color:blue;}
 h2{margin-top:40px;}          
        </style>
         
    </head>
   
<div class="backimg">
        <div class="hero_text">
    </head>
    <body style="padding:0; margin: 0">

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
        
        <%!
            ResultSet rs,rs1,rs2,rs3;
            Connection con,kon,kom,mok;
            %>
        <%
            String cumtomerno =session.getAttribute("regno").toString();  
           %>
         <%
              try
                  {
                   Class.forName("com.mysql.jdbc.Driver");
                 kom =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement st =kom.createStatement();
              
              rs3=st.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
    String py =rs3.getString("totalfare");
    int refnd =Integer.parseInt(py);
   int pay =refnd -(refnd *15/100);
   
    String canc =rs3.getString("seatnumber");
    if(canc.equals("CANCELLED"))
    {
         st.execute("update seat set flightid='CANCELLED',flightname='CANCELLED',source='CANCELLED',ticketype='CANCELLED',totalamount="+pay+",tickclass='CANCELLED',destination='CANCELLED',persons='CANCELLED',totalamount='CANCELLED', booked='CANCELLED' where cusid = '"+cumtomerno+"'");
               st.execute("update customerinfo set seatnumber='CANCELLED',destination='CANCELLED',source='CANCELLED',totalfare="+pay+" where id = '"+cumtomerno+"'");
             
                out.print("<h4>YOUR SEAT BOOKING IS CANCELLED, 7% CANCELLATION CHARGES DEDUCTED. YOUR FUND WILL BE REFUNED  IN 3 WORKING DAYS </4> ");
               
                }
                 else
              {
                   out.print("<h3> seat reservation is not cancelled</h3>");
                   
              } 
                kom.close();
                  }
else
{
    out.print("<h3> Customer does not exist</h3>");
    
}
                  }
              
                catch(Exception e)
                 {
                    out.print(e);       
                }
                %>
                
    </body>
</html>
