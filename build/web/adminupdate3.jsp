<%-- 
    Document   : adminupdate3.jsp
    Created on : 12 Apr, 2019, 11:34:32 PM
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
 b{color: white;}           
        </style>
    </head>
    
        
    <div class="backimg">
        <div class="hero_text"></div>
    
   
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
        <h2 align="left" style="color: red;"><a href="adminduties.jsp"> BACK</a></h2>      
  
     <%!
             int f=0;
             ResultSet rs;
                  
                    %>
         
         <%
            String fli=request.getParameter("num1");
           
            String flname = request.getParameter("num2");
             String sos = request.getParameter("txt1");
              String des = request.getParameter("txt2");
              String klm = request.getParameter("num3");
              String dat = request.getParameter("txt3");
              String bdtime = request.getParameter("bod");
              String toff = request.getParameter("take");
              String artime = request.getParameter("arr");
              String totalhr = request.getParameter("hrs");
            //String sub6 = request.getParameter("he6");
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement stm =con.createStatement();
                stm.execute("update flight set flightid='"+fli+"', flightname='"+flname+"',source='"+sos+"',desty='"+des+"',kilom='"+klm+"',date='"+dat+"',bordingtime='"+bdtime+"', takeoff='"+toff+"', arrivaltime='"+artime+"',totalhrs='"+totalhr+"' where flightid = '"+fli+"'");
            rs=stm.executeQuery("select * from flight where flightid ='"+fli+"'" );
               if(rs.next())
               {
                   out.print("<b><br> successfully updated!!</b>");
                   
               }
               else
               {
                   out.print("<h3><b>wrong input</b></h3>");
               }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
        %>
    </body>
</html>
