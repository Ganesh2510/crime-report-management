<%-- 
    Document   : Accept
    Created on : Mar 26, 2019, 11:38:17 AM
    Author     : Acer
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String email=(String)session.getAttribute("email");
String pstation=(String)session.getAttribute("pstation");%>
<%Random r1=new Random();
int iii=r1.nextInt(1000000-5900)+50000;
String s=""+iii;
String cid=request.getParameter("cid");
try{
    String query="update complaint set status='Accepted',firid='"+s+"' where location='"+pstation+"'and cid='"+cid+"'";
    int r=Queries.getExecuteUpdate(query);
    if(r>0){
      response.sendRedirect("CheckComplaint.jsp?msg=success");  
    }else{
     response.sendRedirect("CheckComplaint.jsp?msg=failed");    
    }
    
}catch(Exception e){
  out.println(e);  
}


%>