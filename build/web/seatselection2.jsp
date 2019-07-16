<%-- 
    Document   : seatselection2.jsp
    Created on : 10 Apr, 2019, 1:35:31 PM
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
                background-image: url(pic/map2.jpg);
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
            p{
    padding: 12px 12px 12px 0;
    color: red;
}
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;

            
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
       <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Login</a></li>
    </ul>
</div>
        <%!
            String keep;
            int num;
            ResultSet rs,rs1;
            Statement stmt;
        int f=0;
        String seat, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
            %>
        <%
          String cumtomerno =session.getAttribute("regno").toString();      
        String[] seatnumber= request.getParameterValues("seat");
                
              // out.print(seatnumber);
           
               try
            {
          
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement();
rs=stmt.executeQuery("select "+seatnumber+" from seat");     
if(rs.next())
{
    out.print("seat already booked");
    
}
else
{
if(seatnumber!=null)
{
    
    for(int num=0;num < seatnumber.length;num++)
    {
        if(seatnumber[num].equals("seat1")){
          s1=seatnumber[num]; 
          seat=s1;
     
          out.print("<br>num1:"+s1);
          
        }
        if(seatnumber[num].equals("seat2")){
          s2=seatnumber[num]; 
           seat=s2;
            out.print("<br>num2:"+s2);
        }
        if(seatnumber[num].equals("seat3")){
          s3=seatnumber[num];
           seat=s3;
            out.print("<br>num3:"+s3);
        }
        if(seatnumber[num].equals("seat4")){
          s4=seatnumber[num];
           seat=s3;
            out.print("<br>num4:"+s4);
        }
        if(seatnumber[num].equals("seat5")){
 
            s5=seatnumber[num]; 
           seat=s5;
            out.print("<br>num5:"+s5);
        }
        if(seatnumber[num].equals("seat6")){
          s6=seatnumber[num];
           seat=s6;
            out.print("<br>num6:"+s6);
        }
        if(seatnumber[num].equals("seat7")){
          s7=seatnumber[num]; 
           seat=s7;
            out.print("<br>num7:"+s7);
        }
        if(seatnumber[num].equals("seat8")){
          s8=seatnumber[num];
           seat=s8;
            out.print("<br>num8:"+s8);
        }
        if(seatnumber[num].equals("seat9")){
          s9=seatnumber[num];
           seat=s9;
            out.print("<br>num9:"+s9);
        }
        if(seatnumber[num].equals("seat10")){
          s10=seatnumber[num]; 
           seat=s10;
            out.print("<br>num10:"+s10);
        }
        out.print(" hi"+seat);
}

 

/*for(int num=0;num<=seatnumber.length;num++)
{
   if(!seatnumber[num].equals(null))
   {
       out.print(" "+seatnumber[num]);
   }
   
}*/
stmt.execute("insert into seat(seat1,seat2,seat3,seat4,seat5,seat6,seat7,seat8,seat9,seat10) values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");

stmt.execute("update  customerinfo set seatnumber='"+seat+"' where id='"+cumtomerno+"'");

rs1=stmt.executeQuery("select  * from customer where seatnumber ='"+seat+"'");

if(rs1.next())
{   
 out.print("<br> flight reservation is successful !!!");
     
 }
 else
 {
     out.print(" reservation is not successful.");
     
 }
}
}          }
catch(Exception e)
        {
         e.printStackTrace();
        }
            %>
    </body>
</html>
