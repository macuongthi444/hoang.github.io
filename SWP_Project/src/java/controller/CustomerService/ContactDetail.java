/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.CustomerService;

import DAO.ContactDAO;
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

/**
 *
 * @author nguye
 */
@WebServlet(name="ContactDetail", urlPatterns={"/ContactDetail"})

public class ContactDetail extends HttpServlet {
   
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
            out.println("<title>Servlet ContactDetail</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ContactDetail at " + request.getContextPath () + "</h1>");
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
        int contactId = -1;
        try {
            contactId = Integer.parseInt(request.getParameter("contactId"));
        } catch (NumberFormatException e) {
        }
        if(contactId == -1){
            request.setAttribute("contactIdNotFound", "contactId not found");
            request.getRequestDispatcher("/ContactList").forward(request, response);
            return;
        }
        
        request.setAttribute("contact", ContactDAO.INSTANCE.getContactByContactId(contactId));
        request.getRequestDispatcher("customerServiceView/ContactDetail.jsp").forward(request, response);
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
        String replyContent = request.getParameter("replyContent").trim();
        if(replyContent.equals("")){
//            request.getRequestDispatcher("ContactDetail").forward(request, response);
            doGet(request, response);
            return;
        }
        try {
            int contactId = Integer.parseInt(request.getParameter("contactId"));
            Contact contact = ContactDAO.INSTANCE.getContactByContactId(contactId);
            int replyContact = util.Util.generateId("replyContactId", "reply_contact");
            
            ContactDAO.INSTANCE.insertReplyContact(replyContact, replyContent, new Timestamp(Calendar.getInstance().getTimeInMillis()), contactId);
            String[] images = request.getParameterValues("images");
            if(!images[0].equals("")){
                for (String string : images) {
                    ContactDAO.INSTANCE.insertReplyContactImage(replyContact, string);
                }
            }
            ContactDAO.INSTANCE.updateContact(contactId, contact.getAccount().getId(), contact.getEmail(), contact.getPhoneNumber(), contact.getContent(), contact.getContactDate(), true);
            
            request.setAttribute("replyContact", ContactDAO.INSTANCE.getReplyContactById(contactId));
            request.setAttribute("replySuccess", "Reply success");
            request.getRequestDispatcher("/ContactList").forward(request, response);
            return;
        } catch (NumberFormatException e) {
        }
        request.setAttribute("contact", ContactDAO.INSTANCE.getContactByContactId(Integer.parseInt(request.getParameter("contactId"))));
        request.getRequestDispatcher("customerServiceView/ContactDetail.jsp").forward(request, response);
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
