<%-- 
    Document   : confirmchoice.jsp
    Created on : 5 Apr, 2019, 2:43:38 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
       <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Login</a></li>
    </ul>
</div>
        <%!
            Connection con;
            Statement stmt;
            ResultSet sr;
            int price, discount, finalpay;
            int charges;
            int prg;
            int f=0,k=0;
            int pay,tax;
            %>
                <%
                    try
                        
{
     prg = Integer.parseInt(session.getAttribute("regno").toString());
     
//String p =request.getParameter("dio");
String vik = session.getAttribute("intal").toString();
Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from newcars where reg='"+vik+"'");
 String deb;
 if(sr.next())
 {
  f=1; 
  pay = sr.getInt(10);
  
  
      price = pay;
      charges = (price*10)/100;
      price =price+charges;
      tax=(price*15)/100;
       finalpay=price+tax;
       
       session.setAttribute("pr", pay);
        session.setAttribute("charg", charges);
         session.setAttribute("amount", price);
         session.setAttribute("tx", tax);
          session.setAttribute("fin", finalpay);
          
           session.setAttribute("intal", vik);
           
  }
  


 else
 {
     out.print("not found");
     
 } 
 
}
                    catch(Exception b)
                    {
                      b.printStackTrace();
                    }
                    %>
    </body>
</html>
