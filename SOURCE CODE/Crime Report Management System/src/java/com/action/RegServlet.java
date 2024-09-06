/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dbcon.DBCon;
import com.dbcon.Queries;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize=16177215)
public class RegServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            
             
           String name=request.getParameter("name");
           String lname=request.getParameter("lname");
           String email=request.getParameter("email");
           String mobile=request.getParameter("mobile");
           String address=request.getParameter("address");
           String uname=request.getParameter("uname");
           String pass=request.getParameter("pwd");
         String aadhar=request.getParameter("aadhar");
         
           Connection con=DBCon.getCon();
           String query="select count(*) from reg where email='"+email+"'";
           ResultSet r=Queries.getExecuteQuery(query);
           int count=0;
           while(r.next()){
               count=r.getInt(1);
               if(count==0){
                   
               
           PreparedStatement st=con.prepareStatement("insert into reg values(null,?,?,?,?,?,?,?,?,?)");
       
           st.setString(1,name);
           st.setString(2,lname);
           st.setString(3,email);
           st.setString(4,mobile);
           st.setString(5,address);
           st.setString(6,uname);
           st.setString(7,pass);
           st.setString(8,aadhar);
           st.setString(9,"waiting");
           
          int i=st.executeUpdate();
        if(i>0){
            response.sendRedirect("Register.jsp?msg=success");
        }else{
          response.sendRedirect("Register.jsp?msg=failed");  
        }
               }else{
                response.sendRedirect("Register.jsp?msg=exist");     
               }
           
           
           }  
        }catch(Exception e){
           out.println(e); 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
