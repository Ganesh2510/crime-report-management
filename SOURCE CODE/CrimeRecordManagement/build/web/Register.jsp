<!DOCTYPE html>
<!--
Template Name: Academic Education V2
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
  <link rel="icon" type="image/png" href="images/US_Indian_Police_badge.png" /><title>CRIME RECORD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style type="text/css">
      .de{
       width:300px;
       height:20px;
       border:none;
       border-radius:10px;  
       float:left;
      }
      </style>
</head>
<body id="top">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
   
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
 
        <image src="images/policecrime.jpg"/> 
    </div>
   
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a class="drop" href="#">Citizen</a>
          <ul>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="Register.jsp">Register</a></li>
           
          </ul>
        </li>
        <li><a class="drop" href="PLogin.jsp">Police</a> 
        </li>
        <li><a class="drop" href="ALogin.jsp">Admin</a>
        
        </li>
       
        
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper">
  <div id="slider">
    <div id="slide-wrapper" class="rounded clear"> 
      <!-- ################################################################################################ -->
      <figure id="slide-1"><a class="view" href="#"><img src="images/161.jpg" alt="" width="800"></a>
        <figcaption>
          <h2>Abstract</h2>
          <p align="justify">The proposed system applies to all Police
stations across the country and specifically looks into the subject
of Crime Records Management. It is well understood that Crime
Prevention, Detection and Conviction of criminals depend on a
highly responsive backbone of Information Management.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      
         </div>
  </div>
</div>

<div class="wrapper row3" style="border:1px solid #00264d;height:auto;background: white;border-radius:10px;">
 <h1 align="center" style="font-size:20px;">Register Here</h1>
  <%String msg=request.getParameter("msg");
  if(msg!=null){
      if(msg.equalsIgnoreCase("success")){
        %>
        <h3 align="center"> <font color="gree">Registration Successful</font> </h3>
       <%
      }else if(msg.equalsIgnoreCase("failed")){
 %>
        <h3 align="center"> <font color="red">Registration Failed</font> </h3>
       <%
} else if(msg.equalsIgnoreCase("exist")){
 %>
        <h3 align="center"> <font color="red">Email Already Exist.PlZ Try with another email id </font> </h3>
       <%
}
}
%>
   <form action="RegServlet" name="reg" method="post" autocomplete="on" enctype="multipart/form-data" autocomplete="on">
                    <table>
                       <tr><th> First Name    :</th><td><input type="text" name="name" required></td></tr>
                        <tr><th> Last Name    :</th><td><input type="text" name="lname" required></td></tr>
                      <tr><th> Email    :</th><td><input type="email" name="email" required></td></tr>
                      <tr><th> Mobile   :</th><td><input type="number"  name="mobile" required></td></tr>
                       <tr><th> Location    :</th><td><input type="text"  name="address" required></td></tr>
                        <tr><th> UserName   :</th><td><input type="text"  name="uname" required></td></tr>
                         <tr><th> Password  :</th><td><input type="password"  name="pwd" style="color:black;" required></td></tr>
                        <tr><th> Aadhar  :</th><td><input type="text"  name="aadhar" style="color:black;" required></td></tr>
                          <tr><td></tD><td><input type="submit" value="Register">&nbsp;&nbsp;    <input type="reset"></tD></tr>
                             </table>
                </form>
  
  <div id="footer" style="width:100%;height:40px;border:none;border-radius:10px;background:#00264d;">
      <div class="de" ><h4>Designed by Shield-Squard</h4></div> 
      <div class="de" ><h4>Teammates : Ganesh,Upendra,Vinay,Bala</h4></div>   
      <div class="de"><h5 style="float:right;">CopyRights@2023</h5></div>   
</div>
</div>

     
</body>
</html>