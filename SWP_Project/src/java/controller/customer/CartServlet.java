/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.customer;

import DAO.CartItemDAO;
import DAO.PaymentDAO;
import DAO.ProductDAO;
import Model.Account;
import Model.CartItem;
import Model.PaymentMethod;
import Model.ProductOption;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author zenzen1
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {
   
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
            out.println("<title>Servlet CartServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath () + "</h1>");
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
//        if(request.getSession().getAttribute("account") == null){ 
//            response.sendRedirect("/SWP_Project/login");
//            return;
//        }
        
        Object accountObject = request.getSession().getAttribute("account");
        if(accountObject == null) {
//            account = CartItemDAO.INSTANCE.getAccountById(2);
//            request.getSession().setAttribute("account", account);
            System.out.println("null");
            response.sendRedirect("/SWP_Project/login");
            return;
        }
        Account account = (Account)request.getSession().getAttribute("account");
        List<CartItem> cartItemList = CartItemDAO.INSTANCE.getCartItemListByAccountId(account.getId());
        List<Integer> productOptionIdList = new ArrayList<>();
        if(!cartItemList.isEmpty()){
            for (CartItem cartItem : cartItemList) {
                productOptionIdList.add(cartItem.getProductOption().getProductOptionId());
            }
        }
        request.setAttribute("cartItemList", cartItemList);
        request.setAttribute("ProductDAO", ProductDAO.INSTANCE);
        request.setAttribute("productOptionIdList", productOptionIdList);
        request.getRequestDispatcher("customerView/cart.jsp").forward(request, response);
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
//        processRequest(request, response);
        Account account = (Account)request.getSession().getAttribute("account");
        if (account == null) account = CartItemDAO.INSTANCE.getAccountById(2);
        List<CartItem> selectedItemList = new ArrayList<>();
        List<Integer> productOptionIdList = new ArrayList<>();
        for (CartItem cartItem : CartItemDAO.INSTANCE.getCartItemListByAccountId(account.getId())) {
            if(request.getParameter("select" + cartItem.getProductOption().getProductOptionId()) != null){
                selectedItemList.add(cartItem);
                productOptionIdList.add(cartItem.getProductOption().getProductOptionId());
            }
        }
        
        // customer doesn't select any option
        
//        HashMap <Integer, PaymentMethod> paymentMethodMap = new HashMap<>();
//        for (PaymentMethod paymentMethod : PaymentDAO.INSTANCE.getPaymentMethodList()) {
//            paymentMethodMap.put(paymentMethod.getPaymentMethodId(), paymentMethod);
//        }
//        request.setAttribute("paymentMethodList", PaymentDAO.INSTANCE.getPaymentMethodList());
        request.setAttribute("communicationsList", CartItemDAO.INSTANCE.getCommunicationsListByAccountId(account.getId()));
        request.setAttribute("ProductDAO", ProductDAO.INSTANCE);
        request.setAttribute("selectedItemList", selectedItemList);
        request.setAttribute("productOptionIdList", productOptionIdList);
        if(selectedItemList.isEmpty()){
            doGet(request, response);
            return;
        }
        request.getRequestDispatcher("customerView/checkout.jsp").forward(request, response);
        
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
