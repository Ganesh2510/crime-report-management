<%-- 
    Document   : U_Action
    Created on : Feb 16, 2019, 12:13:31 PM
    Author     : Acer
--%>

<%@page import="com.mail.OTPMail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        try{
            Random rd=new Random();
        int s=rd.nextInt(1000000-50000)+4000;
        String pw=""+s;
        
       
            String uname=request.getParameter("uname");
            String pwd=request.getParameter("pwd");
            String query="select * from police where email='"+uname+"'and password='"+pwd+"'";
           ResultSet rs=Queries.getExecuteQuery(query);
          if(rs.next()){
            String email=rs.getString("email");  
            String pstation=rs.getString("pstation");
             
               session.setAttribute("email",email);
                session.setAttribute("pstation",pstation);
             
             response.sendRedirect("P_Home.jsp?msg=success");
             
           }
          else{
              response.sendRedirect("PLogin.jsp?msg=Login Failed Check Username/password");
          }
        }catch(Exception e){
            out.println(e);
        }
        %>