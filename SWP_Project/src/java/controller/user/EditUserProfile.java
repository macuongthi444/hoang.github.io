/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import DAO.DAOAccount;
import DAO.UserDao;
import Model.Account;
import Model.AccountProfile;

import DAO.UserDao;
import Model.Account;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author This PC
 */
@WebServlet(name = "EditUserProfile", urlPatterns = {"/edituser"})
public class EditUserProfile extends HttpServlet {

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
            out.println("<title>Servlet EditUserProfile</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditUserProfile at " + request.getContextPath() + "</h1>");
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

        int id = Integer.parseInt(request.getParameter("userid"));
        String name = request.getParameter("firstName");
        String gender1 = request.getParameter("gender");
        String birth = request.getParameter("birth");
           UserDao dao = new UserDao();
        if (name == null || name.isEmpty()) {
            // Handle validation error
            request.setAttribute("error", "Full Name cannot be empty");
             AccountProfile acc = dao.getAccountProfileById(id);

        request.setAttribute("acc", acc);
            request.getRequestDispatcher("userprofile.jsp").forward(request, response);
        }
        int gender;
        if (gender1.equalsIgnoreCase("male")) {
            gender = 1;
        } else {
            gender = 0;
        }

     
        dao.editAccountById(id, name, birth, gender);
        AccountProfile acc = dao.getAccountProfileById(id);

        request.setAttribute("acc", acc);
        request.getRequestDispatcher("userprofile.jsp").forward(request, response);
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
        int id = Integer.parseInt(request.getParameter("userid"));
        String name = request.getParameter("firstName");
        String gender1 = request.getParameter("gender");
        String birth = request.getParameter("birth");
        int gender;
        if (gender1.equalsIgnoreCase("male")) {
            gender = 1;
        } else {
            gender = 0;
        }
        if (name == null || name.isEmpty()) {
            // Handle validation error
            request.setAttribute("error", "Full Name cannot be empty");

            request.getRequestDispatcher("userprofile.jsp").forward(request, response);
        }
        UserDao dao = new UserDao();
        dao.editAccountById(id, name, birth, gender);
        AccountProfile acc = dao.getAccountProfileById(id);

        request.setAttribute("acc", acc);
        request.getRequestDispatcher("userprofile.jsp").forward(request, response);
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
