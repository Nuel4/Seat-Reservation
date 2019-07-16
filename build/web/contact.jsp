<%-- 
    Document   : contact.jsp
    Created on : 15 Apr, 2019, 11:59:58 PM
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
    <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="home.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</li>
       
        <li><a href="address.jsp"> Address</li>
      <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html" style="color:red; text-decoration: none;">logout</a></li>
    </ul>
</div>
       <bR><br><br><br>
       <form align="center">
           <h1>Please provide us with your details</h1>
      <div>
          <label>First name</label>
          <input type="text" name="nam" placeholder="first name">
      </div>
      <div>
          <label>Last name</label>
          <input type="text" name="nam" placeholder="Surname">
      </div>
      <div>
          <label>Phone no</label>
          <input type="text" name="nam" placeholder="phone number">
      </div>
      <div>
          <label>Email</label>
          <input type="email" name="nam" placeholder="email">
      </div>
      <div>
          <label>Complaint</label>
          <div>
              <textarea type="TextArea" name="nam" placeholder=" type your message"></textarea></div>
      </div>
      <div>
          <br>
          <input type="submit" name="submit" value="Submit">
      </div>
       </form>
       
       <div align="left">
               <h1 style="color: black"> Contact:</h1>
                Contact Details<br> 1800 102 5838<br>
               <div>
                   <p>Monday  00:00 -  24:00</p>
               </div>
               <div>
                   <td> Tuesday   00:00 - 24:00</td>
               </div>
               <div>
                    <p> Wednesday  00:00 - 24:00</p>
               </div>
               <div>
                   <td> Thursday  00:00 - 24:00</td>
               </div>
               <div>
                    <p> Friday  00:00 - 24:00</p>
               </div>
               <div>
                   <td> Saturday  00:00 - 24:00</td>
               </div>
               <div>
                    <p> Sunday  00:00 - 24:00</p>
                  
               </div>
          
   </div>
      
    </body>
</html>
