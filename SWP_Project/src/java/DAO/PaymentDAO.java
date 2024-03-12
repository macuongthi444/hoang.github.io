/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.PaymentMethod;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLType;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author zenzen1
 */
public class PaymentDAO extends DBContext{
    public static final PaymentDAO INSTANCE = new PaymentDAO();
    
    public void insertPayment(int orderId, Timestamp payDate, double moneyAmount, Integer paymentMethodId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "insert into Payment values(?, ?, ?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setTimestamp(2, payDate);
            ps.setDouble(3, moneyAmount);
            ps.setInt(4, paymentMethodId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertPayment "+ e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public List<PaymentMethod> getPaymentMethodList(){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<PaymentMethod> list = new ArrayList<>();
        String sql = "select * from payment_Method";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new PaymentMethod(rs.getInt("paymentMethodId"), rs.getString("paymentMethod")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getPaymentMethodList " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public static void main(String[] args) {
    }
}
