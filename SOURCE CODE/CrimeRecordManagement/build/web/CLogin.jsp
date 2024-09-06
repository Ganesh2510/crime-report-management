
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>CryptCloud</title>
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
      input{
          color:grey;
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
      <h1><a href="index.html">CryptCloud+: Secure and Expressive Data Access</a></h1>
      <p>Control For Cloud Storage</p>
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
        <li><a class="drop" href="#">Data User</a>
          <ul>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="Register.jsp">Register</a></li>
           
          </ul>
        </li>
        <li><a class="drop" href="#">Data Owner</a>
          <ul>
            <li><a href="OLogin.jsp">Login</a></li>
            <li><a  href="Register.jsp">Register</a></li> 
          </ul>
        </li>
        <li><a class="drop" href="#">Auditor</a>
          <ul>
            <li><a href="ALogin.jsp">Login</a></li>
            
          </ul>
        </li>
        <li><a class="drop" href="#">Cloud</a>
          <ul>
            <li><a href="CLogin.jsp">Login</a></li>
            
          </ul>
        </li>
        <li><a class="drop" href="#">STA</a>
          <ul>
            <li><a href="SLogin.jsp">Login</a></li>
            
          </ul>
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
      <figure id="slide-1"><a class="view" href="#"><img src="images/imageowner.jpg" alt="" width="800"></a>
        <figcaption>
          <h2>Abstract</h2>
          <p align="justify">Secure cloud storage, which is an emerging cloud service, 
              is designed to protect the conﬁdentiality of outsourced data but also to provide ﬂexible data
              access for cloud users whose data is out of physical control. </p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      <figure id="slide-2"><a class="view" href="#"><img src="images/image.jpg" alt=""></a>
        <figcaption>
          <h2>Continues..</h2>
          <p> Ciphertext-Policy Attribute-Based Encryption (CP-ABE) is regarded as one of the most promising techniques that may be leveraged to secure the guarantee of the service. However, the use of CP-ABE may yield an inevitable security breach which is known as the misuse of access credential (i.e. decryption rights),</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
         </div>
  </div>
</div>

<div class="wrapper row3" style="border:1px solid #00264d;height:auto;background: white;border-radius:10px;margin-bottom:100px;">
  <h1 align="center" style="font-size:20px;">Cloud Login Here</h1>
  <form action="C_Action.jsp" name="reg" method="post" autocomplete="off" enctype="form-data/multipart">
                    <table>
                             <tr><th> UserName :</th><td><input type="text"  name="uname" required></td></tr>
                         <tr><th> Password :</th><td><input type="password"  name="pwd" required></td></tr>
                         <tr><td><input type="submit" value="Login"> 
                             </tD></tr> 
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