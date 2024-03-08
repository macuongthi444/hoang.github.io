/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.customer;

import DAO.CartItemDAO;
import DAO.OrderDAO;
import DAO.PaymentDAO;
import DAO.ProductDAO;
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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
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
            String[] productOptionIds = request.getParameterValues("productOptionSelected");
            html += "<script tyle=\"text/javascript\">";
            for (String productOptionId : productOptionIds) {
                html += "sessionStorage.removeItem(" + productOptionId + ");";
            }
            String homeUrl = "/SWP_Project/home";
            html += "window.location.replace(\"" + homeUrl + "\");";
//            html += "alert('Order success');";
            request.getSession().setAttribute("checkoutSuccess", "checkoutSuccess");
            html += " </script>\n";
            out.print(html);
            out.println("</body>");
            out.println("</html>");
        }
//        response.sendRedirect("/SWP_Project/Home.jsp");
        
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
                if(!CartItemDAO.INSTANCE.checkIfCartItemIsExist(account.getId(), Integer.parseInt(productOptionsId[0]))){
                    response.sendRedirect("/SWP_Project/CartServlet");
                    return;
                }
                List<ProductOption> productOptions = new ArrayList<>();
                for (String productOption : productOptionsId) {
                    productOptions.add(ProductDAO.INSTANCE.getProductOptionById(Integer.parseInt(productOption)));
                }
                int orderId = util.Util.generateId("orderId", "Order");
                int communicationsId = Integer.parseInt(request.getParameter("communications"));
                int paymentMethodId = Integer.parseInt(request.getParameter("paymentMethodId"));
                double moneyAmount = Double.parseDouble(request.getParameter("moneyAmount"));
                Timestamp timestamp = new Timestamp(Calendar.getInstance().getTimeInMillis());

                    // insert order
                OrderDAO.INSTANCE.insertOrder(orderId, account.getId(), timestamp, communicationsId);
//                    // insert order status
                OrderDAO.INSTANCE.insertOrderStatus(orderId, 1, timestamp);
                for (String string : productOptionsId) {
                    int productOptionId = Integer.parseInt(string);
                    
                    productOptions.add(ProductDAO.INSTANCE.getProductOptionById(productOptionId));
                    
                    ProductOption productOption = ProductDAO.INSTANCE.getProductOptionById(productOptionId);
                    double price = Double.parseDouble(request.getParameter("price" + productOptionId));
                    int quantity = Integer.parseInt(request.getParameter("quantity" + productOptionId));
                    CartItemDAO.INSTANCE.deleteCartItem(account.getId(), productOptionId);
                    OrderDAO.INSTANCE.insertOrderInfo(orderId, productOptionId, price, quantity);
                    ProductDAO.INSTANCE.updateProductOption(productOptionId, productOption.getProductId(), productOption.getHardwareMemoryId(), 
                            productOption.getRamMemoryId(), productOption.getColorId(), productOption.getScreenSizeId(), productOption.getResolutionId(), 
                            productOption.getGraphicCardId(), productOption.getPrice(),
                            productOption.getNumberInStock() - quantity, productOption.getQuantitySold() + quantity);
                }
                if(paymentMethodId == 1){
                    PaymentDAO.INSTANCE.insertPayment(orderId, null, 0.0, paymentMethodId);
                }
                else if(paymentMethodId == 2){
                    PaymentDAO.INSTANCE.insertPayment(orderId, new Timestamp(Calendar.getInstance().getTimeInMillis()), moneyAmount, paymentMethodId);
                }

                request.setAttribute("productOptionSelected", productOptionsId);
                request.setAttribute("productOptions", productOptions);
                request.setAttribute("orderId", orderId);
                request.getRequestDispatcher("/ProcessAfterCheckout").forward(request, response);
//                processRequest(request, response);
                return;
//                response.sendRedirect("customerView/CheckoutSuccess");
            } catch (NumberFormatException e) {
                System.out.println(e.getMessage());
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
