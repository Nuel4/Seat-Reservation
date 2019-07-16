<%-- 
    Document   : login.jsp
    Created on : 26 Mar, 2019, 8:25:58 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
         <a href="login1.jsp" align="left" style="color: red;">BACK</a>
        <%
       String tlname,tlpwd;
%>

<%
tlname=request.getParameter("reg");
tlpwd=request.getParameter("pas");
%>

<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
Statement stmt=con.createStatement();

if( tlname.equals("admin")  && tlpwd.equals("rishi"))
{
response.sendRedirect("adminduties.jsp");
}
else{
ResultSet rs=stmt.executeQuery("select  *  from customerinfo where id= '"+tlname+"' and name='"+tlpwd+"'");

if (rs.next())
{
session.setAttribute("regno",tlname);
response.sendRedirect("customersdetail.jsp");
}
else
out.println("<b><br><br>Wrong Registered number or password</b>");
}
}
catch(Exception e)
{
    e.printStackTrace();
out.println("<b>Login Failed</b>");
}

%>
    </body>
</html>
