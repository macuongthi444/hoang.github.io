    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ControllPost;

import DAO.CouponDAO;
import DAO.PostDAO;
import DAO.PostDescriptionDAO;
import Model.Coupon;
import Model.Post;
import Model.PostDescription;
import Model.PostType;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author hoang
 */
@WebServlet(name = "PostDetail", urlPatterns = {"/PostDetail"})
public class PostDetail extends HttpServlet {

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
        PrintWriter out = response.getWriter();
  
        String postId = request.getParameter("postId");
        int postId1 = Integer.parseInt(postId);
        PostDescriptionDAO dao = new PostDescriptionDAO();
        PostDAO dao1 = new PostDAO();
        Post postById = dao1.getPostById(postId1);
        List<PostDescription> pById = dao.getPostDescriptionByPostId(postId1);
        List<PostType> posttype = dao1.getAllPostType();
        CouponDAO dao11 = new CouponDAO();
        List<Coupon> coupon = dao11.getAllCoupon();
        
//        for (PostDescription postDescription : pById) {
//                   
//
//        }
//        
//        String postDescriptionId = request.getParameter("postDescriptionId");
//        int idD = Integer.parseInt(postDescriptionId);
//        PostDescription pd = dao.getPostDescriptionById(idD);
//        request.setAttribute("pd", pd);
        request.setAttribute("coupon", coupon);

        request.setAttribute("postType", posttype);
        //out.print(pById.get(5).getPostTitleDescription());
        request.setAttribute("pById", pById);
        request.setAttribute("postById", postById);
        

        request.getRequestDispatcher("adminView/PostDetail.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
