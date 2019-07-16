<%-- 
    Document   : booking1.jsp
    Created on : 14 Apr, 2019, 8:11:42 PM
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
        <style>
            input{
                color: green;
              
            }
        </style>
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
    <%!
            ResultSet rs1,rs2,rs3,rs4;
            Statement stmt;
           int money;
            %>
        <%
              String cumtomerno =session.getAttribute("regno").toString();  
             
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
    money=rs3.getInt("totalfare");
}
            }
catch(Exception e)
{
        
        }
               %>
               
    <body>
        <a href="booking1.jsp" align="right" style="color: red;">BACK</a> 
       <h1 align="center">CARD BILLING INFORMATION</h1> 
       
        <br>
        <br>
        <form method="post" action="booking.jsp">
           
        <table align="center">
           
            <div align="center">CUSTOMERS DETAILS</div>
            
             <div>
                <td> <image src="pic/pay1.png">
                 <input type="radio" name="pa" value="pt"></td>
                   
                </div>
                <div>
                    <td><image src="pic/master.png">
                    <input type="radio" name="pa" value="ma"></td>
                </div>
                <div>
                    <td><image src="pic/visa.jpg">
                     <input type="radio" name="pa" value="vs"></td>
                </div>
        </table>   
            <center> <table>
            <div>
                <tr>
                <td><input type="text" name="na" size="25" placeholder="CARD NAME" >
          
          
               </td><td><input type="text" name="ty" size="25" placeholder="CARD TYPE">
                </tr>
            </div>
                <div>
                    <tr>
                   <td><input type="date" name="ad" size="25" placeholder="EXPERING DATE"></td>
            
      
                   <td><input type="text" name="ph" size="25" placeholder="CARD NUMBER"></td></tr>
                </div>
            <div>
               <tr>
                   <td><input type="text" name="em" size="25" placeholder="CVV">
               
                <td><input type="text" name="rel" size="25"  placeholder="<%=money%>"></td>
               </tr></div>
               
            </table>
            </center>
                
         
            
               <div align="center">
                   <br><br>
                &nbsp;&nbsp;<td> <input type="SUBMIT" name="SUBMIT" value="SUBMIT">
                <input type="reset" name="reset" value="RESET"></td>
                
            </div>
               <div></div>
               <div></div>
               
        </form>
    </body>
</html>
