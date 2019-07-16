<%-- 
    Document   : customerupdate.jsp
    Created on : 18 Apr, 2019, 1:24:46 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <style type="text/css">
            body{
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            .backimg{
                background-image: url(pic/air.jpg);
                 background-color: 0;
                height: 900px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
               
                position: relative;
            }
            
               
           
          

h3{color: blue;
}
td{color:blue;}
           
        </style>
         
    </head>
   
            
    </head>
 
    </head>
     <body style="padding:0; margin: 0">
<div class="backimg">
        <div class="hero_text">
            
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
 <h3 align="left"> <a href="login1.jsp">Back</a></h3>          
        </div>
    <br><br><br>
      <%!
             int f=0;
             ResultSet rs;
                  
                    %>
                    <%
                         
            String idd = request.getParameter("rt");
           
            
             String nam = request.getParameter("name");
              
              String emal = request.getParameter("wo");
             
              
                        %>
         <%
           String cumtomerno =session.getAttribute("regno").toString();  
           
           
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement stm =con.createStatement();
                stm.execute("update customerinfo set id='"+idd+"', name='"+nam+"',email='"+emal+"' where id = '"+cumtomerno+"'");
           
                rs=stm.executeQuery("select * from customerinfo where id ='"+idd+"'" );
               if(rs.next())
               {
                 out.print("<center><img src='pic/okj.bmp'> Updation was successful</center><br><br>");
                 
                   
               }
               else
               {
                   out.print("<h3>Not successful</h3>");
               }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
        %>
    </body>
</html>
