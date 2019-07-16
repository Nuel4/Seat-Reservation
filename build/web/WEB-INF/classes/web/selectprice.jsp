<%-- 
    Document   : selectprice.jsp
    Created on : 8 Apr, 2019, 9:07:24 AM
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
            String keep;
            int rgn;
            ResultSet rs,rs1;
            Statement stmt;
        int f=0;
            %>
        <%
           // String cusid=session.getAttribute("regno").toString();
            String fr = request.getParameter("place"); 
               String des = request.getParameter("destination");
                String dd = request.getParameter("dat");
               
           
               try
            {
      String cumtomerno =session.getAttribute("regno").toString();
      
            out.print(" customer id"+cumtomerno);
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement();
 
rs=stmt.executeQuery("select * from  where  desty='"+des+"'");
if(rs.next())
{
    
}
    }
               catch(Exception e)
       {
         e.printStackTrace();
     }
%>
    </body>
</html>
