/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.CartItem;
import Model.Communications;
import Model.OrderStatus;
import Model.OrderStatusDetail;
import Model.Payment;
import Model.PaymentMethod;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author zenzen1
 */
public class CartItemDAO extends DBContext{
    public static final CartItemDAO INSTANCE = new CartItemDAO();
    
//    public OrderStatus getOrderStatusById(int orderStatusId){
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            String sql = "select * from order_Status where  = ?";
//            ps = connection.prepareStatement(sql);
//            ps.setInt(1, orderStatusDetailId);
//            rs = ps.executeQuery();
//            if(rs.next()){
//                return new OrderStatusDetail(rs.getInt("orderStatusDetailId"), rs.getString("status"), rs.getString("discription"));
//            }
//        } catch (SQLException e) {
//            System.out.println("Error at getOrderStatusDetailById " + e.getMessage());
//        } finally {
//            closeStatement(ps, rs);
//        }
//        return null;
//    }
    
    public Communications getCommunicationsByCommunicationsId(int communicationsId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from communications where communicationsId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, communicationsId);
            rs = ps.executeQuery();
            if(rs.next()){
                return new Communications(communicationsId, CartItemDAO.INSTANCE.getAccountById(rs.getInt("accountId")), rs.getString("phoneNumber"), rs.getString("address"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getCommunicationsByCommunicationsId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public boolean checkIfCartItemIsExist(int accountId, int productOptionId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Cart_item where accountId = ? and productOptionid = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setInt(2, productOptionId);
            rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error at checkIfCartItemIsExist " + e.getMessage());
            return true;
        } finally {
            closeStatement(ps, rs);
        }
        return false;
    }
    
    public int getCartItemQuantity(int accountId, int productOptionId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Cart_item where accountId = ? and productOptionId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setInt(2, productOptionId);
            rs = ps.executeQuery();
            if(rs.next()){
                return rs.getInt("quantity");
            }
        } catch (SQLException e) {
            System.out.println("Error at getCartItemQuantity " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return -1;
    }
    
    public void insertCartItem(int accountId, int productOptionId, int quantity){
        PreparedStatement ps = null;
        try {
            String sql = "insert into cart_Item values(?, ?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setInt(2, productOptionId);
            ps.setInt(3, quantity);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertCartItem " + e.getMessage());
        } finally {
            closeStatement(ps, null);
        }
    }
    
    public void deleteCartItem(int accountId, int productOptionId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "delete from cart_item where accountId = ? and productOptionid = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setInt(2, productOptionId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at deleteCartItem " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public void deleteCommunications(int accountId, int communicationsId){
        String sql = "delete from communications where communicationsId = ? and accountId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, communicationsId);
            ps.setInt(2, accountId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at deleteCommunications " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public void insertCommunications(int accountId, String phoneNumber, String address){
        String sql = "insert into communications values(?, ?, ?)";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setString(2, phoneNumber);
            ps.setString(3, address);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertCommunications" + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public List<Communications> getCommunicationsListByAccountId(int accountId){
        String sql = "select * from communications where accountId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Communications> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Communications(rs.getInt("communicationsId"), getAccountById(accountId), rs.getString("PhoneNumber"), rs.getString("address")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getCommunicationsListByAccountId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public CartItem getCartItem(int accountId, int productOptionId){
        String sql = "select * from cart_item where accountId = ? and productOptionId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setInt(2, productOptionId);
            rs = ps.executeQuery();
            if(rs.next()){
                return new CartItem(getAccountById(accountId), ProductDAO.INSTANCE.getProductOptionById(productOptionId), rs.getInt("quantity"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getCartItem " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public List<CartItem> getCartItemListByAccountId(int accountId){
        List<CartItem> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from cart_Item where accountId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new CartItem(getAccountById(accountId), ProductDAO.INSTANCE.getProductOptionById(rs.getInt("productOptionId")), 
                        rs.getInt("quantity")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getCartItemListByAccountId");
        } finally{
            if(ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartItemDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if(rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartItemDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }
    
    public Account getAccountById(int id) {
//        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Account where accountId=?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Account acc = new Account(rs.getInt("accountId"), rs.getString("username"), rs.getString("password"), rs.getString("email"), RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")));
                return acc;
            }

        } catch (SQLException e) {
            System.out.println("Error at getAccountById");
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public void updateCart(int accountId, int productOptionId, int quantity){
        String sql = "update Cart_Item set quantity = ? where accountId = ? and productOptionId = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, accountId);
            ps.setInt(3, productOptionId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error at updateCart");
        } finally{
            closeStatement(ps, null);
        }
    }
    
    public static void main(String[] args) {
        System.out.println(CartItemDAO.INSTANCE.getCartItemListByAccountId(2));
//        CartItemDAO.INSTANCE.updateCart(2, 2, 8);
//        CartItemDAO.INSTANCE.getCommunicationsListByAccountId(2).forEach((t) -> {System.out.println(t);});
//        CartItemDAO.INSTANCE.insertCartItem(2, 20, 2);
    }
    
    
}
