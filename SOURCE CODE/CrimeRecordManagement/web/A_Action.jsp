<%
try{
    String uname=request.getParameter("uname");
            String pwd=request.getParameter("pwd");
          if(uname.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
              %>
              <script type="text/javascript">
                  window.alert("Successfully Login");
                  window.location="A_Home.jsp";
                  </script>
                  
              <%
          }else{
%>
              <script type="text/javascript">
                  window.alert("Failed To Login");
                  window.location="ALogin.jsp";
                  </script>
                  
              <%
}
}catch(Exception e){
    out.println(e);
}


%>
