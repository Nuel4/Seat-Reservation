<%-- 
    Document   : login1.jsp
    Created on : 15 Apr, 2019, 8:48:04 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
}
.wrapper{
  min-height:100vh;
  background-image: url(pic/air.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-color:skyblue;
 
  font-family: 'Open Sans', sans-serif;
  padding-top:90px;
}

.container1{
  
}

.container{
  max-width:300px;
  margin:0 auto;
  background-color: white;
  text-align:center;
  padding:50px 0;
  box-shadow:0 0 20px rgba(0,0,0,.4);
  border-radius:3px;
}
.social-login{
  display:block;
  width:50%;
  margin: 5px auto;
  text-decoration:none;
  padding:10px 15px;
  color:#fff;
  border-radius:3px;
  margin-bottom:10px;
  transition:all .3s ease-in-out;
}
.social-login:hover{
    box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);
}
a.fb-login{
  background-color:#3B5998;
}
a.google-login{
  background-color:#db4437;
}
form{
  max-width:250px;
  margin:0 auto;
  text-align:left;
}

p.seperator{
  margin:25px;
}
div.group{
  margin-top:15px;
}
label{
  display:block;
  margin-bottom:5px;
 
}
div.group input{
  width:100%;
  padding:10px 4px;
  outline:none;
}
a.forget-link{
  color:black;
  display:block;
  margin:10px 0;
}

input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:#20c198;
  color:white;
  transition:all .3s ease-in-out;
}
input[type="submit"]:hover{
  cursor:pointer;
  box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);
}
</style>
    </head>
   
    <body style="padding:0; margin:0">
        <div class="container1" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 1rem;">
                <div style="width:10%;"><img src="pic/logh.jpg" style="width:100%;"></div>
            <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width: 40%;">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</li>
                <li><a href="contact.jsp">Contact Us</li>
                <li><a href="address.jsp"> Address</li>
                <li class="button" style="background: yellow; padding:3px 15px; border-radius:5px"><a href="register.jsp" style="color:#000; text-decoration: none;">Sign up</a></li>
             <li class="button" style="background: yellow; padding:3px 15px; border-radius:5px"><a href=index.html style="color:#000; text-decoration: none;">logout</a></li>
          
            </ul>
        </div>
        
        <div class="wrapper" >
  <div class="container">
    <a href="" class="fb-login social-login">
      Login with Facebook
    </a>
     <a href="" class="google-login social-login">
      Login with Google
    </a>
    <p class="seperator" >-OR-</p>
    <form method="post" action="login.jsp">
      <div class="group">
        <label for="user id">USER ID:</label>
        <input type="text" id="em" name="reg" placeholder="Passenger's ID">
      </div>
      <div class="group">
        <label>Password:</label>
        <input type="text"  name="pas" placeholder="NAME">
      </div>
      <a href="passwd.jsp" class="forget-link">Forgot password?</a>
      <input type="submit" value="Login" id="submit">
    </form>
  </div>
</div>
        
    <li class="button" style="background: yellow; padding:3px 15px; border-radius:5px"><a href="register.jsp" style="color:#000; text-decoration: none;">s</a></li>     
        
        
     
       
    </body>
</html>
