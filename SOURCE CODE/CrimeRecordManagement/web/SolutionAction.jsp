<%-- 
    Document   : SolutionAction
    Created on : Mar 26, 2019, 12:07:02 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>

<!DOCTYPE html>
<% String email=(String)session.getAttribute("email");
String pstation=(String)session.getAttribute("pstation");%>
<%
String cid=request.getParameter("cid");
String station=request.getParameter("station");
String solution=request.getParameter("solution");
try{
    String query="update complaint set status1='Resolved',caction='"+solution+"',responsedate=now() where location='"+station+"'and cid='"+cid+"'";
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