<%-- 
    Document   : flighcheck.jsp
    Created on : 6 Apr, 2019, 12:12:11 AM
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
   
    <style>
        body{
             background-image: url(pic/air.jpg);
        }
        th{
          background-color: white;
         
        }
        td{
            background-color: red; 
        }
      
    </style>
     
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
        
          <table align="center" cellpadding="2" cellspacing="2" border="1">
              <th>FLIGHT ID</th>
   <th>FLIGHT NAME</th><th>SOURCE</th><th>DESTINATION</th><th>DATE</th><th>BOARDING TIME</th><th>TAKE OFF</th><th>ARRIVAL TIME</th><th>HOURS </th>
<h3 align="left"> <a href="flightsearch.jsp">Back</a></h3>    
   
        <%!
            String keep;
            int rgn;
            ResultSet rs,rs1;
            Statement stmt,stmt1;
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
      
            
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
stmt1=con.createStatement(); 
 
rs=stmt.executeQuery("select * from flight where source='"+fr+"' and desty='"+des+"' and date='"+dd+"'");

 
    // rs=stmt1.executeQuery("select * from flight where source='"+fr+"' and desty='"+des+" and date='"+dd+"'");
    
while(rs.next())
{

    %>
    <br><br>
    
    <tr>
  
        <td><a href="selectchoice.jsp?id=<%=rs.getString("flightid")%>"><%=rs.getString("flightid")%></a></td>
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
%>
 <center> <h2>AVAILABLE FLIGHT</h2></center>
  <%
 rs1=stmt1.executeQuery("select * from flight where source='"+fr+"' and desty='"+des+"' and date='"+dd+"'");
if(rs1.next())
{
    
String flid =rs1.getString("flightid");
 session.setAttribute("flight", flid);
String flname =rs1.getString("flightname");
 session.setAttribute("name", flname);
String fldate =rs1.getString("date");
String bdtime =rs1.getString("bordingtime");
String toff =rs1.getString("takeoff");
String artime =rs1.getString("arrivaltime");
String thrs =rs1.getString("totalhrs");

stmt.execute("update  customerinfo set source='"+fr+"',destination='"+des+"',date= '"+fldate+"',boarding='"+bdtime+"',takeoff='"+toff+"',arrival='"+artime+"' where id='"+ cumtomerno+"'");

}


 else
{
out.println("<center><br>No flight available</center><br><br>");
}
}
//con.close();


catch(Exception e)
        {
out.println("No Datas Found");
         e.printStackTrace();
       
        }
        %>
        
    </table> 
       
 
    </body>
</html>
