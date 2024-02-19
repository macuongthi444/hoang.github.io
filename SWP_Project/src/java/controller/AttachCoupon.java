/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.CouponDAO;
import DAO.ProductDAO;
import Model.Image;
import Model.Product;
import Model.ProductOption;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author vinhp
 */
@WebServlet(name = "AttachCoupon", urlPatterns = {"/attachCoupon"})
public class AttachCoupon extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
//        request.setAttribute("ProductDAO", ProductDAO.INSTANCE);

        request.setAttribute("productOptionList", ProductDAO.INSTANCE.getProductOptionList());
        request.setAttribute("productList", ProductDAO.INSTANCE.getProductList());
        HashMap<Product, HashMap<ProductOption, List<Image>>> productMap = new HashMap<>();
        List<List<ProductOption>> productValue = new ArrayList<>();
        for (Product product : ProductDAO.INSTANCE.getProductList()) {
            HashMap<ProductOption, List<Image>> poImageMap = new HashMap<>();
            List<ProductOption> productOptionList = ProductDAO.INSTANCE.getProductOptionByProductId(product.getProductId());
            for (ProductOption productOption : productOptionList) {
                poImageMap.put(productOption, ProductDAO.INSTANCE.getImagesByProductOptionId(productOption.getProductOptionId()));
            }
            productValue.add(productOptionList);
            productMap.put(product, poImageMap);
        }
        List<Product> productKey = new ArrayList<>(productMap.keySet());
        productKey.sort((o1, o2) -> {
            return o1.getProductId() - o2.getProductId();
        });

        for (List<ProductOption> list : productValue) {
            list.sort((o1, o2) -> {
                return o1.getProductOptionId() - o2.getProductOptionId();
            });
        }
        String cid = request.getParameter("cid");
        HttpSession session = request.getSession();
        if (cid != null) {
            session.setAttribute("cid", cid);
        }

        request.setAttribute("productMap", productMap);
        request.setAttribute("productKey", productKey);
        request.setAttribute("productValue", productValue);
        request.getRequestDispatcher("adminView/AttachCoupon.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        CouponDAO c = new CouponDAO();
        String cidStr = (String) session.getAttribute("cid");
        if (cidStr != null && cidStr.matches("\\d+")) {
            int cid = Integer.parseInt(cidStr);
            int poid = Integer.parseInt(request.getParameter("poid"));
            if (c.checkProductOptionIdExisted(poid)) {
                int cid2 = c.getCouponIdByProductOptionId(poid);
                c.swichProductOptionId(poid, cid2, cid);
                System.out.println(poid+" "+cid2+" "+cid);
                response.sendRedirect("couponList");
            } else {
                c.AttachProductID(poid, cid);
                response.sendRedirect("couponList");
            }
        } else {
            response.sendRedirect("couponList");
        }
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
