/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.customer;

import DAO.DAOAccount;
import DAO.OrderDAO;
import Model.Account;
import Model.AccountProfile;
import Model.Communications;
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
 * @author vinhp
 */
@WebServlet(name = "OrderDetailsServlet", urlPatterns = {"/OrderDetailsServlet"})
public class OrderDetailsServlet extends HttpServlet {

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
            out.println("<title>Servlet OrderDetailsServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderDetailsServlet at " + request.getContextPath() + "</h1>");
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
        Object accountObject = request.getSession().getAttribute("account");
        if (accountObject == null) {
            System.out.println("null");
            response.sendRedirect("/SWP_Project/login");
            return;
        }
        OrderDAO o = new OrderDAO();
        DAOAccount ad = new DAOAccount();
        Account account = (Account) request.getSession().getAttribute("account");
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        AccountProfile af = ad.getAccountProfileByAccountId(account.getId());
        int communicationsId = o.getCommuniCationsIdByOrderId(orderId);
        Communications communications = ad.getCommunicationByCommunicationIdAndAccountId(communicationsId, account);
        List<Integer> productOptionList = o.getAllProductOptionIdByOrderId(orderId);
        System.out.println(productOptionList.get(0));
        request.setAttribute("productOptionList", productOptionList);
        request.setAttribute("communications", communications);
        request.setAttribute("af", af);
        request.setAttribute("orderId", orderId);
        request.getRequestDispatcher("OrderDetails.jsp").forward(request, response);
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
