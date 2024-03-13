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
       
if (request.getSession().getAttribute("searchMap") != null) {
            String sql = request.getSession().getAttribute("searchingSql") + "";
            List<String> searchValue = (List<String>) request.getSession().getAttribute("searchValue");
//            HashMap<String, List<String>> searchMap = (HashMap)request.getSession().getAttribute("searchMap");
            request.getSession().setAttribute("productOptionListAfterSearching", ProductDAO.INSTANCE.getProductOptionListAfterSearching(sql, searchValue));
        }

        HashMap<Integer, List<ProductOption>> productMap = new HashMap<>();
//        List<Product> productList = new ArrayList<>();
//        List<List<ProductOption>> productValue = new ArrayList<>();
        if (request.getSession().getAttribute("productOptionListAfterSearching") == null) {
            request.getSession().setAttribute("productOptionListAfterSearching", ProductDAO.INSTANCE.getProductOptionList());
        }
        for (ProductOption productOption : (List<ProductOption>) request.getSession().getAttribute("productOptionListAfterSearching")) {
//            HashMap<ProductOption, List<Image>> poImageMap = new HashMap<>();
//            List<ProductOption> productOptionList = ProductDAO.INSTANCE.getProductOptionByProductId(product.getProductId());
//            for (ProductOption productOption : productOptionList) {
//                poImageMap.put(productOption, ProductDAO.INSTANCE.getImagesByProductOptionId(productOption.getProductOptionId()));
//            }
//            productValue.add(productOptionList);
//            Product product = ProductDAO.INSTANCE.getProductByProductOptionId(productOption.getProductOptionId());
//            if(!productList.contains(product)){
//                productList.add(product);
//            }
            List<ProductOption> list;
            if (productMap.containsKey(productOption.getProductId())) {
                list = productMap.get(productOption.getProductId());
            } else {
                list = new ArrayList<>();
            }
            list.add(productOption);
            productMap.put(productOption.getProductId(), list);
        }
        List<Integer> productList = new ArrayList<>(productMap.keySet());
//        productList.sort((o1, o2) -> {return o1.getProductId() - o2.getProductId();});
        productList.sort((o1, o2) -> {
            return o1 - o2;
        });
        request.setAttribute("productList", productList);
//        List<Product>productKey = new ArrayList<>(productMap.keySet());
//        productKey.sort((o1, o2) -> {
//            return o1.getProductId() - o2.getProductId();
//        });

//        for (List<ProductOption> list : productValue) {
//            list.sort((o1, o2) -> {return o1.getProductOptionId() - o2.getProductOptionId();});
//        }
        request.setAttribute("productMap", productMap);
//        request.setAttribute("productKey", productKey); 
//        request.setAttribute("productValue", productValue);

        if (request.getSession().getAttribute("deleteSuccess") != null) {
            request.setAttribute("deleteSuccess", "deleteSuccess");
            request.getSession().removeAttribute("deleteSuccess");
        }
        if (request.getSession().getAttribute("updateSuccess") != null) {
            request.setAttribute("updateSuccess", "updateSuccess");
            request.getSession().removeAttribute("updateSuccess");
        }
//        for (int product : productMap.keySet()) {
//            System.out.println(product);
////            for (Map.Entry<ProductOption, List<Image>> entry : map.entrySet()) {
//            for(ProductOption list: productMap.get(product)){
//                System.out.println("  " + list);
//            }
//        }
//        if(request.getSession().getAttribute("addProductOption") != null){
//            String productId = request.getSession().getAttribute("productId") + "";
//            if(productId != null && productId.matches("\\d+")){
//                System.out.println(productId);
//            }
//        }
        String cid = request.getParameter("cid");
        HttpSession session = request.getSession();
        if (cid != null) {
            session.setAttribute("cid", cid);
        }
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
