
<%@page import="com.mail.Mail"%>
<%@page import="java.util.Random"%>
<%@page import="com.dbcon.Queries"%>
<%
        try{
            Random ra=new Random();
            int i=ra.nextInt(1000000-1000)+5000;
            String pass=""+i;
            
            String msg="Your username is:your email,\n\n Your Password is:"+pass;
            String station=request.getParameter("station");
           String pname=request.getParameter("pname");
           String email=request.getParameter("email");
           String mobile=request.getParameter("mobile");
           String address=request.getParameter("address");
           String dob=request.getParameter("dob");
           
           
           
            String query="insert into police values(null,'"+pname+"','"+email+"','"+mobile+"','"+address+"','"+dob+"','"+station+"','"+pass+"')";
            
           int r=Queries.getExecuteUpdate(query);
          if(r>0){
              Mail.secretMail(msg, email,email);
              response.sendRedirect("ADD_Police.jsp?msg=success");
           }
          else{
              response.sendRedirect("ADD_Police.jsp?msg=Failed To Add Details");
          }
        }catch(Exception e){
            out.println(e);
        }
        %>