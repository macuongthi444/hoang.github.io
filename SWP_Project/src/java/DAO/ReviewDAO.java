/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Review;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author This PC
 */
public class ReviewDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int countAllReview() {
        String query = "select count(*) from Feedback";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    private static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }

    public void insertReview(int accountID, int productID, String contentReview) {
        String query = "insert Feedback(accountId, productId, contentReview, dateReview)\r\n"
                + "values(?,?,?,?)";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, accountID);
            ps.setInt(2, productID);
            ps.setString(3, contentReview);
            ps.setDate(4, getCurrentDate());
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
public void editReview(int id,String content){
    String query = " UPDATE [dbo].[Feedback] \n" +
"   SET \n" +
"      [contentReview] = ?\n" +
" WHERE[Feedback].feedbackId = ? ";
    try {
         conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, content);
            ps.setInt(2, id);
            ps.executeUpdate();
    } catch (Exception e) {
    }
}
    public List<Review> getAllReviewByProductID(String productId) {
        List<Review> list = new ArrayList<>();
        String query = "select * from Feedback\r\n"
                + "where [productId] =?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Review(rs.getInt(1), rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Review getNewReview(int accountID, int productID) {
        String query = "   select top 1 * from Feedback\n"
                + "        	where accountID = ? and productID = ?\n"
                + "        		order by feedbackId desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, accountID);
            ps.setInt(2, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Review(rs.getInt(1), rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Review getReviewById(int id) {
        String query = " select * from [Feedback] f \n" +
"                  join [Account_Profile] a on f.accountId=a.accountId\n" +
"                 join Product p on p.productId= f.productId\n" +
"                 where [feedbackId] = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            while (rs.next()) {
                Review r = new Review();
                r.setId(rs.getInt(1));
                r.setContentReview(rs.getString(4));
                r.setDateReview(rs.getDate(5));
                r.setProductName(rs.getString("productName"));
                r.setAvatar(rs.getString("avatar"));
                r.setProductID(rs.getInt("productId"));
                return r;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ReviewDAO dao = new ReviewDAO();

       dao.editReview(6, "oke");
        

    }
}
