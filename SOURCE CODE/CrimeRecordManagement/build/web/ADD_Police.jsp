<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
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
        <li class="active"><a href="A_Home.jsp">Home</a></li>
       <li><a href="ADD_Station.jsp">Add Police Station</a>
         
        </li>
        <li><a href="ADD_Police.jsp">Add Police</a> 
        </li>
        <li><a  href="ALogin.jsp">Logout</a>
        
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
       
      </figure>
      
         </div>
  </div>
</div>

<div class="wrapper row3" style="border:1px solid #00264d;height:auto;background: white;border-radius:10px;">
  <h1 align="center" style="font-size:20px;">Welcome To Add Police</h1>
  <form action="APoliceAction.jsp" method="post">
  <table>
      <tR><th>SELECT STATION</th><td><select name="station" style="width:180px;">
                  <option>--select--</option>
      <%
      try{
          String query="select * from station";
          ResultSet r=Queries.getExecuteQuery(query);
          while(r.next()){
              String station=r.getString(2);
            
              %>
              <option value="<%=station%>"><%=station%></option>
           <%
          }
      }catch(Exception e){
          out.println(e);
      }
      
      
      %>
      </select></td>
      </tr>
      <tr><th>POLICE NAME</th><TD><input type="text" name="pname" required=""></TD></tr>
      <tr><th>POLICE EMAIL</th><TD><input type="text" name="email" required=""></TD></tr>
        <tr><th>POLICE MOBILE</th><TD><input type="number" name="mobile" required=""></TD></tr>
          <tr><th>POLICE ADDRESS</th><TD><input type="text" name="address" required=""></TD></tr>
            <tr><th>POLICE DOB</th><TD><input type="date" name="dob" required=""></TD></tr>
           
      <tr><td><input type="submit" value="SUBMIT DATA"</tD></tr>
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