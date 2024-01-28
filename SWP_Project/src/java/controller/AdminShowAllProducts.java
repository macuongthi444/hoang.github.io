/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.ProductDAO;
import Model.Image;
import Model.Product;
import Model.ProductOption;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author nguye
 */
public class AdminShowAllProducts extends HttpServlet {

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
        doGet(request, response);
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AdminShowAllProduct</title>");  
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AdminShowAllProduct at " + request.getContextPath () + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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

        request.setAttribute("productMap", productMap);
        request.setAttribute("productKey", productKey);
        request.setAttribute("productValue", productValue);

        if (request.getSession().getAttribute("deleteSuccess") != null) {
            request.setAttribute("deleteSuccess", "deleteSuccess");
            request.getSession().removeAttribute("deleteSuccess");
        }
        if (request.getSession().getAttribute("updateSuccess") != null) {
            request.setAttribute("updateSuccess", "updateSuccess");
            request.getSession().removeAttribute("updateSuccess");
        }
//        for (Product product : productMap.keySet()) {
//            System.out.println(product);
//            HashMap<ProductOption, List<Image>> map = productMap.get(product);
//            for (Map.Entry<ProductOption, List<Image>> entry : map.entrySet()) {
//                System.out.println("  " + entry.getKey());
//                System.out.println("    " + entry.getValue());
//            }
//        }
//        if(request.getSession().getAttribute("addProductOption") != null){
//            String productId = request.getSession().getAttribute("productId") + "";
//            if(productId != null && productId.matches("\\d+")){
//                System.out.println(productId);
//            }
//        }
        request.getRequestDispatcher("adminView/admin-show-all-products.jsp").forward(request, response);
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
//        processRequest(request, response);

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
