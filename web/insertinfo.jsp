<%-- 
    Document   : insertinfo.jsp
    Created on : 5 Apr, 2019, 8:41:49 AM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
      <a href="register.jsp" align="left"  style="color: black;">BACK</a> 
        <%!
            String keep;
            int rgn;
            ResultSet rs,rs1;
            Statement stmt;
        int f=0;
            %>
        <%
            
            String icad = request.getParameter("card"); 
               String nam = request.getParameter("name");
                String add = request.getParameter("ad");
               String ph = request.getParameter("ph");
               String eml = request.getParameter("em");
               String rel = request.getParameter("rela");
               String relph = request.getParameter("rph");
            
            
               try
            {
              
               
               
               
               
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement();
if(icad.equals("") || nam.equals("") || add.equals("") || ph.equals("") || eml.equals("") || rel.equals("") || relph.equals(""))
{
  out.print("<center><b><h1>No space should be left empty</h1></b></center>");  
}
else
{
 
stmt.execute("insert into customerinfo(id,name,address,phone,email,next,nextphone) values ('"+icad+"','"+nam+"','"+add+"','"+ph+"','"+eml+"','"+rel+"','"+relph+"')");
//stmt.execute(q);
rs=stmt.executeQuery("select * from customerinfo where id ='"+icad+"'");
if(rs.next())
{
    session.setAttribute("regno", icad);
  
     session.setAttribute("name", nam);
 response.sendRedirect("flightsearch.jsp");
 
     
 }
 else
 {
     out.print("<b><br>Hello "+nam+", you registration is not successful.</b>");
     
 }
            }
            }
catch(Exception e)
        {
         out.print(e);
        }
            %>
            
            
            
   
    </body>
</html>
