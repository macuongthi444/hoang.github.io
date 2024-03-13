/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.CouponDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

/**
 *
 * @author vinhp
 */
@WebServlet(name = "AddCouponControl", urlPatterns = {"/addCoupon"})
public class AddCouponControl extends HttpServlet {

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
            out.println("<title>Servlet AddCouponControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCouponControl at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("adminView/AddCoupon.jsp").include(request, response);
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
        try {
            String discountRateStr = request.getParameter("discountRate");
            double discountRateN = Double.parseDouble(discountRateStr);
            double discountRate = discountRateN / 100;
            if (discountRate < 0 || discountRate > 1) {
                throw new NumberFormatException();
            }
            // Chuyển đổi định dạng của startDateStr và endDateStr
            String startDateStr = request.getParameter("startDate");
            String endDateStr = request.getParameter("endDate");
            LocalDate startDate1 = LocalDate.parse(startDateStr);
            LocalDate endDate1 = LocalDate.parse(endDateStr);

            // Kiểm tra nếu startDate >= endDate
            if (startDate1.isAfter(endDate1) || startDate1.isEqual(endDate1)) {
                request.setAttribute("error", "Start Date must be < End Date !");
                doGet(request, response);
                return;
            }
            Date startDate = Date.valueOf(startDateStr);
            Date endDate = Date.valueOf(endDateStr);
            LocalDate currentDate = LocalDate.now();
            Date current1 = Date.valueOf(currentDate);
            if (endDate.before(current1)) {
                request.setAttribute("error", "End Date must > CurrentDate: " + current1);
                doGet(request, response);
                return;
            }
            String[] isUsedValues = request.getParameterValues("isUsed");

            boolean isUsed = isUsedValues != null && isUsedValues.length > 0;
            CouponDAO c = new CouponDAO();
            c.addCoupon(discountRate, startDate, endDate, isUsed, null);
            request.setAttribute("discountRate", discountRate);
            request.setAttribute("startDate", startDate);
            request.setAttribute("endDate", endDate);
            request.setAttribute("isUsed", isUsed);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid discount rate format(0->100)!");
            doGet(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred.");
            doGet(request, response);
        }

        request.setAttribute("notify", "Added coupon sucessfully");
        request.getRequestDispatcher("adminView/AddCoupon.jsp").forward(request, response);

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
