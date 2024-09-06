<%-- 
    Document   : U_Action
    Created on : Feb 16, 2019, 12:13:31 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        try{
            String sname=request.getParameter("sname");
           
            String query="insert into station values(null,'"+sname+"',now())";
           int r=Queries.getExecuteUpdate(query);
          if(r>0){
              response.sendRedirect("ADD_Station.jsp?msg=success");
           }
          else{
              response.sendRedirect("ADD_Station.jsp?msg=Failed To Add Details");
          }
        }catch(Exception e){
            out.println(e);
        }
        %>