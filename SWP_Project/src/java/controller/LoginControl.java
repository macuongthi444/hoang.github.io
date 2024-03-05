/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.DAOAccount;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author MH
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

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
        String username = request.getParameter("dzName");
        String password = request.getParameter("dzEmail");
        DAOAccount dao = new DAOAccount();
        Account acc = dao.login(username, password);
        HttpSession session = request.getSession();
        System.out.println(acc);
        if (acc == null) {
            request.setAttribute("message", "Wrong user or pass");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        } else {
            if (acc.getRole().getRoleName().equalsIgnoreCase("Admin")) {
                if (acc.getAccountStatus().getAccountStatusId() == 6) {
                    request.setAttribute("messageban", "You Ban");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/SWP_Project/ChartControll");
                    session.setAttribute("accl", acc);
                }

            } else if (acc.getRole().getRoleName().equalsIgnoreCase("Customer")) {
                if (acc.getAccountStatus().getAccountStatusId() == 6) {
                    request.setAttribute("messageban", "You Ban");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/SWP_Project/home");
                    session.setAttribute("accl", acc);
                }

            } else if (acc.getRole().getRoleName().equalsIgnoreCase("Marketing")) {
                if (acc.getAccountStatus().getAccountStatusId() == 6) {
                    request.setAttribute("messageban", "You Ban");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    response.sendRedirect("PostList");
                    session.setAttribute("accl", acc);
                }

            }
            session.setAttribute("account", acc);

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
//        processRequest(request, response);
        request.getRequestDispatcher("homepageView/login.jsp").forward(request, response);
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
