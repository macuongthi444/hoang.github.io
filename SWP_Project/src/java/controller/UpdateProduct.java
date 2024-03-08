/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.ProductDAO;
import Model.ProductOption;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author zenzen1
 */
public class UpdateProduct extends HttpServlet {
   
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
            out.println("<title>Servlet UpdateProduct</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProduct at " + request.getContextPath () + "</h1>");
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
//        request.setAttribute("ProductDAO.INSTANCE", ProductDAO.INSTANCE);
//        System.out.println(ProductDAO.INSTANCE.getProductOptionList());
//        request.setAttribute("productOptionList", ProductDAO.INSTANCE.getProductOptionList());
//        request.setAttribute("productList", ProductDAO.INSTANCE.getProductList());
        int productOptionId;
        try {
            productOptionId = Integer.parseInt(request.getParameter("productOptionId"));
        } catch (NumberFormatException e) {
            productOptionId = 0;
        }
        ProductOption productOption = ProductDAO.INSTANCE.getProductOptionById(productOptionId);
        request.setAttribute("product", ProductDAO.INSTANCE.getProductByProductOptionId(productOptionId));
        request.setAttribute("productOption", productOption);
        request.setAttribute("productOptionList", ProductDAO.INSTANCE.getOtherProductOptionByProductId(productOptionId));
        request.setAttribute("imageList", ProductDAO.INSTANCE.getImageListByProductOptionId(productOptionId));
        request.setAttribute("brandList", ProductDAO.INSTANCE.getBrandList());
        request.setAttribute("ramMemoryList", ProductDAO.INSTANCE.getRamMemoryList());
        request.setAttribute("hardwareMemoryList", ProductDAO.INSTANCE.getHardwareMemoryList());
        System.out.println(ProductDAO.INSTANCE.getHardwareMemoryList());
        request.getRequestDispatcher("adminView/update-product.jsp").forward(request, response);
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
            System.out.println("Update product");
            String productName = request.getParameter("productName");
//            int category = Integer.parseInt(request.getParameter("category"));
            String productDetail = request.getParameter("productDetail");
            int productOptionId = Integer.parseInt(request.getParameter("productOptionId"));
            int brandId = Integer.parseInt(request.getParameter("brandId"));
            int hardwareMemoryId = Integer.parseInt(request.getParameter("hardwareMemoryId"));
            int ramMemoryId = Integer.parseInt(request.getParameter("ramMemoryId"));
            int colorId = Integer.parseInt(request.getParameter("colorId"));
            int screenSizeId = Integer.parseInt(request.getParameter("screenSizeId"));
            int resolutionId = Integer.parseInt(request.getParameter("resolutionId"));
            int graphicCardId = Integer.parseInt(request.getParameter("graphicCardId"));
            double productPrice = Double.parseDouble(request.getParameter("productPrice"));
            int numberInStock = Integer.parseInt(request.getParameter("numberInStock"));
            String[] images = request.getParameterValues("productImage");

            ProductDAO.INSTANCE.updateProduct(ProductDAO.INSTANCE.getProductByProductOptionId(productOptionId).getProductId(),  productName, brandId, productDetail);
            ProductDAO.INSTANCE.updateProductOption(productOptionId, ProductDAO.INSTANCE.getProductByProductOptionId(productOptionId).getProductId(), 
                    hardwareMemoryId, ramMemoryId, colorId, screenSizeId, resolutionId, graphicCardId, productPrice, numberInStock, 0);
            
            System.out.println(brandId + " " + hardwareMemoryId + " " + ramMemoryId + " " + colorId + " " + screenSizeId + " " + graphicCardId);
            
            String imageOption = request.getParameter("imageOption");
            if(images.length != 0 && !images[0].trim().equals("")){
                if(imageOption.equalsIgnoreCase("overrideImage")){
                    ProductDAO.INSTANCE.deleteImageByProductOptionId(productOptionId);
                }
                for (String image : images) {
                    if(!image.trim().equals("")){
                        ProductDAO.INSTANCE.insertImage(image, productOptionId);
                    }
                }
            }
            request.getSession().setAttribute("updateSuccess", "updateSuccess");
            request.getSession().removeAttribute("productOptionListAfterSearching");
        response.sendRedirect("/SWP_Project/AdminShowAllProducts");
//        request.getRequestDispatcher("adminView/admin-show-all-products.jsp").forward(request, response);
//        System.out.println(images + " " + productOptionId);
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
