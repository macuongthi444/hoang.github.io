/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.Coupon;
import Model.Post;
import Model.PostType;
import java.sql.Connection;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoang
 */
public class PostDAO extends DBContext {

    public static final PostDAO INSTANCE = new PostDAO();

    public PostType getPostTypeById(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from [PostType] where [postTypeID] = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new PostType(rs.getInt("postTypeID"), rs.getString("postTypeDetail"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getPostTypeById " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public List<Post> getAllPost() {
        ArrayList<Post> post = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Post ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                post.add(new Post(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        PostDAO.INSTANCE.getPostTypeById(rs.getInt("postTypeID")),
                        UserDao.INSTANCE.getAccountById(rs.getInt("postByUserMarketing")),
                        CouponDAO.INSTANCE.getCouponByID(rs.getInt("couponId"))
                ));
            }

        } catch (SQLException e) {
            System.out.println("Error at getAllPost " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return post;
    }

    public List<Post> getAllPostDesc() {
        ArrayList<Post> post = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Post ORDER BY [postId] DESC;";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                post.add(new Post(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        PostDAO.INSTANCE.getPostTypeById(rs.getInt("postTypeID")),
                        UserDao.INSTANCE.getAccountById(rs.getInt("postByUserMarketing")),
                        CouponDAO.INSTANCE.getCouponByID(rs.getInt("couponId"))
                ));
            }

        } catch (SQLException e) {
            System.out.println("Error at getAllPostDesc " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return post;
    }

    public List<Post> getPostTop3() {
        ArrayList<Post> post = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "   select top 3*from  [Post] WHERE postEnd > GETDATE() ORDER BY [postId] DESC;";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                post.add(new Post(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        PostDAO.INSTANCE.getPostTypeById(rs.getInt("postTypeID")),
                        UserDao.INSTANCE.getAccountById(rs.getInt("postByUserMarketing")),
                        CouponDAO.INSTANCE.getCouponByID(rs.getInt("couponId"))
                ));
            }

        } catch (SQLException e) {
            System.out.println("Error at getPostTop3 " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return post;
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
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public List<Post> searchPostByTitle(String searchTxt) {
        List<Post> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM [Post] WHERE [postTitle] LIKE '?';";
        try {
            ps = connection.prepareStatement(sql);
            if (searchTxt == null || searchTxt.isEmpty()) {
                searchTxt = "";
            }
            ps.setString(1, "%" + searchTxt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(6),
                        rs.getDate(7),
                        PostDAO.INSTANCE.getPostTypeById(rs.getInt("postTypeID")),
                        UserDao.INSTANCE.getAccountById(rs.getInt("postByUserMarketing")),
                        CouponDAO.INSTANCE.getCouponByID(rs.getInt("couponId"))
                ));
            }
        } catch (SQLException e) {
            System.out.println("Error at searchPostByTitle " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public List<PostType> getAllPostType() {
        List<PostType> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from [PostType]";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PostType(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println("Error at getAllPostType " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public List<Post> getPostByType(String type) {
        List<Post> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  *from Post p join PostType pt on p.postTypeID=pt.postTypeID\n"
                + "  where pt.postTypeDetail  like ?";
        try {
            if (type == null || type.isEmpty()) {
                type = "";
            }

            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + type + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        PostDAO.INSTANCE.getPostTypeById(rs.getInt("postTypeID")),
                        UserDao.INSTANCE.getAccountById(rs.getInt("postByUserMarketing")),
                        CouponDAO.INSTANCE.getCouponByID(rs.getInt("couponId"))
                ));

            }
        } catch (SQLException e) {
            System.out.println("Error at getPostByType " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }

    public void addPost(String postTitle, String postImg, Date postStart, Date postEnd, int postTypeID, int postByUserMarketing, int couponid) {
        String sql = "insert into Post values(?,?,?,?,?,?,?)";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, postTitle);
            ps.setString(2, postImg);
            ps.setDate(3, postStart);
            ps.setDate(4, postEnd);
            ps.setInt(5, postTypeID);
            ps.setInt(6, postByUserMarketing);
            ps.setInt(7, couponid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error at addPost " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }

    public void updatePost(int postId, String postTitle, String postImg, Date postStart,Date postEnd,int postTypeID,int  couponId) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "  UPDATE [dbo].[Post]\n"
                    + "SET \n"
                    + "[postTitle] = ?\n"
                    + ",[postImg] = ?\n"
                    + ",[postStart] = ?\n"
                    + ",[postEnd] = ?\n"
                    + ",[postTypeID] = ?\n"
                    + ",[couponId] = ? \n"
                    + " WHERE [postId] = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, postTitle);
            ps.setString(2, postImg);
            ps.setDate(3, postStart);
            ps.setDate(4, postEnd);
            ps.setInt(5, postTypeID);
            ps.setInt(6, couponId);
            ps.setInt(7, postId);

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Error at editAccountById " + e.getMessage());

        } finally {
            closeStatement(ps, rs);
        }

    }

    public static void main(String[] args) {
        PostDAO p = new PostDAO();
        PostType pt = p.getPostTypeById(1);
        List<Post> pl = p.getAllPostDesc();
        Post pid = p.getPostById(1);
        List<PostType> pt1 = p.getAllPostType();
        List<Post> pbyid = p.getPostByType("Hot");
        //System.out.println(pbyid);
        System.out.println(pt1);
        //System.out.println(pid);
        //System.out.println(pl);
        //System.out.println(pt);

    }
}
