/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;

import Model.Color;
import Model.GraphicCard;
import Model.HardwareMemory;
import Model.Product;
import Model.ProductWithImage;
import Model.RamMemory;
import Model.Resolution;
import Model.ScreenSize;

import Model.Product;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

import java.util.List;

/**
 *
 * @author This PC
 */
@WebServlet(name = "ListProduct", urlPatterns = {"/listproduct"})
public class ListProduct extends HttpServlet {

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
            out.println("<title>Servlet ListProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListProduct at " + request.getContextPath() + "</h1>");
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
        ProductDAO dao = new ProductDAO();

        String search = request.getParameter("search");
        String priceFrom = request.getParameter("priceFrom");
        String priceTo = request.getParameter("priceTo");
        String sortType = request.getParameter("sortType");
        String hardware = request.getParameter("hardwareMemoryId");
        String ram = request.getParameter("ramId");
        String color = request.getParameter("colorId");
        String screen = request.getParameter("screenId");
        String reso = request.getParameter("resoId");
        String card = request.getParameter("cardId");
        List<ProductWithImage> plist = dao.getListProductSearch2(search, priceFrom, priceTo, hardware, ram, color, screen, reso, card, sortType);
        List<HardwareMemory> listHardware = dao.getHardwareMemoryList();
        List<ScreenSize> listScreen = dao.getScreenSizeList();
        List<RamMemory> listRam = dao.getRamMemoryList();
        List<Color> listColor = dao.getColorList();
        List<Resolution> listReso = dao.getResolutionList();
        List<GraphicCard> listCard = dao.getGraphicCardList();
        request.setAttribute("plist", plist);
        request.setAttribute("hardwarelist", listHardware);
        request.setAttribute("ramlist", listRam);
        request.setAttribute("screenlist", listScreen);
        request.setAttribute("resolist", listReso);
        request.setAttribute("colorlist", listColor);
        request.setAttribute("cardlist", listCard);
        request.getRequestDispatcher("SearchProduct.jsp").forward(request, response);

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
        ProductDAO dao = new ProductDAO();

        String search = request.getParameter("search");
        String priceFrom = request.getParameter("priceFrom");
        String priceTo = request.getParameter("priceTo");
        String sortType = request.getParameter("sortType");
        String hardware = request.getParameter("hardwareMemoryId");
        String ram = request.getParameter("ramId");
        String color = request.getParameter("colorId");
        String screen = request.getParameter("screenId");
        String reso = request.getParameter("resoId");
        String card = request.getParameter("cardId");
        List<ProductWithImage> plist = dao.getListProductSearch2(search, priceFrom, priceTo, hardware, ram, color, screen, reso, card, sortType);
        List<HardwareMemory> listHardware = dao.getHardwareMemoryList();
        List<ScreenSize> listScreen = dao.getScreenSizeList();
        List<RamMemory> listRam = dao.getRamMemoryList();
        List<Color> listColor = dao.getColorList();
        List<Resolution> listReso = dao.getResolutionList();
        List<GraphicCard> listCard = dao.getGraphicCardList();
        request.setAttribute("plist", plist);
        request.setAttribute("hardwarelist", listHardware);
        request.setAttribute("ramlist", listRam);
        request.setAttribute("screenlist", listScreen);
        request.setAttribute("resolist", listReso);
        request.setAttribute("colorlist", listColor);
        request.setAttribute("cardlist", listCard);
        request.getRequestDispatcher("SearchProduct.jsp").forward(request, response);

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
