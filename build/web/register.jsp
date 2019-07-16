<%-- 
    Document   : registercos.jsp
    Created on : 5 Apr, 2019, 8:31:57 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    
    

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
body{
    background-image: url(pic/air.jpg);
}

input[type=text], select {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
h1{
    padding: 1px 12px 12px 0;
    color: blue;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  color: blue;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>

 <body style="padding:0; margin: 0">

<div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
     <div style="width:10%"><img src="pic/logh.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="home.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        <li><a href="address.jsp"> Address</a></li>
       <li class="button" style="background: black; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">Logout</a></li>
    </ul>
</div>

<div class="container">
     
    <form method="post" action="insertinfo.jsp">
        <h1 align="center">REGISTER </h1>
        <center> <div style="width:30%; float: none;">
    <div class="row">*
      <div class="col-25">
          <label for="cusid" style="padding:5px;">ID CARD</label>
      </div>
      <div class="col-75">
        <input type="text" id="fid" name="card" placeholder="Passport Id.">
        
      </div>
    </div>
    <div class="row">*
      <div class="col-25">
        <label for="lname" style="padding:5px;">FULL NAME</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="name" placeholder="Name">
      </div>
    </div>
    <div class="row">*
      <div class="col-25">
        <label for="address" style="padding:5px;">ADDRESS</label>
      </div>
        <div class="col-75">
        <input type="text" id="lname" name="ad" placeholder="Address">
      </div>
     
      </div>
    
    <div class="row">*
      <div class="col-25">
        <label for="phone" style="padding:5px;">PHONE NO</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="ph" placeholder="Phone No">
      </div>
    </div>

    <div class="row">*
      <div class="col-25">
        <label for="email" style="padding:5px;">EMAIL</label>
      </div>
      <div class="col-75">
        <input type="emial" id="lname" name="em" placeholder="Email">
      </div>
    </div>
    <div class="row">*
      <div class="col-25">
        <label for="relate" style="padding:5px;">RELATIVE</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="rela" placeholder="Relation">
      </div>
    </div>
    <div class="row">*
      <div class="col-25">
        <label for="relphone" style="padding:5px;">RELATIVE PHONE NO</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="rph" placeholder="Relative Phone No">
      </div>
    </div>
            
</div> 
        </center>
        </
        <div class="row"><center>
      <input type="submit" value="SUBMIT">
      <input type="reset" name="reset" value="RESET">
            </center>
            </div>
       
    </div>
 
  </form>
</div>

               
</body>
</html>

<%-- <h1 align="center">CUSTOMERS DETAILS</h1> 
        <h2 align="right"> <a href="index.html">LOGOUT</a></h2>
        <br>
        <br>
        <form method="post" action="insertinfo.jsp">
           
        <table align="center">
            <tr>
                <td></td>
            <h3 align="center">CUSTOMERS DETAILS</h3>
            
            <tr>
                <td>ID CARD:</td><td><input type="text" name="card"  ></td>
            </tr>
            <tr>
               <td>FULL NAME</td><td><input type="text" name="name"></td>
            </tr>
           
            <tr>
                <td>ADDRESS</td><td><input type="text" name="ad"></td>
            </tr>
             <tr>
                <td>PHONE NO</td><td><input type="text" name="ph"></td>
            </tr>
             <tr>
                <td>EMAIL</td><td><input type="text" name="em"></td>
            </tr>
            <tr>
                <td>RELATIVE</td><td><input type="text" name="rela"></td>
            </tr>
            
            <tr>
                <td> RELATIVE PHONE NO</td><td><input type="text" name="rph"></td>
            </tr>
            <br>
            <tr>
                <td></td>
                &nbsp;&nbsp;<td> <input type="SUBMIT" name="SUBMIT" value="SUBMIT"></td>
                <td> <input type="reset" name="reset" value="RESET"></td>
              </tr>--%>
        
    </body>
</html>
