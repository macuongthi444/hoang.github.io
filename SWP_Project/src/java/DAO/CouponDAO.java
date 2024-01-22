/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Coupon;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vinhp
 */
public class CouponDAO extends DBContext {
    
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
    
    public List<Coupon> getCouponByID(int couponID) {
        String sql = "select * from Coupon where couponId = ?";
        List<Coupon> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, couponID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Coupon(rs.getInt(1), rs.getDouble(2), rs.getDate(3), rs.getDate(4), rs.getBoolean(5)));
            }
            return list;
        } catch (Exception e) {
        }
        return list;
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
    
    public static void main(String[] args) {
        CouponDAO c = new CouponDAO();
        // c.addCoupon(0.3, Date.valueOf("2024-01-22"), Date.valueOf("2024-01-23"), true, null);
//        List<Coupon> list = c.getAllCoupon();
//        for (Coupon coupon : list) {
//            System.out.println(coupon.getStartDate());
//        }
        c.banCouponByCouponId(3);
    }
}
