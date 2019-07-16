<%-- 
    Document   : column2.jsp
    Created on : 16 Apr, 2019, 12:33:32 PM
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
    </head>
    <body>
        <%!
            ResultSet rs1,rs2,rs3,rs4;
            Statement stmt;
            String cusid,cname,flname,flid,sos,dest,tclass,type,amt,num,tamount,fdate,btime,toff,arrive,seat="";
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
    
             for(int num =0;num<selected.length;num++)
                 {
                    
                  if(selected[num]==null)
                  {
                      continue;
                  }
                  else
                  {
                     seat =seat +selected[num]+","; 
                     
                  }
                
             }
       
stmt.execute("insert into seat values ('"+cusid+"','"+cname+"','"+flname+"','"+flid+"','"+sos+"','"+dest+"','"+seat+"','"+fdate+"','"+btime+"','"+toff+"','"+arrive+"','"+tclass+"','"+type+"','"+amt+"','"+num+"','"+tamount+"')");

stmt.execute("update  customerinfo set seatnumber='"+seat+"' where id='"+cumtomerno+"'");

rs1=stmt.executeQuery("select  * from seat where cusid ='"+cumtomerno+"'");

if(rs1.next())
{   
 out.print("<br> Please Pay to complete your booking !!!<a href='booking1.jsp'>BOOKING</a>");
 
 
     
 }
 else
 {
     out.print(" Seat Selection is not successful.");
     
 }
            
            }
            }
             catch(Exception e)
                     {
                       e.printStackTrace();
                     }
            %>
    </body>
</html>
