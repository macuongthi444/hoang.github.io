/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import DAO.DAOAccount;
import DAO.ProductDAO;
import DAO.ReviewDAO;
import Model.Account;
import Model.Brand;
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
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 *
 * @author This PC
 */
@WebServlet(name = "ProductDetail", urlPatterns = {"/detail"})
public class ProductDetail extends HttpServlet {

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
            out.println("<title>Servlet ProductDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductDetail at " + request.getContextPath() + "</h1>");
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
        String sortType = request.getParameter("sort");
        String id_raw = request.getParameter("productId");
        int id = Integer.parseInt(id_raw);
        ProductDAO dao = new ProductDAO();
        ProductWithImage product = dao.getProductWithImageById(id);
        ReviewDAO reviewDao = new ReviewDAO();
        DAOAccount daoAcc = new DAOAccount();
        List<Review> listAllReview = reviewDao.getAllReviewByProductID(id_raw);
        if (sortType == null || sortType.isEmpty()) {
            Collections.sort(listAllReview, Comparator.comparing(Review::getDateReview));
        } else if (sortType.equalsIgnoreCase("new")) {
            Collections.sort(listAllReview, Comparator.comparing(Review::getDateReview));
        } else {
            Collections.sort(listAllReview, Comparator.comparing(Review::getDateReview));
            Collections.reverse(listAllReview);
        }
        int countAllReview = listAllReview.size();
        List<ProductWithOption> option = dao.getProductWithOptionById(id);
        List<Account> listAcc = daoAcc.getAllAccount();
        List<Brand> brandList = dao.getBrandList();
        int brandId = dao.getBrandIdByProductId(id);
        List<ProductWithImage> productSameBrand = dao.getListProductByBrandId(brandId);
        request.setAttribute("productSameBrand", productSameBrand);
        request.setAttribute("brandList", brandList);
        request.setAttribute("listAllAcount", listAcc);
        request.setAttribute("listAllReview", listAllReview);
        request.setAttribute("countAllReview", countAllReview);
        request.setAttribute("option", option);
        request.setAttribute("detail", product);
        request.getRequestDispatcher("HomePageDetail.jsp").forward(request, response);
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
