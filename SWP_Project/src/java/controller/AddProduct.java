/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;
import Model.Option;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.Session;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author nguye
 */
@WebServlet(name="AddProduct", urlPatterns={"/AddProduct"})
public class AddProduct extends HttpServlet {
   
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
            out.println("<title>Servlet AddProduct</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddProduct at " + request.getContextPath () + "</h1>");
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
//        processRequest(request, response);
        request.setAttribute("CategoryDAO.INSTANCE", CategoryDAO.INSTANCE);
        request.getRequestDispatcher("adminView/add_product.jsp").forward(request, response);
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
        addOptionSubmitProcess(request, response);
    }
    
    private void addOptionSubmitProcess(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        if(request.getParameter("clear") != null){
            request.getSession().removeAttribute("productId");
            doGet(request, response);
            return;
        }
        String productName = request.getParameter("productName");
        String categoryName = request.getParameter("productCategory");
        double price = Double.parseDouble(request.getParameter("productPrice"));
//        String optionName = request.getParameter("addOption");
        String optionDetail = request.getParameter("optionDetail");
        String[] image = request.getParameterValues("image");
        if(productName == null){
            request.setAttribute("errorMessage", "Please enter product name");
            doGet(request, response);
            return;
        }
        int productId;
        if(request.getSession().getAttribute("productId") == null){
            productId =  util.Util.generateId("productId", "product");
        }else{
            productId = (int)request.getSession().getAttribute("productId");
        }
        request.getSession().setAttribute("productId", productId);
        
        System.out.println(productId + " " + productName + " " + categoryName + " " + price + " " + optionDetail);
        Arrays.asList(image).forEach((e) -> {System.out.println(e);});
        
        Category category = ProductDAO.INSTANCE.getCategoryByName(categoryName);
        
//        if(!ProductDAO.INSTANCE.checkOptionNameIsExist(optionName)){
//            ProductDAO.INSTANCE.insertOption(optionName);
//        }
//        Option option = ProductDAO.INSTANCE.getOptionIdByName(optionName);
        
        ProductDAO.INSTANCE.insertProduct(productId, productName, category.getCategoryId(), null);
        
        ProductDAO.INSTANCE.insertProductOption(productId, optionDetail, price, ProductDAO.INSTANCE.getProductNumberInStock(), 
                ProductDAO.INSTANCE.getProductQuantitySold(productId, optionDetail));
        
        for (String imageText : image) {
            ProductDAO.INSTANCE.insertImage(imageText, 
                ProductDAO.INSTANCE.getProductOptionId(productId, optionDetail));
        }
        if(request.getParameter("submit") != null){
            request.setAttribute("productName", productName);
            request.setAttribute("categoryName", categoryName);
            request.setAttribute("price", price);
//            request.setAttribute("optionName", optionName);
            request.setAttribute("optionDetail", optionDetail);
            doGet(request, response);
        }
        System.out.println(request.getSession().getAttribute("productId"));
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
