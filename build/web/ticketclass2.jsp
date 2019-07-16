<%-- 
    Document   : ticketclass2.jsp
    Created on : 8 Apr, 2019, 12:59:02 PM
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
        <a href="ticketclass.jsp" align="left" style="color: red;">BACK</a>
       
         <%!
            String keep;
            int rgn;
            ResultSet rs,rs1,rs2;
            Statement stmt;
        int f=0;
            %>
        <%
            
            String icad = request.getParameter("comid"); 
               String nam = request.getParameter("com");
                String add = request.getParameter("first");
               String ph = request.getParameter("stand");
               String eml = request.getParameter("eco");
              // String rel = request.getParameter("child");
              
           /* String tak = request.getParameter("take"); 
               String arr = request.getParameter("arrival");
                String hour = request.getParameter("hr");*/
              
            
               try
            {
              
               
               
               
               
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement();
rs2=stmt.executeQuery("select * from ticket where companyid ='"+icad+"'");
    if(rs2.next())
    {
        out.print("<h3>Flight fare already set</h3>");
    }
else
    {
 
stmt.execute("insert into ticket values ('"+icad+"','"+nam+"','"+add+"','"+ph+"','"+eml+"')");
//stmt.execute(q);
rs=stmt.executeQuery("select * from ticket where companyid ='"+icad+"'");
if(rs.next())
{
 out.print("<br><b> flight registration is successful !!!<br>");
     
 }
 else
 {
     out.print(" <br>registration is not successful.");
     
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
