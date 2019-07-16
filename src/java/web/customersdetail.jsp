<%-- 
    Document   : customersdetail.jsp
    Created on : 15 Apr, 2019, 9:21:07 AM
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
        <%!
            ResultSet rs1,rs2,rs3;
            Statement stmt;
            String cusid,cname;
            int f=0;
            %>
        <%
                 String cumtomerno =session.getAttribute("regno").toString();  
           
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
  f=1;
  session.setAttribute("regno", cumtomerno);
}
else
{
    out.print("<h2 style='color:red'>NO CUSTOMER WITH ID NUMBER</h2>");
    
}
            }
               catch(Exception e)
               {
                  out.print(e);
                  
               }
               %>
               
                 <%
                if(f==1)
                {
                    %>
                    
                    <tr>
                          
                        
                    <table align="center">
            <h3 align="center">BOOKING DETAILS</h3>
            <form method="post" action="customerupdate.jsp">
            <tr>
                <td>ID </td><td><input type="text" name="rt" value=<%=rs3.getString("id")%> ></td>
            </tr>
            
            <tr>
                <td>NAME</td><td><input type="text" name="name" value=<%=rs3.getString("name")%>></td>
            </tr>
             
            <tr>
                <td>Email</td><td><input type="text" name="wo" value=<%=rs3.getString("email")%>></td>
            <br>
            </tr>
           
            <tr>
                <td>SOURCE</td><td><input type="text" name="ad" disabled value=<%=rs3.getString("source")%>></td>
            </tr>
            <tr>
                <td>DESTINATION</td><td><input type="text" name="oc"  disabled value=<%=rs3.getString("destination")%>></td>
            </tr>
            <tr>
                <td>FLIGHT NAME</td><td><input type="text" name="em" disabled value=<%=rs3.getString("flightname")%>></td>
            </tr>
            <tr>
                <td>FLIGHT ID</td><td><input type="text" name="fl" disabled value=<%=rs3.getString("flightid")%>></td>
            </tr>
            <tr>
                <td>TICKET CLASS</td><td><input type="text" name="em" disabled value=<%=rs3.getString("ticketclass")%>></td>
            </tr>
            <tr>
                <td>TICKET TYPE</td><td><input type="text" name="em"disabled value=<%=rs3.getString("ticketype")%>></td>
            </tr>
            <tr>
                <td>DATE</td><td><input type="text" name="em" disabled value=<%=rs3.getString("date")%>></td>
            </tr>
            <tr>
                <td>BOARDING TIME</td><td><input type="text" name="em" disabled value=<%=rs3.getString("boarding")%>></td>
            </tr>
            <tr>
                <td>TAKE OFF</td><td><input type="text" name="em" disabled value=<%=rs3.getString("takeoff")%>></td>
            </tr>
            <tr>
                <td>ARRIVAL TIME</td><td><input type="text" name="em" disabled value=<%=rs3.getString("arrival")%>></td>
            </tr>
            <tr>
                <td>NUMBER OF PASSENGERS</td><td><input type="text" name="em" disabled value=<%=rs3.getString("number")%>></td>
            </tr>
            <tr>
                <td>SEAT NUMBER</td><td><input type="text" name="em" disabled value=<%=rs3.getString("seatnumber")%>></td>
            </tr>
            <tr>
                <td>TOTAL FARE</td><td><input type="text" name="em" disabled value=<%=rs3.getString("totalfare")%>></td>
            </tr>
                    </table>
                    
                    <center> <input type="submit" name="submit" value="EDIT"</a></td>
                        <tr> <td> <a href="cancelflight.jsp" target="right">CANCEL YOUR BOOKING</a></td><br><br></tr></center>
                 </form>
         
           <%
               }
%>
    </body>
</html>
