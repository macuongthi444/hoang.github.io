/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.customer;

import DAO.CartItemDAO;
import DAO.ContactDAO;
import DAO.UserDao;
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
import jakarta.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;
import util.Util;

/**
 *
 * @author nguye
 */
@WebServlet(name="Contact", urlPatterns={"/contact"})
public class Contact extends HttpServlet {
   
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
            out.println("<title>Servlet Contact</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Contact at " + request.getContextPath () + "</h1>");
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
        HttpSession session = request.getSession();
//        Account account = (Account)session.getAttribute("account");
        Account account = UserDao.INSTANCE.getAccountById(2);
        AccountProfile accountProfile = UserDao.INSTANCE.getAccountProfileById(account.getId());
        List<Communications> communicationsList = CartItemDAO.INSTANCE.getCommunicationsListByAccountId(account.getId());
//        List<Integer> list = new ArrayList<>();
//        System.out.println(list.stream().map(Integer::intValue).collect(Collectors.toList()));
        request.setAttribute("phoneNumberList", communicationsList.stream().map(Communications::getPhoneNumber).collect(Collectors.toList()));
        request.setAttribute("profile", accountProfile);
        request.getRequestDispatcher("customerView/contact.jsp").forward(request, response);
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
        int contactId = Util.generateId("contactId", "Contact");
        String[] images = request.getParameterValues("image");
        String email = request.getParameter("email").trim();
        String phoneNumber = request.getParameter("phoneNumber").trim();
        String content = request.getParameter("content").trim();
//        System.out.println(contactId + " " + account.getId() + " " + email + " " + phoneNumber + " " + content);
        try {
            ContactDAO.INSTANCE.insertContact(contactId, account.getId(), email, phoneNumber, content, new Timestamp(Calendar.getInstance().getTimeInMillis()));
            if(!images[0].equals("")){
                for (String image : images) {
                    ContactDAO.INSTANCE.insertContactImage(contactId, image);
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return;
        }

        doGet(request, response);
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
