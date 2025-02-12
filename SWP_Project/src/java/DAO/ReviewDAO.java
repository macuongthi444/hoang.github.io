/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Review;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
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

    public void insertReview(int accountID, int productID, String contentReview, int rating) {
        String query = "insert Feedback(accountId, productId, contentReview, dateReview,rating)\r\n"
                + "values(?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, accountID);
            ps.setInt(2, productID);
            ps.setString(3, contentReview);
            ps.setDate(4, getCurrentDate());
            ps.setInt(5, rating);
            ps.executeUpdate();

        } catch (SQLException e) {
            
        }
    }

    public void editReview(int id, String content) {
        String query = " UPDATE [dbo].[Feedback] \n"
                + "   SET \n"
                + "      [contentReview] = ?\n"
                + " WHERE[Feedback].feedbackId = ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, content);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteReview(int id) {
        String query = " DELETE FROM [dbo].[Feedback]\n"
                + "      WHERE feedbackId = ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
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
     public List<Review> getAllReviewByProductID2(int productId) {
        List<Review> list = new ArrayList<>();
        String query = "select * from Feedback\r\n"
                + "where [productId] =?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
              
                Review r = new Review();
                r.setRating(rs.getInt(6));
                list.add(r);
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
        String query = " select * from [Feedback] f \n"
                + "                  join [Account_Profile] a on f.accountId=a.accountId\n"
                + "                 join Product p on p.productId= f.productId\n"
                + "                 where [feedbackId] = ? ";
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

    public List<Review> getReviewByAccountId(int id) {
        String query = "    select * from  [feedback] f join Product p on f.productId = p.productId where [accountId] = ?";
        List<Review> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            while (rs.next()) {
                Review r = new Review();
                r.setContentReview(rs.getString(4));
                r.setDateReview(rs.getDate(5));
                r.setProductName(rs.getString("productName"));
                r.setProductID(rs.getInt(3));
                list.add(r);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public HashMap<Integer, List<Review>> getReviewByOrder(int con, int productId) {
        HashMap<Integer, List<Review>> result = new HashMap<>();
        ReviewDAO dao = new ReviewDAO();
        List<Review> listReviewById = dao.getAllReviewByProductID(String.valueOf(productId));

        switch (con) {
            case 1:
                Collections.sort(listReviewById, Comparator.comparing(Review::getDateReview));
                break;
            case 2:
                Collections.sort(listReviewById, Comparator.comparing(Review::getDateReview));
                Collections.reverse(listReviewById);
                break;
        }
        result.put(productId, listReviewById);
        return result;
    }

    public HashMap<Integer, List<Review>> getReviewByOrder1(int con, int productId) {
        HashMap<Integer, List<Review>> result = new HashMap<>();
        ReviewDAO dao = new ReviewDAO();
        List<Review> listReviewById = dao.getAllReviewByProductID(String.valueOf(productId));

        switch (con) {
            case 1:
                Collections.sort(listReviewById, Comparator.comparing(Review::getDateReview));
                break;
            case 2:
                Collections.sort(listReviewById, Comparator.comparing(Review::getDateReview));
                Collections.reverse(listReviewById);
                break;
        }
        result.put(productId, listReviewById);
        return result;
    }

    public int getTotalUserReviewByProductId(int productId) {
        String query = "  select count(DISTINCT accountId) from Feedback  where productId = ? ";
        int count = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);

            rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);

            }
        } catch (Exception e) {
        }
        return count;
    }

    public double getAvarageVoteByProductId(int productId) {
        double totalUser = getTotalUserReviewByProductId(productId);
        long totalVote = 0;
        long numberOfVote = 0;
        List<Review> list = getAllReviewByProductID2(productId);
        for (Review review : list) {
            if (review.getRating() == 0) {
                continue;
            }
            totalVote += review.getRating();
            numberOfVote++;
        }
        double avarageVote =(totalVote / numberOfVote);
//        if (avarageVote > 5) {
//            avarageVote = 5;
//        }
        return avarageVote;
    }

    public static void main(String[] args) {
        ReviewDAO dao = new ReviewDAO();
        double vote = 0;
        List<Review> list = dao.getAllReviewByProductID2(3);
        for (Review review : list) {
            System.out.println(review.getRating());
        }
        vote = dao.getAvarageVoteByProductId(3);
        System.out.println(vote);
    }
}
