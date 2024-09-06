
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
             String email=(String)session.getAttribute("email");
                String otp=request.getParameter("otp");
           
            String query="select * from reg where email='"+email+"'and otp='"+otp+"'";
           ResultSet rs=Queries.getExecuteQuery(query);
          if(rs.next()){
                    %>
                 <script type="text/javascript">
                     window.alert("OTP Verifies Successfully");
                     window.location="CitizenHome.jsp";
                 </script>
                 <%
	           }
          else{
%>
              <script type="text/javascript">
                     window.alert("OTP Verification Failed");
                     window.location="U_Verify.jsp";
                 </script>
         <% }
        }catch(Exception e){
            out.println(e);
        }
        %>