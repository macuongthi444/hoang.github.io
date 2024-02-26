/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Communications;
import Model.Order;
import Model.OrderInfo;
import Model.OrderStatusDetail;
import Model.Payment;
import Model.PaymentMethod;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author zenzen1
 */
public class OrderDAO extends DBContext{
    public static OrderDAO INSTANCE = new OrderDAO();
    
    public PaymentMethod getPaymentMethodById(int paymentMethodId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from payment_method where paymentMethodId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, paymentMethodId);
            rs = ps.executeQuery();
            if(rs.next()){
                return new PaymentMethod(rs.getInt("paymentMethodId"), rs.getString("paymentMethod"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getPaymentMethodById " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public Payment getPaymentByOrderId(int orderId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from payment where orderId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            if(rs.next()){
                return new Payment(rs.getInt("paymentId"), OrderDAO.INSTANCE.getOrderByOrderId(rs.getInt("orderId")), rs.getTimestamp("payDate"),
                        rs.getDouble("moneyAmount"), getPaymentMethodById(rs.getInt("paymentMethod")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getPaymentByOrderId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public OrderStatusDetail getOrderStatusDetailById(int orderStatusDetailId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from OrderStatusDetail where orderStatusDetailId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderStatusDetailId);
            rs = ps.executeQuery();
            if(rs.next()){
                return new OrderStatusDetail(rs.getInt("orderStatusDetailId"), rs.getString("status"), rs.getString("discription"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getOrderStatusDetailById " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    
    
    public List<OrderInfo> getOrderInfosByOrderId(int orderId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        Order order = getOrderByOrderId(orderId);
        List<OrderInfo> list = new ArrayList<>();
        try {
            String sql = "select * from order_info where orderId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new OrderInfo(rs.getInt("orderInfoId"), order, ProductDAO.INSTANCE.getProductOptionById(rs.getInt("productOptionId")), 
                        rs.getDouble("productPrice"), rs.getInt("quantity")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getOrderInfosByOrderId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public Order getOrderByOrderId(int orderId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from [order] where orderId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            if(rs.next()){
                return new Order(orderId, CartItemDAO.INSTANCE.getAccountById(rs.getInt("accountId")), rs.getTimestamp("OrderDate"), 
                        CartItemDAO.INSTANCE.getCommunicationsByCommunicationsId(rs.getInt("communicationsId")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getOrderByOrderId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public void insertOrderStatus(int orderId, int orderStatusDetailId, Timestamp changeStatusTime){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "insert into order_status values (?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setInt(2, orderStatusDetailId);
            ps.setTimestamp(3, changeStatusTime);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertOrderStatus " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    
    
    public void insertOrder(int orderId, int accountId, Timestamp orderDate, int communicationsId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "insert into [Order] values (?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setInt(2, accountId);
            ps.setTimestamp(3, orderDate);
            ps.setInt(4, communicationsId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertOrder " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public void insertOrderInfo(int orderId, int productOptionId, double productPrice, int quantity){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "insert into order_info values(?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setInt(2, productOptionId);
            ps.setDouble(3, productPrice);
            ps.setInt(4, quantity);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at isnertOrderInfo " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public static void main(String[] args) {
        String s = LocalDateTime.now().toString();
        Calendar calendar = Calendar.getInstance();
        Timestamp timestamp = new Timestamp(calendar.getTimeInMillis());
        System.out.println(timestamp.toLocalDateTime().toString());
        
        
//        OrderDAO.INSTANCE.insertOrder(1, 2, new Timestamp(Calendar.getInstance().getTimeInMillis()));
    }
}
