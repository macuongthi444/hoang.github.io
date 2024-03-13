/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.DeliveryDAO;
import DAO.OrderDAO;
import Model.Order;
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
 * @author vinhp
 */
@WebServlet(name = "GiveOrder", urlPatterns = {"/GiveOrder"})
public class GiveOrder extends HttpServlet {

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
            out.println("<title>Servlet GiveOrder</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GiveOrder at " + request.getContextPath() + "</h1>");
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
        String deliveryManID = request.getParameter("deliveryManId");
        HttpSession session = request.getSession();
        session.setAttribute("deliveryManID", deliveryManID);
        OrderDAO o = new OrderDAO();
        List<Order> orderList = o.getWaittingOrder();
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("adminView/GiveOrder.jsp").forward(request, response);
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
        DeliveryDAO d = new DeliveryDAO();
        HttpSession session = request.getSession();
        String deliveryManIDStr = (String) session.getAttribute("deliveryManID");
        int deliveryManID = Integer.parseInt(deliveryManIDStr);
        String[] orderCheckbox = request.getParameterValues("selectedOrder");
        int orderId = 0;
        for (String string : orderCheckbox) {
            orderId = Integer.parseInt(string);
            d.giveOrderToDeliveryMan(deliveryManID, orderId);
            System.out.println(string);
        }
        response.sendRedirect("DeliveryManList");
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
