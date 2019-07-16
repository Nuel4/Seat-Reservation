<%-- 
    Document   : adminflight2
    Created on : 6 Apr, 2019, 3:09:58 AM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
            h3{color: yellow;}
            td{color: black;}
            
            input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:#20c198;
  color:white;
  transition:all .3s ease-in-out;
}
            
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
          <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">logout</a></li>
      </ul>
</div>
         <li class="button" style="padding:3px 15px; border-radius:5px"><a href="adminduties.jsp"  style="color:red; text-decoration: none;">BACK</a></li>
   
        <%!
            String keep;
            int rgn;
            ResultSet rs,rs1,rs2;
            Statement stmt;
        int f=0;
            %>
        <%
            
            String icad = request.getParameter("flid"); 
               String nam = request.getParameter("flnam");
                String add = request.getParameter("flsos");
               String ph = request.getParameter("des");
                String km = request.getParameter("kilo");
               String eml = request.getParameter("dd");
               String rel = request.getParameter("tym");
              
            String tak = request.getParameter("take"); 
               String arr = request.getParameter("arrival");
                String hour = request.getParameter("hr");
              
            
               try
            {
              
               
               
               
               
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement();
rs2=stmt.executeQuery("select * from flight where flightid ='"+icad+"'");
    if(rs2.next())
    {
        out.print("<h3>Flight id already registered</h3>");
    }
else
    {
 
stmt.execute("insert into flight values ('"+icad+"','"+nam+"','"+add+"','"+ph+"','"+km+"','"+eml+"','"+rel+"','"+tak+"','"+arr+"','"+hour+"')");
//stmt.execute(q);
rs=stmt.executeQuery("select * from flight where flightid ='"+icad+"'");
if(rs.next())
{
 out.print("<br><h2 style='color:red'> flight registration is successful </h2>!!!");
     
 }
 else
 {
     out.print(" registration is not successful.");
     
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
