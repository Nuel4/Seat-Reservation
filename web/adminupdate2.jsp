<%-- 
    Document   : adminupdate2.jsp
    Created on : 12 Apr, 2019, 10:48:36 PM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            h3{color: blue;}
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
         <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>
  <h2 align="left" style="color: red;"><a href="adminduties.jsp"> BACK</a></h2>      
  <h3 align="center" style=" color: white;padding:3px 15px; border-radius:5px;text-decoration: none;">UPDATED REGISTRATION FORM</h3>
         <%!
             int f=0;
             ResultSet rs;
                  
                    %>
         <%
            String flight=request.getParameter("flid");
           
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement stm =con.createStatement();
               // stm.execute("update examreg set studentid="+prg+", studname='"+nam+"',college='"+col+"',course='"+cos+"',semester='"+sem+"',sub1='"+sub+"',sub2='"+sub2+"',sub3='"+sub3+"',sub4='"+sub4+"',sub5='"+sub5+"',sub6='"+sub6+"' where Studentid = "+prg+"");
            rs=stm.executeQuery("select * from flight where flightid ='"+flight+"'" );
               if(rs.next())
               {
                  f=1;
                   
               }
               else
               {
                   out.print("<h3><br>wrong input</h3>");
               }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
        %>
        <%
            if(f==1)
            {
                %>
                <form method="post" action="adminupdate3.jsp">
        <table align="center" boarder="1" col="1">
            <br>
            <tr>
                <td>FLIGHT ID</td>
                <td> <input type="text" name="num1" readonly value="<%=rs.getString("flightid")%>"></td>
            </tr>
            
             <tr>
                  <td>FLIGHT NAME</td>
                  <td> <input type="text" name="num2" readonly value="<%=rs.getString("flightname")%>"></td>
             </tr>
            
             <tr>
                  <td>FROM</td>
            <td> <input type="text" name="txt1" value="<%=rs.getString("source")%>"></td>
                 </tr>
           
             <tr>
                  <td>TO</td>
            <td> <input type="text" name="txt2" value="<%=rs.getString("desty")%>"></td>
             </tr>
            
             <tr>
                  <td>KILOMETERS</td>
             <td><input type="text" name="num3" value="<%=rs.getString("kilom")%>"></td>
                  </tr>
            
             <tr>
                  <tr>
                  <td>DATE </td>
            <td> <input type="text" name="txt3" value="<%=rs.getString("date")%>"></td>
                      </tr>
            
             <tr>
                  <td>BOARDING TIME </td>
            <td> <input type="text" name="bod" value="<%=rs.getString("bordingtime")%>"></td>
                 </tr>
           
             <tr>
                 <td>TAKE OF</td>
                 <td><input type="text" name="take" value="<%=rs.getString("takeoff")%>"></td>
                      </tr>
           <tr>
                  <td>ARRIVAL TIME </td>
            <td> <input type="text" name="arr" value="<%=rs.getString("arrivaltime")%>"></td>
            </tr>
             <tr>
                  <td>HOURS SPENT </td>
                  <td> <input type="text" name="hrs" value="<%=rs.getString("totalhrs")%>"></td></tr>
        </table>
        <tr>
        <br>
        <center> <input type="submit" name="submit" value="UPDATE"> </center></tr>
                </form> 
                  <%
                      }
else
{
out.print("NO FLIGHT WITH SUCH  NUMBER");
}
%>
    </body>
</html>
