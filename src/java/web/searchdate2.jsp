<%-- 
    Document   : searchdate2.jsp
    Created on : 12 Apr, 2019, 5:07:31 PM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            Statement stmt,stmt1;
        int f=0;
            %>
        <%
                  
      String cumtomerno =session.getAttribute("regno").toString();
      out.print(cumtomerno);
            String fdate = request.getParameter("dd"); 
               
           
               try
            {
      
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
stmt1=con.createStatement(); 
 
rs=stmt.executeQuery("select * from flight where date='"+fdate+"'");
while(rs.next())
{
 %>
  <td><a href="flightsearch.jsp?id=<%=rs1.getString("flightid")%>"><%=rs1.getString("flightid")%> SELECT DESTINATION </a></td>
   <%
}
    }
               catch(Exception e)
       {
            e.printStackTrace();

       
}
%>

    </body>
</html>
