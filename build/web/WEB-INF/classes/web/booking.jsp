<%-- 
    Document   : booking.jsp
    Created on : 14 Apr, 2019, 1:07:26 AM
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
                height: 500px;
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
            body{
                background-image: url(pic/plane3.png);
                background-color: gray;
                height: 500px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }
            
        </style>
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
        
        <br><br><br><br>
        <a href="booking1.jsp" align="right" style="color: red;">BACK</a> 
       <%!
            ResultSet rs1,rs2,rs3;
            Statement stmt;
            String cusid,cname;
            int f=0;
            %>
        <% 
              String cumtomerno =session.getAttribute("regno").toString();  
            
           //  String card = request.getParameter("pa");
             
              String cname  = request.getParameter("na");
               String ctype = request.getParameter("ty");
                String cdate = request.getParameter("ad");
                 String cno = request.getParameter("ph");
                  String vv = request.getParameter("em");
                  String amt = request.getParameter("rel");
                  
                  
                  
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 

if(cname.equals("") || ctype.equals("") || cdate.equals("") || cno.equals("") || vv.equals("") || amt.equals("") )
{
    out.print("<h1 style='color:red;'>No field should be empty</h1>");
    
}
    else
    {
stmt.execute("insert  into bills values ('"+cumtomerno+"','"+cname+"','"+ctype+"','"+cdate+"','"+cno+"','"+vv+"','"+amt+"')");

rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
  String em = rs3.getString("email");
  out.print("<h3 style='color:red'> Your flight reservation is complete and your confirmation paper is sent the emial u provided.</h3><br>");
  out.print("<a href='recipt.jsp'>"+"<h1 style='color:white'>"+ em);
}
            }
            }
            
               catch(Exception e)
               {
                 e.printStackTrace();
               }
               %>
    </body>
</html>
