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
import java.text.ParseException;
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
        try {

            response.setContentType("text/html;charset=UTF-8");
            PostDAO dao = new PostDAO();
            List<PostType> pt1 = dao.getAllPostType();

            CouponDAO dao1 = new CouponDAO();
            List<Coupon> coupon = dao1.getAllCoupon();
            request.setAttribute("postType", pt1);
            request.setAttribute("coupon", coupon);
            request.getRequestDispatcher("adminView/AddPost.jsp").include(request, response);

            String idMarketing = request.getParameter("postByUserMarketing");
            String PostTitle = request.getParameter("PostTitle");
            String typePost = request.getParameter("type");
            String StartDate = request.getParameter("StartDate");
            String EndDate = request.getParameter("EndDate");

            String postImg = request.getParameter("postImg");
            String coupon1 = request.getParameter("coupon");

            Date StartDate1 = Date.valueOf(StartDate);
            Date EndDate1 = Date.valueOf(EndDate);
            if (StartDate1.after(EndDate1)) {
                throw new IllegalArgumentException("StartDate must be before or equal to EndDate");
            }
            int typePost1 = Integer.parseInt(typePost);
            int idMarketing1 = Integer.parseInt(idMarketing);
            int coupons = Integer.parseInt(coupon1);
            dao.addPost(PostTitle, postImg, StartDate1, EndDate1, typePost1, idMarketing1, coupons);
            response.sendRedirect("PostList");

        } catch (IllegalArgumentException e) {
            // Handle the exception when StartDate is after EndDate
            e.printStackTrace(); // You might want to log the exception or handle it appropriately
            // Inform the user about the invalid date range or take corrective action
        } // Handle the exception if there is an issue with parsing date parameters
        // You might want to log the exception or handle it appropriately
        // Inform the user about the invalid date format or take corrective action
        catch (Exception e) {
            // Handle other potential exceptions
            e.printStackTrace(); // You might want to log the exception or handle it appropriately
            // Inform the user or take corrective action based on the specific exception
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
