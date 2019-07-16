<%-- 
    Document   : customerdetails.jsp
    Created on : 15 Apr, 2019, 6:38:22 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            }
            .backimg{
                background-image: url(pic/plane3.png);
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
            h3{color: blue;}
            td{color: black;}
            
            input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:#20c198;
  color:white;
  transition:all .3s ease-in-out;
}
h2{color: red;}
            
        </style>
    </head>
    
        <body style="padding:0; margin: 0">
 
    <div class="backimg">
        <div class="hero_text"></div>
    
   
     

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
     <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
  <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:80%" >
        <li><a href="adminflight.jsp" style="color: red">Schedule Flight</a></li>
        <li><a href="ticketclass.jsp" style="color: red">SET FARES</a></li>
        <li><a href="adminupdate.jsp" style="color: red">UPDATE FARE</a></li>
        <li><a href="flight.jsp" style="color: red"> VIEW AVAILABLE FLIGHT</a></li>
        <li><a href="admindelete.jsp" style="color: red"> DELETE</a></li>
        <li><a href="admincustomerinfo.jsp" style="color: red"> CUSTOMER DETAILS</a></li>
        <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>
   <h2 align="left" style="color: red;"><a href="admincust.jsp">BACK</a></h2>     
        <%!
            ResultSet rs1,rs2,rs3;
            Statement stmt;
            String cusid,cname;
            int f=0;
            %>
        <%
                 String cumtomerno =request.getParameter("digit");  
           
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
  f=1;
}
else
{
    out.print("<h2>NO CUSTOMER WITH SUCH ID</h2>");
    
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
                        <h3 align="center" style="color: red;">BOOKING DETAILS</h3>
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
                <td>SOURCE</td><td><input type="text" name="ad"  value=<%=rs3.getString("source")%>></td>
            </tr>
            <tr>
                <td>DESTINATION</td><td><input type="text" name="oc"   value=<%=rs3.getString("destination")%>></td>
            </tr>
            <tr>
                <td>FLIGHT NAME</td><td><input type="text" name="em"  value=<%=rs3.getString("flightname")%>></td>
            </tr>
            <tr>
                <td>FLIGHT ID</td><td><input type="text" name="em"  value=<%=rs3.getString("flightid")%>></td>
            </tr>
            <tr>
                <td>TICKET CLASS</td><td><input type="text" name="em"  value=<%=rs3.getString("ticketclass")%>></td>
            </tr>
            <tr>
                <td>TICKET TYPE</td><td><input type="text" name="em" value=<%=rs3.getString("ticketype")%>></td>
            </tr>
            <tr>
                <td>DATE</td><td><input type="text" name="em"  value=<%=rs3.getString("date")%>></td>
            </tr>
            <tr>
                <td>BOARDING TIME</td><td><input type="text" name="em" value=<%=rs3.getString("boarding")%>></td>
            </tr>
            <tr>
                <td>TAKE OFF</td><td><input type="text" name="em"  value=<%=rs3.getString("takeoff")%>></td>
            </tr>
            <tr>
                <td>ARRIVAL TIME</td><td><input type="text" name="em"  value=<%=rs3.getString("arrival")%>></td>
            </tr>
            <tr>
                <td>NUMBER OF PASSENGERS</td><td><input type="text" name="em" value=<%=rs3.getString("number")%>></td>
            </tr>
            <tr>
                <td>SEAT NUMBER</td><td><input type="text" name="em" value=<%=rs3.getString("seatnumber")%>></td>
            </tr>
            <tr>
                <td>TOTAL FARE</td><td><input type="text" name="em" value=<%=rs3.getString("totalfare")%>></td>
            </tr>
                    </table>
                    
                    
                       

           </form>  
           <%
               }
%>
    </body>
</html>
