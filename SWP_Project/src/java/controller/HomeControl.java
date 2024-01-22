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
        request.setAttribute("productList", productList);
        ////////////////////////////////////////////////
        try {
            String pid = request.getParameter("pid");
            int amount = Integer.parseInt(request.getParameter("amount"));
            if (pid == null || amount == 0) {
                request.getRequestDispatcher("Home.jsp").include(request, response);
            } else {
                int pid2 = Integer.parseInt(pid);
                if (username != null) {
                    hashCart = p.getCart(accountID);
                }
                if (hashCart.containsKey(pid2)) {
                    hashCart.put(pid2, (hashCart.get(pid2) + amount));
                    p.updateCart(accountID, pid2, hashCart.get(pid2));
                    session.setAttribute("hashCart", hashCart);
                } else {
                    hashCart.put(pid2, amount);
                    p.addToCart(accountID, pid2, hashCart.get(pid2));
                    session.setAttribute("hashCart", hashCart);
                }
                request.getRequestDispatcher("Home.jsp").include(request, response);
            }
        } catch (Exception e) {
            request.getRequestDispatcher("Home.jsp").include(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
