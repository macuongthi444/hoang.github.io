/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import DAO.DAOAccount;
import DAO.ProductDAO;
import DAO.ReviewDAO;
import Model.Account;
import Model.ProductWithImage;
import Model.ProductWithOption;
import Model.Review;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author This PC
 */
@WebServlet(name = "EditReview", urlPatterns = {"/editreview"})
public class EditReview extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditReview</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditReview at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        int idReview = Integer.parseInt(request.getParameter("reviewid"));

        String content = request.getParameter("content");
        ReviewDAO reviewDao = new ReviewDAO();
        reviewDao.editReview(idReview, content);
        ////
        String id_raw = request.getParameter("productID");
        PrintWriter out = response.getWriter();
        out.print(id_raw);
        int id = Integer.parseInt(id_raw);
        ProductDAO dao = new ProductDAO();
        ProductWithImage product = dao.getProductWithImageByPid(id);
        
        DAOAccount daoAcc = new DAOAccount();
        List<Review> listAllReview = reviewDao.getAllReviewByProductID(id_raw);
        int countAllReview = listAllReview.size();
        List<ProductWithOption> option = dao.getProductWithOptionById(id);
        List<Account> listAcc = daoAcc.getAllAccount();
        request.setAttribute("listAllAcount", listAcc);
        request.setAttribute("listAllReview", listAllReview);
        request.setAttribute("countAllReview", countAllReview);
        request.setAttribute("option", option);
        request.setAttribute("detail", product);
        request.getRequestDispatcher("ProductDetail.jsp").forward(request, response);
        request.getRequestDispatcher("detail").forward(request, response);
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
