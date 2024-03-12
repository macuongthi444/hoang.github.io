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
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author nguye
 */
public class AdminShowAllProducts extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
//        request.setAttribute("productOptionList", ProductDAO.INSTANCE.getProductOptionList());
//        HashMap<Product, HashMap<ProductOption, List<Image>>> productMap = new HashMap<>();
        
//        if(request.getSession().getAttribute("searchMap") != null){
//            System.out.println(request.getSession().getAttribute("searchMap in get"));
//            doPost(request, response);
//            return;
//        }
        if(request.getSession().getAttribute("searchMap") != null){
            String sql = request.getSession().getAttribute("searchingSql") + "";
            List<String> searchValue = (List<String>)request.getSession().getAttribute("searchValue");
//            HashMap<String, List<String>> searchMap = (HashMap)request.getSession().getAttribute("searchMap");
            request.getSession().setAttribute("productOptionListAfterSearching", ProductDAO.INSTANCE.getProductOptionListAfterSearching(sql, searchValue));
        }

        HashMap<Integer, List<ProductOption>> productMap = new HashMap<>();
//        List<Product> productList = new ArrayList<>();
//        List<List<ProductOption>> productValue = new ArrayList<>();
        if(request.getSession().getAttribute("productOptionListAfterSearching") == null){
            request.getSession().setAttribute("productOptionListAfterSearching", ProductDAO.INSTANCE.getProductOptionList());
        }
        for (ProductOption productOption : (List<ProductOption>)request.getSession().getAttribute("productOptionListAfterSearching") ) {
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
            if(productMap.containsKey(productOption.getProductId())){
                list = productMap.get(productOption.getProductId());
            }
            else{
                list = new ArrayList<>();
            }
            list.add(productOption);
            productMap.put(productOption.getProductId(), list);
        }
        List<Integer> productList = new ArrayList<>(productMap.keySet()); 
//        productList.sort((o1, o2) -> {return o1.getProductId() - o2.getProductId();});
        productList.sort((o1, o2) -> {return o1 - o2;});
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
        
        if(request.getSession().getAttribute("deleteSuccess") != null){
            request.setAttribute("deleteSuccess", "deleteSuccess");
            request.getSession().removeAttribute("deleteSuccess");
        }
        if(request.getSession().getAttribute("updateSuccess") != null){
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
        request.getRequestDispatcher("adminView/admin-show-all-products.jsp").forward(request, response);
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
//        doGet(request, response);
        processSearch(request, response);
        response.sendRedirect("/SWP_Project/AdminShowAllProducts");
        
    }
    private void processSearch(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        if(request.getParameter("searchSubmit") != null && request.getParameter("searchSubmit").equals("Clear Option")){
            request.getSession().removeAttribute("productOptionListAfterSearching");
            request.getSession().removeAttribute("searchMap");
            return;
        }
        HashMap<String, List<String>> searchMap = new HashMap<>();
        List<String> searchOption = Arrays.asList(request.getParameterValues("search")==null?(new String[]{}):request.getParameterValues("search"));
        if(searchOption.isEmpty()) {
            request.getSession().removeAttribute("productOptionListAfterSearching");
            request.getSession().removeAttribute("searchMap");
            return;
        }
        System.out.println(searchOption);
        List<String> searchValue = new ArrayList<>();
        String sql = "select * from product_option where 1=1 ";
        for (String string : searchOption) {
            String value = request.getParameter(string);
            searchMap.put(string, Arrays.asList(new String[]{value}));
            switch (string) {
                case "productName":
                    sql += (" and productId in (select productId from product where productName" + " like concat(N'%', ?, '%')) ");
                    //                if(value.equals("")){
//                }
                    searchMap.put(string, Arrays.asList(new String[]{value}));
                    searchValue.add(value);
                    break;
//                case "categoryId":
//                    sql += " and productId in (select productId from product where categoryId = ?) ";
//                    searchMap.put(string, Arrays.asList(new String[]{value}));
//                    searchValue.add(value);
//                    break;
                case "brandId":{
                    sql += " and productId in (select productId from product where brandId = ?)";
                    String brandId = request.getParameter(string);
                    searchMap.put(string, Arrays.asList(new String[]{brandId}));
                    searchValue.add(brandId);
                    break;
                }
                case "price":{
                    sql += " and price between ? and ? ";
                    String begin = request.getParameter(string + "Begin");
                    String end = request.getParameter(string + "End");
                    searchMap.put(string, Arrays.asList(new String[]{begin, end}));
                    searchValue.add(begin);
                    searchValue.add(end);
                    break;
                }
                case "numberInStock":{
                    sql += " and numberInStock between ? and ? ";
                    String begin = request.getParameter(string + "Begin");
                    String end = request.getParameter(string + "End");
                    searchMap.put(string, Arrays.asList(new String[]{begin, end}));
                    searchValue.add(begin);
                    searchValue.add(end);
                    break;
                }
                case "quantitySold":{
                    sql += " and quantitySold between ? and ? ";
                    String begin = request.getParameter(string + "Begin");
                    String end = request.getParameter(string + "End");
                    searchMap.put(string, Arrays.asList(new String[]{begin, end}));
                    searchValue.add(begin);
                    searchValue.add(end);
                    break;
                }
                default:
                    sql += " and " + string + " = ? ";
                    searchMap.put(string, Arrays.asList(new String[]{value}));
                    searchValue.add(value);
                    break;
            }
        }
        System.out.println("searchMap " + searchMap);
        request.getSession().setAttribute("searchMap", searchMap);
        request.getSession().setAttribute("searchingSql", sql);
        request.getSession().setAttribute("searchValue", searchValue);
        request.getSession().setAttribute("productOptionListAfterSearching", ProductDAO.INSTANCE.getProductOptionListAfterSearching(sql, searchValue));
        
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
