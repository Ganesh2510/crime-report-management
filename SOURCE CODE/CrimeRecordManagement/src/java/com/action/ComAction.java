/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dbcon.DBCon;
import com.dbcon.Queries;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize=16177215)
public class ComAction extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       HttpSession session=request.getSession();
       
       try{
           String email=(String)session.getAttribute("email");
         
           String mobile=request.getParameter("mobile");
           String location=request.getParameter("location");
            String cname=request.getParameter("cname");
           String station=request.getParameter("station");
           String desc=request.getParameter("desc");
           Part p=request.getPart("image");
           InputStream inputStream=null;
           if(p!=null){
               inputStream=p.getInputStream();
           }
            Connection con=DBCon.getCon();
           String query="select count(*) from complaint where Vemail='"+email+"' and cname='"+cname+"' and cstation='"+station+"'";
           ResultSet r=Queries.getExecuteQuery(query);
           int count=0;
           while(r.next()){
               count=r.getInt(1);
               if(count==0){
                   
               
           PreparedStatement st=con.prepareStatement("insert into complaint values(null,?,?,?,?,?,?,?,now(),?,?,?,?,?)");
       
           st.setString(1,email);
           st.setString(2,mobile);
           st.setString(3,location);
           st.setString(4,cname);
           st.setString(5,station);
           st.setString(6,desc);
           if(inputStream!=null){
           st.setBlob(7,inputStream);
           }
           st.setString(8,"waiting");
           st.setString(9,"waiting");
            st.setString(10,"waiting");
            st.setString(11,"waiting");
            st.setString(12,"waiting");
          int i=st.executeUpdate();
        if(i>0){
            response.sendRedirect("Complaint.jsp?msg=success");
        }else{
          response.sendRedirect("Complaint.jsp?msg=failed");  
        }
               }else{
                response.sendRedirect("Complaint.jsp?msg=Already Complaint Exist on this matter");     
               }
           
           
           }  
           
           
        }catch(Exception e)
        {
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
