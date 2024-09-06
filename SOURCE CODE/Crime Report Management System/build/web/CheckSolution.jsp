<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<!DOCTYPE html>

<html>
<head>
  <link rel="icon" type="image/png" href="images/US_Indian_Police_badge.png" /><title>CRIME REPORT</title>
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
        <li class="active"><a href="CitizenHome.jsp">Home</a></li>
       <li><a href="Complaint.jsp">Complaint</a>
        <li><a href="Complaint_Status.jsp">Complaint Status</a>   
        <li><a href="Login.jsp">Logout</a>
        
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
<% String email=(String)session.getAttribute("email");
String firid=request.getParameter("cid");%>
<div class="wrapper row3" style="border:1px solid #00264d;height:auto;background: white;border-radius:10px;">
    <h1 align="center" style="font-size:20px;">COMPLAINT STATUS</h1>
  <H2><%=email%></H2>
<table style="margin-bottom:100px;">
      <tr><th>SOLUTION STATUS</th><th>SOLUTION DATE</th><th>SOLUTION</th>
        
      </tr>  
      <%
      String query="select * from complaint where firid='"+firid+"'";
      ResultSet r=Queries.getExecuteQuery(query);
      while(r.next()){
         
        %>
        <tr>
            <td><%=r.getString("status1")%></td>
            <td><%=r.getString("responsedate")%></td>
            
            <td><%=r.getString("caction")%></td>
          
           
        </tr>   
          
      <%    
      }
      
      
      
      %>
  </table>
  
  <a href="Complaint_Status.jsp">BACk</a>
  
  
 
  <div id="footer" style="width:100%;height:40px;border:none;border-radius:10px;background:#00264d;">
      <div class="de" ><h4>Designed By Kishan</h4></div>   
      <div class="de"><h5 style="float:right;">CopyRights@2018</h5></div>   
</div>
</div>

     
</body>
</html>