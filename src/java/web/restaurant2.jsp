<%-- 
    Document   : restaurant2.jsp
    Created on : 11 Apr, 2019, 6:10:21 PM
    Author     : Admin
--%>

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
        <h1>TOTAL AMOUNT OF SELECTED ITEMS</h1>
        <%
            int amount =0;
            String[] fooditems =request.getParameterValues("food");
            if(fooditems!=null)
            {
                for(int i=0;i<fooditems.length;i++)
                {
                    if(fooditems[i].equals("pizza")){
                        amount=amount+2;
                    out.print("<br> pizza:"+"$"+2);
                    }
                    if(fooditems[i].equals("rice")){
                     amount=amount+1;
                     out.print("<br>rice:"+"$"+1);
                    }
                     if(fooditems[i].equals("chicken")){
                  amount=amount+3;
                  out.print("<br>chicken:"+"$"+3);
                     }
                    if(fooditems[i].equals("coke")){
                     amount=amount+1;
                     out.print("<br>coke:"+"$"+1);
                    }
                    if(fooditems[i].equals("fanta")){
                     amount=amount+2;
                     out.print("<br>fanta:"+"$"+2);
                    }
                      if(fooditems[i].equals("yam")){
                     amount=amount+2;
                     out.print("<br>yam:"+"$"+2);
                      }
                      if(fooditems[i].equals("eba")){
                     amount=amount+2;
                     out.print("<br>eba:"+"$"+2);
                      }
                       if(fooditems[i].equals("burga")){
                        amount=amount+4;
                        out.print("<br>burga:"+"$"+4);
                       }
                          if(fooditems[i].equals("sandwitch")){
                        amount=amount+2;
                        out.print("<br>sandwich:"+"$"+2);
                          }
                }
                out.print("<br>....................................<br>");
                out.print("<br>Total amount:"+"$"+amount);
            }
            %>
            
            
    </body>
</html>
