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
        
        String msg="Your OTP is:"+pw+";";
            String uname=request.getParameter("uname");
            String pwd=request.getParameter("pwd");
            String query="select * from reg where uname='"+uname+"'and pwd='"+pwd+"'";
           ResultSet rs=Queries.getExecuteQuery(query);
          if(rs.next()){
            String email=rs.getString("email");  
             String mobile=rs.getString("mobile"); 
        
             String re="update reg set otp='"+pw+"' where email='"+email+"'";
             int i=Queries.getExecuteUpdate(re);
             
              session.setAttribute("email",email);
              session.setAttribute("mobile",mobile);
              OTPMail.secretMail(msg, email,email);
             String url_str="http://bulk.rocktwosms.com/spanelv2/api.php?username=coignedutran&password=coignbulk@2018&to="+mobile+"&from=coigne&message="+pw;  

	try {
		   URL url22 = new URL(url_str);
		   
	         HttpURLConnection connection = (HttpURLConnection) url22.openConnection();
	         connection.setDoOutput(false); 
	         connection.setDoInput(true); 

	         String res=connection.getResponseMessage();
	         System.out.println("message sent to mobile"+res);
	         
                 %>
                 <script type="text/javascript">
                     window.alert("OTP sent to mail and mobile number");
                     window.location="U_Verify.jsp";
                 </script>
                 <%
	        
	         }
	      catch(Exception e2)
	      {
	   	   e2.printStackTrace();
	      }
              
              
             
           }
          else{
              response.sendRedirect("Login.jsp?msg=Login Failed Check Username/password");
          }
        }catch(Exception e){
            out.println(e);
        }
        %>