/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Post;
import Model.PostProduct;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author hoang
 */
public class PostProductDAO extends DBContext {
    public static final PostProductDAO INSTANCE = new PostProductDAO();
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public PostProduct getPostProductByPostId(int id) {

        try {
            String sql = "select * from PostProduct where postId=?";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {

                PostProduct postProduct = new PostProduct(rs.getInt(1),                       
                        PostDAO.INSTANCE.getPostById(rs.getInt("postProductId")),
                        ProductDAO.INSTANCE.getProductOptionById(rs.getInt("productOptionId"))
                );
                return postProduct;
            }

        } catch (SQLException e) {
            System.out.println("Error at getPostProductByPostId " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }
    public static void main(String[] args) {
        PostProductDAO dao = new PostProductDAO();
        PostProduct p = dao.getPostProductByPostId(10);
        System.out.println(p);
    }
}
