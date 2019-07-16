<%-- 
    Document   : checkbox2.jsp
    Created on : 12 Apr, 2019, 1:52:30 PM
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
                height: 500px;
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
            .st{margin-top: 25px;margin-right: 40px;font-family: fantasy;font-size: 20px;color: red; margin-left: 25px;}
            
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
            String cusid,cname,flname,flid,sos,dest,tclass,type,amt,num,tamount,fdate,btime,toff,arrive,seat="";
            String item;
            %>
        <%
              String cumtomerno =session.getAttribute("regno").toString();  
             String[] selected = request.getParameterValues("seat");
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
    cusid=rs3.getString(1);
     cname=rs3.getString(2);
     flname=rs3.getString(12);
      flid=rs3.getString(13);
       sos=rs3.getString(8);
        dest=rs3.getString(9);
         tclass=rs3.getString(10);
          type=rs3.getString(11);
           fdate=rs3.getString(14);
           btime=rs3.getString(15);
            toff=rs3.getString(16);
             arrive=rs3.getString(17);
             amt=rs3.getString(18);
            num=rs3.getString(19);
             tamount=rs3.getString(20);
    
             /*for(int num =0;num<selected.length;num++)
                 {
                    
                  if(selected[num]==null)
                  {
                      continue;
                  }
                  else
                  {
                     seat =seat +selected[num]+","; 
                    
                     
                  }
                
             }*/
             for(String item:selected)
             {
                 if(item.equals(""))
                 {
                 out.print("<h2>please select seat number</h2>");
                 }
             else
             {
                  rs2=stmt.executeQuery("select  * from seat where booked ='"+item+"'");
  rs2=stmt.executeQuery("select  * from customerinfo where seatnumber ='"+item+"'");
  if(rs2.next())
  {
      out.print("<h3 class='st'>Seat Number already booked.kindly choose another seat number</h3>");
  }   
  else
  {
   stmt.execute("insert into seat values ('"+cusid+"','"+cname+"','"+flname+"','"+flid+"','"+sos+"','"+dest+"','"+item+"','"+fdate+"','"+btime+"','"+toff+"','"+arrive+"','"+tclass+"','"+type+"','"+amt+"','"+num+"','"+tamount+"')");
  session.setAttribute("itm", item);

  }
                     }
                 
             
            // out.print("outside:"+item);
 //out.print("seat value:"+seat);
          }
rs1=stmt.executeQuery("select  * from seat where cusid ='"+cumtomerno+"'");

if(rs1.next())
{   
 out.print("<br> <h3 style='background-color: green'> Please Pay to complete your booking </h3>!!!<h1><a href='booking1.jsp'>BOOKING</a></h1>");
 
 
     
 }
 else
 {
     out.print(" Seat Selection is not successful.");
     
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
