<%-- 
    Document   : flight.jsp
    Created on : 13 Apr, 2019, 12:35:08 AM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
        body{
             background-image: url(pic/plane3.png);
                background-color: gray;
                height: 900px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
        }
        th{
          background-color: white;
         
        }
        td{
            background-color: red; 
        }
      th{margin-top: 20px;}
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
        <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
   
    </ul>
</div>
     <h2 align="left" style="color: red;"><a href="adminduties.jsp"> BACK</a></h2>      
 
    <body>
        
          <table align="center" cellpadding="2" cellspacing="2" border="1">
   <th>FLIGHT ID</th>
   <th>FLIGHT NAME</th><th>SOURCE</th><th>DESTINATION</th><th>DATE</th><th>BOARDING TIME</th><th>TAKE OFF</th><th>ARRIVAL TIME</th><th>HOURS </th>
    
        <%!
            String keep;
            int rgn;
            ResultSet rs,rs1;
            Statement stmt,stmt1;
        int f=0;
            %>
        <%
           /* String cusid=session.getAttribute("regno").toString();
            String fr = request.getParameter("place"); 
               String des = request.getParameter("destination");
                String dd = request.getParameter("dat");*/
               
           
               try
            {
     // String cumtomerno =session.getAttribute("regno").toString();
      
            
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
stmt1=con.createStatement(); 
 
rs=stmt.executeQuery("select * from flight ");
//out.print(rs=stmt.executeQuery("select * from flight "));

while(rs.next())
{


    %>
    <br><br>
    
    <tr>
    
    
        <td><%=rs.getString("flightid")%></a></td>
        <td> <%=rs.getString("flightname")%></td>
        
        <td>  <%=rs.getString("source")%></td>
        <td> <%=rs.getString("desty")%></td>
      <td> <%=rs.getString("date")%></td>
        <td>  <%=rs.getString("bordingtime")%></td>
        <td>  <%=rs.getString("takeoff")%></td>
         <td>  <%=rs.getString("arrivaltime")%></td>
          <td>  <%=rs.getString("totalhrs")%></td>
           </tr>
  <%
  }
 rs1=stmt1.executeQuery("select * from flight");
if(rs1.next())
{
  out.print("<center><br> THE AVAILABLE FLIGHT <br></center><br>");

}


 else
{
out.println("No data found");
}


}
catch(Exception e)
        {
out.println("No Datas Found");
         e.printStackTrace();
       
        }
        %>
            
            
    </table>         
    </body>
</html>
