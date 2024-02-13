/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.customer;

import DAO.CartItemDAO;
import DAO.OrderDAO;
import Model.Account;
import Model.CartItem;
import Model.Communications;
import Model.ProductOption;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author zenzen1
 */
@WebServlet(name = "CheckoutServlet", urlPatterns = {"/CheckoutServlet"})
public class CheckoutServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckoutServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            String html = "";
            html += "<script tyle=\"text/javascript\"> alert('Order success'); </script>";
            out.print(html);
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String[] productOptions = request.getParameterValues("productOptionSelected");
        System.out.println(productOptions[1]);
        request.getRequestDispatcher("customerView/checkout.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        request.getRequestDispatcher("customerView/checkout.jsp").forward(request, response);
        HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("account");
        if(checkCommunications(request, response)){
            // order success
            try {
                String[] productOptionsId = request.getParameterValues("productOptionSelected");
                OrderDAO.INSTANCE.insertOrder(productOptionId, productOptionId, orderDate);
                for (String string : productOptionsId) {
                    int productOptionId = Integer.parseInt(string);
                    CartItemDAO.INSTANCE.deleteCartItem(account.getId(), productOptionId);
                }
                int communicationId = Integer.parseInt(request.getParameter("communications"));
                processRequest(request, response);
            } catch (NumberFormatException e) {
                
            }
        }
        session.setAttribute("error", "error");
        
    }
    
    private boolean checkCommunications(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Account account = (Account)request.getSession().getAttribute("account");
        if(account == null) account = CartItemDAO.INSTANCE.getAccountById(2);
        List<Communications> communicationsList = CartItemDAO.INSTANCE.getCommunicationsListByAccountId(account.getId());
        if(communicationsList.isEmpty()) return false;
        return true;
    }
    
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
