/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Coupon;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vinhp
 */
public class CouponDAO extends DBContext {
    public static final CouponDAO INSTANCE = new CouponDAO();

    public List<Coupon> getAllCoupon() {
        String sql = "select * from Coupon";
        List<Coupon> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Coupon(rs.getInt(1), rs.getDouble(2), rs.getDate(3), rs.getDate(4), rs.getBoolean(5)));
            }
            return list;
        } catch (Exception e) {
        }
        return list;
    }

    public Coupon getCouponByID(int couponID) {
        String sql = "select * from Coupon where couponId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, couponID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Coupon c = new Coupon(rs.getInt(1), rs.getDouble(2), rs.getDate(3), rs.getDate(4), rs.getBoolean(5));
                return c;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addCoupon(double discountRate, Date startDate, Date endDate, boolean isUsed, Integer productID) {
        String sql = "insert into Coupon values(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDouble(1, discountRate);
            ps.setDate(2, startDate);
            ps.setDate(3, endDate);
            ps.setBoolean(4, isUsed);
            if (productID == null) {
                ps.setObject(5, null);
            } else {
                ps.setInt(5, productID);
            }
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void banCouponByCouponId(int couponId) {
        String sql = "update Coupon set isUsed = 0 where couponId= ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, couponId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateCoupon(int counponId, double discountRate, Date startDate, Date endDate, boolean isUsed, Integer productID) {
        String sql = "update Coupon set discountRate = ? , startDate = ? , endDate = ? , isUsed = ? , productOptionId = ? where couponId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(6, counponId);
            ps.setDouble(1, discountRate);
            ps.setDate(2, startDate);
            ps.setDate(3, endDate);
            ps.setBoolean(4, isUsed);
            if (productID == null) {
                ps.setObject(5, null);
            } else {
                ps.setInt(5, productID);
            }
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Integer getProductOptionIdByCouponId(int couponId) {
        String sql = "select productOptionId from Coupon where couponId = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, couponId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int productOptionId = rs.getInt(1);
                rs.close();
                ps.close();
                return productOptionId;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Integer getCouponIdByProductOptionId(int poid) {
        String sql = "select couponId from Coupon where productOptionId = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, poid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int productOptionId = rs.getInt(1);
                rs.close();
                ps.close();
                return productOptionId;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Coupon> sortCoupon(String increase, String decrease, String discountRate, String startDate, String endDate, String isUsed) {
        String sql = "select * from Coupon ";
        if (discountRate != null && !discountRate.isEmpty()) {
            sql += "order by " + discountRate;
        } else if (startDate != null && !startDate.isEmpty()) {
            sql += "order by " + startDate;
        } else if (endDate != null && !endDate.isEmpty()) {
            sql += "order by " + endDate;
        } else if (isUsed != null && !isUsed.isEmpty()) {
            sql += "order by " + isUsed;
        }
        if (increase != null && !increase.isEmpty()) {
            sql += " " + increase;
        } else if (decrease != null && !decrease.isEmpty()) {
            sql += " " + decrease;
        }
        List<Coupon> l = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                l.add(new Coupon(rs.getInt(1), rs.getDouble(2), rs.getDate(3), rs.getDate(4), rs.getBoolean(5)));
            }
            return l;
        } catch (Exception e) {
        }
        return null;
    }

    public void AttachProductID(int productId, int couponId) {
        String sql = "update Coupon set productOptionId = ? where couponId= ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, couponId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Coupon getCouponByProductOptionId(int poid) {
        String sql = "select * from Coupon where productOptionId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, poid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Coupon(rs.getInt(1), rs.getDouble(2), rs.getDate(3), rs.getDate(4), rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public boolean checkProductOptionIdExisted(int poid) {
        String sql = "IF EXISTS (SELECT 1 FROM Coupon WHERE productOptionId = ?) "
                + "    SELECT 'True' AS Result; "
                + "ELSE "
                + "    SELECT 'False' AS Result;";
        boolean result = false;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, poid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                result = rs.getString("Result").equals("True");
            }
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public void swichProductOptionId(int poid, int cid1, int cid2) {
        String sql = "BEGIN TRANSACTION;\n"
                + "UPDATE Coupon\n"
                + "SET productOptionId = NULL\n"
                + "WHERE couponId = ?;\n"
                + "UPDATE Coupon\n"
                + "SET productOptionId = ?\n"
                + "WHERE couponId = ?;\n"
                + "COMMIT;"; // Kết thúc giao dịch
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid1);
            ps.setInt(2, poid);
            ps.setInt(3, cid2);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý lỗi (đã bổ sung để ghi log lỗi)
            try {
                connection.rollback(); // Hủy bỏ giao dịch nếu có lỗi
            } catch (SQLException ex) {
                ex.printStackTrace(); // Xử lý lỗi rollback (đã bổ sung để ghi log lỗi)
            }
        }
    }

    public void removeProductIdWhenHaveOutDatedCoupon() {
        String sql = "update Coupon set productOptionId = null where isUsed=0";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeQuery();
            ps.close();
        } catch (SQLException e) {
        }
    }

    public static void main(String[] args) {
        CouponDAO c = new CouponDAO();
        // c.addCoupon(0.3, Date.valueOf("2024-01-22"), Date.valueOf("2024-01-23"), true, null);
//        List<Coupon> list = c.getAllCoupon();
//        for (Coupon coupon : list) {
//            System.out.println(coupon.getStartDate());
//        }
//        Coupon coupon = c.getCouponByID(2);
//        System.out.println(coupon.getCouponId());
//        c.updateCoupon(2, 0.3, Date.valueOf("2024-01-22"), Date.valueOf("2024-01-23"), true, null);
//        Integer poid = c.getProductOptionIdByCouponId(1);
//        System.out.println(poid);
//        List<Coupon> l = c.sortCoupon("desc", "", "discountRate", "", "", "");
//        for (Coupon coupon : l) {
//            System.out.println(coupon.getCouponId());
//        }
        // c.AttachProductID(1, 2);
        //       c.removeProductIdWhenHaveOutDatedCoupon();
        //       System.out.println(c.checkProductOptionIdExisted(1));
        //       System.out.println(c.getCouponIdByProductOptionId(1));
        c.swichProductOptionId(1, 2, 1);
//        Coupon coupon = c.getCouponByProductOptionId(1);
//        System.out.println(coupon.getCouponId());
    }
}
