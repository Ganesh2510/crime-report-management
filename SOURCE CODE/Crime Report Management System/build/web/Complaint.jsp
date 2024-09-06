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
<% String email=(String)session.getAttribute("email");%>
<div class="wrapper row3" style="border:1px solid #00264d;height:auto;background: white;border-radius:10px;">
    <h1 align="center" style="font-size:20px;">WRITE YOUR COMPLAINT HERE</h1>
  <H2><%=email%></H2>
  <form action="ComAction" method="post" enctype="multipart/form-data">
   <table>
                            
                             <tr><th> Enter Your Mobile :</th><td><input type="number"  name="mobile" required></td></tr>
                             <tr><th> Enter Your Location :</th><td><input type="text"  name="location" required></td></tr>
                             <tr><th> Enter Complaint Name :</th><td><input type="text"  name="cname" required></td></tr>
                             <tr><th>Select Station of Problem Location</th><td><select name="station">
                                         <option>--select--</option>
                            
                                 <%try{
                                     String query="select * from station";
                                     ResultSet r=Queries.getExecuteQuery(query);
                                     while(r.next()){
                                        
                                       String station=r.getString("station");
                                        String quer="select * from police where pstation='"+station+"'";
                                        ResultSet rs=Queries.getExecuteQuery(quer);
                                        while(rs.next()){
                                         String pname=rs.getString("pname"); 
                                          String emaill=rs.getString("email");  
                                            
                                        
                                       %>
                                     <option value="<%=emaill%>"><%=station%>,<%=pname%></option>
                                         <%
                                     }
}

                                 }catch(Exception e){
                                   System.out.println(e);
                                 }
                                     
                                     
                                         
                                         
                                     %>    
                                     </select></tD></tr>
                             
                             
                             
                             <tr><th> Write Problem Description :</th><td><textarea cols="20" rows="5" name="desc"></textarea></td></tr>
<tr><th>Attach Photo</th><td><input type="file" name="image" required=""></td></tr>                        
 <tr><td><input type="submit" value="Complaint"> 
                                 </tD>
                                    </table>
  
  </form>
  
  
  
  
  
 
  <div id="footer" style="width:100%;height:40px;border:none;border-radius:10px;background:#00264d;">
      <div class="de" ><h4>Designed By Kishan</h4></div>   
      <div class="de"><h5 style="float:right;">CopyRights@2018</h5></div>   
</div>
</div>

     
</body>
</html>