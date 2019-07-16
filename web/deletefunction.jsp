<%-- 
    Document   : deletefunction
    Created on : 13 May, 2019, 3:31:04 AM
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
    </head>
    <body>
        <%!
            ResultSet rs,rs1,rs2,rs3;
            Connection con,kon,kom,mok;
            %>
        <%
            String fly = request.getParameter("digit");
            //String comp = request.getParameter("na");
           %>
            
           <%
              try
                  {
                   Class.forName("com.mysql.jdbc.Driver");
                con =DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing", "root","root");
                Statement stmt =con.createStatement();
                 
                 boolean f=stmt.execute("delete  from flight where flightid='"+fly+"'");
                 
                 boolean k= stmt.execute("delete  from ticket where companyid='"+fly+"'");
                  
                 if(!f)
                {
               out.print("<b align='center'> FLIGHT SUCCESSFULLY DELETED</>");
                
                }
                 else
                     
                {
                   out.print("<b align='center'>NOT DELETED</>");
                   
                }
                 stmt.execute("delete  from ticket where companyid='"+fly+"'");
                con.close();
                
                }
               
                catch(Exception e)
                 {
                    out.print(e);       
                }
                %> 
                
              
               
                
             
               
    </body>
</html>

    </body>
</html>
