<%-- 
    Document   : customupdate.jsp
    Created on : 15 Apr, 2019, 4:37:23 PM
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
        <%!
             int f=0;
             ResultSet rs;
                  
                    %>
         
         <%
            String fli=request.getParameter("num1");
           
            String flname = request.getParameter("num2");
             String sos = request.getParameter("txt1");
              String des = request.getParameter("txt2");
              String klm = request.getParameter("num3");
              String dat = request.getParameter("txt3");
              String bdtime = request.getParameter("bod");
              String toff = request.getParameter("take");
              String artime = request.getParameter("arr");
              String totalhr = request.getParameter("hrs");
            //String sub6 = request.getParameter("he6");
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement stm =con.createStatement();
                stm.execute("update flight set flightid='"+fli+"', flightname='"+flname+"',source='"+sos+"',desty='"+des+"',kilom='"+klm+"',date='"+dat+"',bordingtime='"+bdtime+"', takeoff='"+toff+"', arrivaltime='"+artime+"',totalhrs='"+totalhr+"' where flightid = '"+fli+"'");
            rs=stm.executeQuery("select * from flight where flightid ='"+fli+"'" );
               if(rs.next())
               {
                   out.print("<h3> successfully updated!!</3>");
                   
               }
               else
               {
                   out.print("<h3>wrong input</h3>");
               }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
        %>

               
    </body>
</html>
