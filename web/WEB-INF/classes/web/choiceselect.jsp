<%-- 
    Document   : choiceselect.jsp
    Created on : 6 Apr, 2019, 6:39:55 PM
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
    <body style="padding:0; margin: 0">

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
    <p style="width:60%"><img src="pic/airlog.jpg">Flight Reservation system</p>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href=".jsp">Home</a></li>
        <li><a href=".jsp">About Us</li>
        <li><a href=".jsp">Contact Us</li>
        <li><a href=".jsp"> Address</li>
        <li><a href="index.html">LOGOUT</a>
    </ul>
</div>
        Date:<%=new java.util.Date()%>
 <%@page import="java.util.Calendar"%>
 <%@page import="java.util.Random"%>
 <%@page import="java.text.SimpleDateFormat"%>
 <%@page import="java.awt.Color"%>
      <%!
          
            String keep;
            int rgn;
            ResultSet rs,rs1;
            Statement stmt;
            int firstkl,std,eco;
            String adult,chld,oway,rtn,km;
           int mil,price,klas,tax;
            int adtotal,chdtotal,allocated,total;
        int f=0;
            %>
            <%
              // Calender timer =Calender.getInstance();
                
                %>
        <%
            
            String tklas = request.getParameter("rad"); 
               String type = request.getParameter("typ");
                String agegrade = request.getParameter("grade");
               String age = request.getParameter("age");
               String dest = request.getParameter("destination");
               String adlseat = request.getParameter("adl");
               int nofseat =Integer.parseInt(adlseat);
               String chdseat = request.getParameter("chd");
               // int nofchseat =Integer.parseInt(chdseat);
               String sos = "BANGALORE";
               
               
            %>
            <% 
                mil =3;
                  firstkl=11;
                 
                  eco = 3;
                 
                %>
                <%
 int del=1600; 
 int may=1350; 
 int go=1100; 
 int mum=950;  
 int pun=1800; 
 int kol=1142;  
int txa =10 ; 
 int py,pric,tx,finapay,charge;
 
  
                    %>
                    <%
                        if(tklas.equals("stand") && type.equals("one") && agegrade.equals("adult") && dest.equals("dehli"))
                        {
                            
          
  
  
    
      
                             std =(6 * del);
                              tx=(std*7)/100;
                             pric =std+tax;
                               finapay=pric*nofseat;
                             out.print("amount :"+price);
                             out.print("tax :"+finapay);
                             
                             
                         
  
  
     
                             
                        }
                        
                            else
                            if(tklas.equals("stand") && type.equals("one") && agegrade.equals("adult") && dest.equals("maysore"))
                        {
                             std =(6 * may);
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                             else
                             if(tklas.equals("stand") && type.equals("one") && agegrade.equals("adult") && dest.equals("goa"))
                        {
                             std =(6 * go);
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                                  else
                                 if(tklas.equals("stand") && type.equals("one") && agegrade.equals("adult") && dest.equals("mumbai"))
                        {
                             std =(6 * mum);
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                             
   
                              else
                        
                               if(tklas.equals("stand") && type.equals("one") && agegrade.equals("adult") && dest.equals("pune"))
                              {
                                std =(6* pun);
                                  tax = (std*7)/100;
                                  price =std+tax;
                                 }
                            else
                            if(tklas.equals("stand") && type.equals("one") && agegrade.equals("adult") && dest.equals("kolkata"))
                        {
                             std =(6 * kol);
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                   
                        
                      if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("dehli"))
                        {
                             std =(6 * del)*2;
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                        
                            else
                            if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("maysore"))
                        {
                             std =(6 * may)*2;
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                             else
                             if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("goa"))
                        {
                             std =(6 * go) *2;
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                                  else
                                 if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("mumbai"))
                        {
                             std =(6 * mum)*2;
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                             
   
                              else
                        
                               if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("pune"))
                              {
                                std =(6 * pun)*2;
                                  tax = (std*7)/100;
                                  price =std+tax;
                                 }
                            else
                            if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("kolkata"))
                        {
                             std =(6 * kol)*2;
                             tax = (std*7)/100;
                             price =std+tax;
                        }
                    


 if(tklas.equals("stand") && type.equals("one") && agegrade.equals("chld") && dest.equals("dehli"))
                        {
                             price =(6 * del)/2;
                            
                             
                        }
                        
                            else
                            if(tklas.equals("stand") && type.equals("one") && agegrade.equals("chld") && dest.equals("maysore"))
                        {
                             price =(6* may)/2;
                            
                            
                        }
                             else
                             if(tklas.equals("stand") && type.equals("one") && agegrade.equals("chld") && dest.equals("goa"))
                        {
                             price =(6 * go)/2;
                             
                        }
                                  else
                                 if(tklas.equals("stand") && type.equals("one") && agegrade.equals("chld") && dest.equals("mumbai"))
                        {
                             price =(6 * mum)/2;
                             
                             
                        }
                             
   
                              else
                        
                               if(tklas.equals("stand") && type.equals("one") && agegrade.equals("chld") && dest.equals("pune"))
                              {
                               price =(6 * pun)/2;
                                  
                                  
                                 }
                            else
                            if(tklas.equals("stand") && type.equals("one") && agegrade.equals("chld") && dest.equals("kolkata"))
                        {
                             price =(6 * kol)/2;
                             
                        }
                   
                        
                      if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("dehli"))
                        {
                             
                             
                             price  =(6 * del);
                        }
                        
                            else
                            if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("maysore"))
                        {
                             
                             price =(6 * may);
                        }
                             else
                             if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("goa"))
                        {
                            
                             price =(6* go);
                        }
                                  else
                                 if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("mumbai"))
                        {
                             
                        
                             price =(6* mum);
                        }
                             
   
                              else
                        
                               if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("pune"))
                              {
                                
                                  price =(6 * pun);
                                 }
                            else
                            if(tklas.equals("stand") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("kolkata"))
                        {
                            
                             price =(6 * kol);
                        }
                            

if(tklas.equals("economy") && type.equals("one") && agegrade.equals("adult") && dest.equals("dehli"))
                        {
                             std =(eco * del);
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                        
                            else
                            if(tklas.equals("economy") && type.equals("one") && agegrade.equals("adult") && dest.equals("maysore"))
                        {
                             std =(eco * may);
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                             else
                             if(tklas.equals("eco") && type.equals("one") && agegrade.equals("adult") && dest.equals("goa"))
                        {
                             std =(eco * go);
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                                  else
                                 if(tklas.equals("economy") && type.equals("one") && agegrade.equals("adult") && dest.equals("mumbai"))
                        {
                             std =(eco * mum);
                             tax = (std*3)/100;
                             price =std+tax;
                             
                        }
                             
   
                              else
                        
                               if(tklas.equals("economy") && type.equals("one") && agegrade.equals("adult") && dest.equals("pune"))
                              {
                                std =(eco * pun);
                                  tax = (std*3)/100;
                                  price =std+tax;
                                 }
                            else
                            if(tklas.equals("economy") && type.equals("one") && agegrade.equals("adult") && dest.equals("kolkata"))
                        {
                             std =(eco * kol);
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                   
                        
                      if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("dehli"))
                        {
                             std =(eco * del)*2;
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                        
                            else
                            if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("maysore"))
                        {
                             std =(eco * may)*2;
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                             else
                             if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("goa"))
                        {
                             std =(eco * go) *2;
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                                  else
                                 if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("mumbai"))
                        {
                             std =(eco * mum)*2;
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                             
   
                              else
                        
                               if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("pune"))
                              {
                                std =(eco* pun)*2;
                                  tax = (std*3)/100;
                                  price =std+tax;
                                 }
                            else
                            if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("kolkata"))
                        {
                             std =(eco * kol)*2;
                             tax = (std*3)/100;
                             price =std+tax;
                        }
                    


 if(tklas.equals("economy") && type.equals("one") && agegrade.equals("chld") && dest.equals("dehli"))
                        {
                             price =(eco * del)/2;
                            
                             
                        }
                        
                            else
                            if(tklas.equals("economy") && type.equals("one") && agegrade.equals("chld") && dest.equals("maysore"))
                        {
                             price =(eco * may)/2;
                            
                            
                        }
                             else
                             if(tklas.equals("economy") && type.equals("one") && agegrade.equals("chld") && dest.equals("goa"))
                        {
                             price =(eco * go)/2;
                             
                        }
                                  else
                                 if(tklas.equals("economy") && type.equals("one") && agegrade.equals("chld") && dest.equals("mumbai"))
                        {
                             price =(eco * mum)/2;
                             
                             
                        }
                             
   
                              else
                        
                               if(tklas.equals("economy") && type.equals("one") && agegrade.equals("chld") && dest.equals("pune"))
                              {
                               price =(eco * pun)/2;
                                  
                                  
                                 }
                            else
                            if(tklas.equals("economy") && type.equals("one") && agegrade.equals("chld") && dest.equals("kolkata"))
                        {
                             price =(eco * kol)/2;
                             
                        }
                   
                        
                      if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("dehli"))
                        {
                             
                             
                             price  =(eco * del);
                        }
                        
                            else
                            if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("maysore"))
                        {
                             
                             price =(eco * may);
                        }
                             else
                             if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("goa"))
                        {
                            
                             price =(eco * go);
                        }
                                  else
                                 if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("mumbai"))
                        {
                             
                        
                             price =(eco * mum);
                        }
                             
   
                              else
                        
                               if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("pune"))
                              {
                                
                                  price =(eco * pun);
                                 }
                            else
                            if(tklas.equals("economy") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("kolkata"))
                        {
                            
                             price =(eco * kol);
                        }
                      

if(tklas.equals("first") && type.equals("one") && agegrade.equals("adult") && dest.equals("dehli"))
                        {
                             std =(firstkl * del);
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                        
                            else
                            if(tklas.equals("first") && type.equals("one") && agegrade.equals("adult") && dest.equals("maysore"))
                        {
                             std =(firstkl * may);
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                             else
                             if(tklas.equals("first") && type.equals("one") && agegrade.equals("adult") && dest.equals("goa"))
                        {
                             std =(firstkl * go);
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                                  else
                                 if(tklas.equals("first") && type.equals("one") && agegrade.equals("adult") && dest.equals("mumbai"))
                        {
                             std =(firstkl * mum);
                             tax = (std*12)/100;
                             price =std+tax;
                             
                        }
                             
   
                              else
                        
                               if(tklas.equals("first") && type.equals("one") && agegrade.equals("adult") && dest.equals("pune"))
                              {
                                std =(firstkl * pun);
                                  tax = (std*12)/100;
                                  price =std+tax;
                                 }
                            else
                            if(tklas.equals("first") && type.equals("one") && agegrade.equals("adult") && dest.equals("kolkata"))
                        {
                             std =(firstkl * kol);
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                   
                        
                      if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("dehli"))
                        {
                             std =(firstkl * del)*2;
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                        
                            else
                            if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("maysore"))
                        {
                             std =(firstkl * may)*2;
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                             else
                             if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("goa"))
                        {
                             std =(firstkl * go) *2;
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                                  else
                                 if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("mumbai"))
                        {
                             std =(firstkl * mum)*2;
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                             
   
                              else
                        
                               if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("pune"))
                              {
                                std =(firstkl* pun)*2;
                                  tax = (std*12)/100;
                                  price =std+tax;
                                 }
                            else
                            if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("adult") && dest.equals("kolkata"))
                        {
                             std =(firstkl * kol)*2;
                             tax = (std*12)/100;
                             price =std+tax;
                        }
                    


 if(tklas.equals("first") && type.equals("one") && agegrade.equals("chld") && dest.equals("dehli"))
                        {
                             price =(firstkl * del)/2;
                            
                             
                        }
                        
                            else
                            if(tklas.equals("first") && type.equals("one") && agegrade.equals("chld") && dest.equals("maysore"))
                        {
                             price =(firstkl * may)/2;
                            
                            
                        }
                             else
                             if(tklas.equals("first") && type.equals("one") && agegrade.equals("chld") && dest.equals("goa"))
                        {
                             price =(firstkl * go)/2;
                             
                        }
                                  else
                                 if(tklas.equals("first") && type.equals("one") && agegrade.equals("chld") && dest.equals("mumbai"))
                        {
                             price =(firstkl * mum)/2;
                             
                             
                        }
                             
   
                              else
                        
                               if(tklas.equals("first") && type.equals("one") && agegrade.equals("chld") && dest.equals("pune"))
                              {
                               price =(firstkl * pun)/2;
                                  
                                  
                                 }
                            else
                            if(tklas.equals("first") && type.equals("one") && agegrade.equals("chld") && dest.equals("kolkata"))
                        {
                             price =(firstkl * kol)/2;
                             
                        }
                   
                        
                      if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("dehli"))
                        {
                             
                             
                             price  =(firstkl * del);
                        }
                        
                            else
                            if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("maysore"))
                        {
                             
                             price =(firstkl * may);
                        }
                             else
                             if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("goa"))
                        {
                            
                             price =(firstkl * go);
                        }
                                  else
                                 if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("mumbai"))
                        {
                             
                        
                             price =(firstkl * mum);
                        }
                             
   
                              else
                        
                               if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("pune"))
                              {
                                
                                  price =(firstkl * pun);
                                 }
                            else
                            if(tklas.equals("first") && type.equals("rturn") && agegrade.equals("chld") && dest.equals("kolkata"))
                        {
                            
                             price =(firstkl * kol);
                        }
                      
                              
                        %>
                     
             
            <%
               try
            {
              String ip =session.getAttribute("regno").toString();
              String flgt =session.getAttribute("flight").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement();
 out.print(" customer id"+ip);
  out.print(" flight id"+flgt);
stmt.execute("update  customerinfo set ticketclass ='"+tklas+"',ticketype='"+type+"',agegrade='"+agegrade+"',age='"+age+"',source='"+sos+"',destination='"+dest+"',adtotal='"+adlseat+"',chtotal='"+chdseat+"',tax='"+tax+"',totalfare='"+price+"'");

rs=stmt.executeQuery("select * from customerinfo where id ='"+ip+"'");
if(rs.next())
{
  out.print("successfully registered");
  
     
 }
 else
 {
     out.print("Not found");
     
 }
            }
catch(Exception e)
        {
        out.print(e);
        
        }
            %>
            
           
            
   
    </body>
    </body>
</html>
