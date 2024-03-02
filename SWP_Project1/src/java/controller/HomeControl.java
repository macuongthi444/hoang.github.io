/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.PostDAO;
import DAO.ProductDAO;
import Model.Post;
import Model.PostType;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO p = new ProductDAO();
        PostDAO dao = new PostDAO();
        List<Post> post = dao.getPostTop3();
        
        HttpSession session = request.getSession();
        ////////////////////////////////////////////////
        Integer accountID = (Integer) session.getAttribute("accountID");
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        List<ProductWithImage> productList = p.getProductListWithImage();
        List<ProductWithImage> newestList = p.NewestProductWithImage();
        request.setAttribute("productList", productList);
        request.setAttribute("newestList", newestList);
        request.setAttribute("post", post);
        ////////////////////////////////////////////////
        request.getRequestDispatcher("Home.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}

