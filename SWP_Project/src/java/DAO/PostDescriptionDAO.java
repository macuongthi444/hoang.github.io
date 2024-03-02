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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoang
 */
public class PostDescriptionDAO extends DBContext {

    public static final PostDescriptionDAO INSTANCE = new PostDescriptionDAO();
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<PostDescription> getPostDescriptionByPostId(int id) {
        List<PostDescription> list = new ArrayList<>();
        try {
            String sql = "select * from PostDescription where postId=?";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
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

        } catch (Exception e) {

        }
        return list;
    }
    public Post getPostById(int id) {

        try {
            String sql = "select * from Post where postId=?";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
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

        } catch (Exception e) {

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
