/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.CouponDAO;
import DAO.PostDAO;
import Model.Coupon;
import Model.PostType;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author hoang
 */
@WebServlet(name = "AddPost", urlPatterns = {"/AddPost"})
public class AddPost extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PostDAO dao = new PostDAO();
        List<PostType> pt1 = dao.getAllPostType();

        CouponDAO dao1 = new CouponDAO();
        List<Coupon> coupon = dao1.getAllCoupon();

        String idMarketing = request.getParameter("postByUserMarketing");
        String PostTitle = request.getParameter("PostTitle");
        String typePost = request.getParameter("type");
        String StartDate = request.getParameter("StartDate");
        String EndDate = request.getParameter("EndDate");

        String postImg = request.getParameter("postImg");
        String coupon1 = request.getParameter("coupon");
        
        Date StartDate1 = Date.valueOf(StartDate);
        Date EndDate1 = Date.valueOf(EndDate);
        int typePost1 = Integer.parseInt(typePost);
        int idMarketing1 = Integer.parseInt(idMarketing);
        int coupons = Integer.parseInt(coupon1);
        dao.addPost(PostTitle, postImg, StartDate1, EndDate1, typePost1, idMarketing1, coupons);
        response.sendRedirect("PostList");
        
        request.setAttribute("postType", pt1);
        request.setAttribute("coupon", coupon);
        request.getRequestDispatcher("adminView/AddPost.jsp").forward(request, response);
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
