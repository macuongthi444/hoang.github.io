/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.CouponDAO;
import Model.Coupon;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author vinhp
 */
@WebServlet(name = "UpdateCoupon", urlPatterns = {"/updateCoupon"})
public class UpdateCoupon extends HttpServlet {

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
            out.println("<title>Servlet UpdateCoupon</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCoupon at " + request.getContextPath() + "</h1>");
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
        String cidstr = request.getParameter("cid");
        int couponId = Integer.parseInt(cidstr);
        CouponDAO c = new CouponDAO();
        Coupon coupon = c.getCouponByID(couponId);
        request.setAttribute("coupon", coupon);
        request.getRequestDispatcher("adminView/Coupon/UpdateCoupon.jsp").include(request, response);
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
        CouponDAO c = new CouponDAO();
        try {
            String couponIDstr = request.getParameter("cid");
            int couponId = Integer.parseInt(couponIDstr);
            String discountRateStr = request.getParameter("discountRate");
            double discountRate = Double.parseDouble(discountRateStr);
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
                Coupon coupon = c.getCouponByID(couponId);
                request.setAttribute("coupon", coupon);
                request.getRequestDispatcher("adminView/Coupon/UpdateCoupon.jsp").forward(request, response);
            }
            Date startDate = Date.valueOf(startDateStr);
            Date endDate = Date.valueOf(endDateStr);
            System.out.println(startDate + " " + endDate);
            System.out.println(discountRate);

            String[] isUsedValues = request.getParameterValues("isUsed");

            // Kiểm tra xem checkbox có được chọn hay không
            boolean isUsed = isUsedValues != null && isUsedValues.length > 0;
            System.out.println(isUsed);
            c.updateCoupon(couponId, discountRate, startDate, endDate, isUsed, null);

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid discount rate format(0->1)!");
            // Gửi thông báo lỗi về addCoupon.jsp
            request.getRequestDispatcher("adminView/Coupon/UpdateCoupon.jsp").forward(request, response);
//        } catch (ParseException e) {
//            request.setAttribute("error", "Invalid date format(yyyy-MM-dd).");
//            // Gửi thông báo lỗi về addCoupon.jsp
//            request.getRequestDispatcher("adminView/AddCoupon.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred.");
            System.out.println(e);
            request.getRequestDispatcher("adminView/Coupon/UpdateCoupon.jsp").forward(request, response);
        }
        response.sendRedirect("couponList");

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
