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

                list.add(new PostDescription(
                        rs.getInt(1),
                        PostDAO.INSTANCE.getPostById(rs.getInt("postId")),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                ));

            }

        } catch (SQLException e) {
            System.out.println("Error at getPostDescriptionByPostId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public PostDescription getPostDescriptionById(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from PostDescription where postDescriptionId=?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {

                PostDescription post = new PostDescription( rs.getInt(1),
                        PostDAO.INSTANCE.getPostById(rs.getInt("postId")),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                );
                return post;
            }

        } catch (SQLException e) {
            System.out.println("Error at getPostById " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public void addPostDescription(int postId, String PostTitleDescription, String postDetail, String postImg) {
        String sql = "insert into PostDescription values(?,?,?,?)";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, postId);
            ps.setString(2, PostTitleDescription);
            ps.setString(3, postDetail);
            ps.setString(4, postImg);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error at addPost " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }

    public void editPostDescription(int postId, String PostTitleDescription, String postDetail, String postImg, int postDescriptionId) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "  UPDATE [dbo].[PostDescription]\n"
                    + "SET \n"
                    + "[postId]= ?\n"
                    + ",[PostTitleDescription] = ?\n"
                    + ",[postDetail] = ?\n"
                    + ",[postImg] = ? \n"
                    + "WHERE [postDescriptionId] = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, postId);
            ps.setString(2, PostTitleDescription);
            ps.setString(3, postDetail);
            ps.setString(4, postImg);
            ps.setInt(5, postDescriptionId);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Error at editAccountById " + e.getMessage());

        } finally {
            closeStatement(ps, rs);
        }

    }

    public static void main(String[] args) {
        PostDescriptionDAO dao = new PostDescriptionDAO();
        List<PostDescription> post = dao.getPostDescriptionByPostId(9);
//        for (PostDescription postDescription : post) {
//            System.out.println(postDescription.getPostTitleDescription());
//        }
PostDescription post1= dao.getPostDescriptionById(6);
        System.out.println(post1);

    }
}
