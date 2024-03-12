/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.customer;

import DAO.ContactDAO;
import Model.Account;
import Model.Contact;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.util.Calendar;
import util.Util;

/**
 *
 * @author nguye
 */
@WebServlet(name="UpdateContact", urlPatterns={"/UpdateContact"})
public class UpdateContact extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet UpdateContact</title>");  
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet UpdateContact at " + request.getContextPath () + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        try {
            int contactId = Integer.parseInt(request.getParameter("contactId"));
            System.out.println(contactId);
            Contact contact = ContactDAO.INSTANCE.getContactByContactId(contactId);
            request.setAttribute("contact", contact);
            request.setAttribute("action", "update");
            request.getRequestDispatcher("/contact").forward(request, response);
        } catch (NumberFormatException e) {
            request.getRequestDispatcher("/ViewSentContact").forward(request, response);
        }
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
        Account account = (Account)request.getSession().getAttribute("account");
        int contactId = Integer.parseInt(request.getParameter("contactId"));
        String[] images = request.getParameterValues("image");
        String email = request.getParameter("email").trim();
        String phoneNumber = request.getParameter("phoneNumber").trim();
        String content = request.getParameter("content").trim();
        
        Contact contact = ContactDAO.INSTANCE.getContactByContactId(contactId);
        if(contact.isIsResponded()){
//            request.setAttribute("email", email);
//            request.setAttribute("phoneNumber", phoneNumber);
//            request.setAttribute("content", content);
            request.setAttribute("isRespondedError", "isRespondedError");
            doGet(request, response);
        }
//        System.out.println(contactId + " " + account.getId() + " " + email + " " + phoneNumber + " " + content);
        try {
            ContactDAO.INSTANCE.updateContact(contactId, account.getId(), email, phoneNumber, content, contact.getContactDate());
            if(images[0].equals("")){
            }
            else{
                if(request.getParameter("imageOption").equals("overrideImage")){
                    ContactDAO.INSTANCE.deleteContactImageByContactId(contactId);
                }
                for (String image : images) {
                    ContactDAO.INSTANCE.insertContactImage(contactId, image);
                }
            }
            System.out.println("Update Success");
            request.getSession().setAttribute("updateSuccess", "updateSuccess");
            response.sendRedirect("/SWP_Project/ViewSentContact");
//            request.getRequestDispatcher("/ViewSentContact").forward(request, response);
        } catch (IOException e) {
            System.out.println(e.getMessage() + " UPdate fail");
            return;
        }
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
