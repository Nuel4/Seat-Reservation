<%-- 
    Document   : passwd2
    Created on : 18 Apr, 2019, 10:18:19 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<a href="customersdetail.jsp"></a>
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
                <%-- background-image: url(pic/plane3.png);--%>
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
            td{color: white;}
            input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:#20c198;
  color:white;
  transition:all .3s ease-in-out;
            
        </style>
    </head>
      <body style="padding:0; margin: 0">
          
          <div class="backimg">
              <div class="hero_text"></div>

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
   <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="home.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        <li><a href="address.jsp"> Address</a></li>
          <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
   
</div>
    <a href="passwd.jsp" align="left"  style="color: red;">BACK</a> 
   
        <%!
            ResultSet rs1,rs2,rs3,rs4;
            Statement stmt;
           String idd;
            %>
        <%
             String pho =request.getParameter("digit");
             String emai =request.getParameter("emm");
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
rs3=stmt.executeQuery("select  * from customerinfo where phone ='"+pho+"' and email ='"+emai+"'");
if(rs3.next())
{
    idd=rs3.getString("id");
    out.print("<h1 style='color:red'>Your password is : </h1>"+idd);
    
}
else
{
    out.print("Data not found");
    
}
            }
catch(Exception e)
{
    e.printStackTrace();
        
        }
               %>
    </body>
</html>
