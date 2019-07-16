<%-- 
    Document   : admindelecust.jsp
    Created on : 15 Apr, 2019, 2:43:54 PM
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
    </head>
    <body>
        <body style="padding:0; margin: 0">

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
             <h3 align="left" style="color: red;"><a href="admincust.jsp">BACK</a></h3>
        
        <%!
            ResultSet rs,rs1,rs2,rs3;
            Connection con,kon,kom,mok;
            %>
        <%
            String fly = request.getParameter("digit");
            //String comp = request.getParameter("na");
           %>
            
           <%
              try
                  {
                   Class.forName("com.mysql.jdbc.Driver");
                con =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement stmt =con.createStatement();
                 
                 boolean f=stmt.execute("delete  from customerinfo where id='"+fly+"'");
                 
                 // stmt.execute("delete  from ticket where companyid='"+fly+"'");
                  
                 if(!f)
                {
               out.print(" BOOKING SUCCESSFULLY CANCELLED");
                
                }
                 else
                     
                {
                   out.print("NOT CANCELLED");
                   
                }
                 stmt.execute("delete  from seat where cusid='"+fly+"'");
                con.close();
                
                }
               
                catch(Exception e)
                 {
                    out.print(e);       
                }
                %> 
    </body>
</html>
