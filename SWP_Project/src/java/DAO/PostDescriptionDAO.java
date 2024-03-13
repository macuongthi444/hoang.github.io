/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Post;
import Model.PostDescription;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoang
 */
public class PostDescriptionDAO extends DBContext {

    public static final PostDescriptionDAO INSTANCE = new PostDescriptionDAO();

    public List<PostDescription> getPostDescriptionByPostId(int id) {
        List<PostDescription> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from PostDescription where postId=?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {

               list.add( new PostDescription(
                        rs.getInt(1),
                        PostDAO.INSTANCE.getPostById(rs.getInt("postId")),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                ));
               
            }

        } catch (SQLException e) {
            System.out.println("Error at getPostDescriptionByPostId " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
        return list;
    }
    public Post getPostById(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Post where postId=?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {

                Post post = new Post(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),                     
                        rs.getDate(4),
                        rs.getDate(5),
                        PostDAO.INSTANCE.getPostTypeById(rs.getInt("postTypeID")),
                        UserDao.INSTANCE.getAccountById(rs.getInt("postByUserMarketing")),
                        CouponDAO.INSTANCE.getCouponByID(rs.getInt("couponId"))
                );
                return post;
            }

        } catch (SQLException e) {
            System.out.println("Error at getPostById " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }

    public static void main(String[] args) {
        PostDescriptionDAO dao = new PostDescriptionDAO();
        List<PostDescription> post = dao.getPostDescriptionByPostId(9);
        for (PostDescription postDescription : post) {
             System.out.println(postDescription.getPostTitleDescription());
        }
       

        

    }
}
