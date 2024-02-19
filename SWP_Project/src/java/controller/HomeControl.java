/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.ProductDAO;
import Model.Product;
import Model.ProductWithImage;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
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
public class HomeControl extends HttpServlet {

    HashMap<Integer, Integer> hashCart = new HashMap<>();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try ( PrintWriter out = response.getWriter()) {
        /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }   
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO p = new ProductDAO();
        HttpSession session = request.getSession();
        ////////////////////////////////////////////////
        Integer accountID = (Integer) session.getAttribute("accountID");
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        List<ProductWithImage> productList = p.getProductListWithImage();
        List<ProductWithImage> newestList = p.NewestProductWithImage();
        int page, numperpage = 4;
        String xpage = request.getParameter("page");
        if (xpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
        }
        int size = productList.size();
        int num = (size % 4 == 0 ? (size / 4) : ((size / 4)) + 1);//so trang
        int start, end;
        start = (page - 1) * numperpage;
        end = Math.min(page * numperpage, size);
        List<ProductWithImage> list = p.getListByPage(productList, start, end);
        request.setAttribute("num", num);
        request.setAttribute("productList", list);
        request.setAttribute("newestList", newestList);
        ////////////////////////////////////////////////
        request.getRequestDispatcher("Home.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
