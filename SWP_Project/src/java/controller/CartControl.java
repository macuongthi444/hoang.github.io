/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.ProductDAO;
import Model.ProductWithImage;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/**
 *
 * @author vinhp
 */
public class CartControl extends HttpServlet {

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
            out.println("<title>Servlet CartControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartControl at " + request.getContextPath() + "</h1>");
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
//        HttpSession session = request.getSession();
//        ProductDAO p = new ProductDAO();
//        String rmpid = request.getParameter("pid");
//        try {
//            HashMap<Integer, Integer> hashCart = (HashMap<Integer, Integer>) session.getAttribute("hashCart");
//            if (hashCart == null) {
//                hashCart = p.getCart((Integer) session.getAttribute("accountID"));
//            }
//            List<ProductWithImage> listCart = new ArrayList<>();
//            List<Integer> it = new ArrayList<>();
//            int a = (Integer) session.getAttribute("accountID");   
//            System.out.println(a);
//            for (int productID : hashCart.keySet()) {
//                it.add(productID);
//                ProductWithImage pCart = p.getProductWithImageByPid(productID);
//                ProductWithImage pCart_Amount = new ProductWithImage(pCart.getProductID(), pCart.getProductName(), pCart.getProductDetail(), pCart.getImageText(), pCart.getPrice(), pCart.getQuantity());
//                listCart.add(pCart_Amount);
//            }
////            if (rmpid != null) {
////                pDAL.removeProductCart((String) session.getAttribute("user"), rmpid);
////                session.setAttribute("hashCart", null);
////                response.sendRedirect("cart");
////            }
//            request.setAttribute("a", a);
//            request.setAttribute("it", it);
//            session.setAttribute("listCart", listCart);
//            request.getRequestDispatcher("Cart.jsp").include(request, response);
//        } catch (Exception e) {
//            request.getRequestDispatcher("Cart.jsp").include(request, response);
//        }

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
        PrintWriter pr = response.getWriter();
//        int pid = Integer.parseInt(request.getParameter("pid"));
//        HttpSession session = request.getSession();
//        List<ProductWithImage> listCart = (List<ProductWithImage>) session.getAttribute("listCart");
//        for (ProductWithImage p : listCart) {
//            if (p.getProductID() == pid) {
//                listCart.remove(p);
//            }
//        }
//        session.setAttribute("listCart", listCart);
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
