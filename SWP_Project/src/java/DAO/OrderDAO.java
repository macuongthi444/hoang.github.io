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
public class OrderDAO extends DBContext {

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
        }
        return null;
    }
    
    public List<Order> getAllOrder() {
        String sql = "select * from [order] order by orderId desc";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Order> l = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                l.add(new Order(rs.getInt(1), rs.getInt(2), rs.getTimestamp(3), rs.getInt(4)));
            }
            return l;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
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

    
    public void changeStatus(int orderId, String newStatus) {
        String sql = "update Order_Status set orderStatusDetailId = ? where orderId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        int changeId = 0;
        switch (newStatus) {
            case "waiting":
                changeId = 1;
                break;
            case "shipping":
                changeId = 2;
                break;
            case "cancel":
                changeId = 3;
                break;
            default:
                changeId = 4;
                break;
        }
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(2, orderId);
            ps.setInt(1, changeId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }

    public List<Order> getAllOrderByAccountId(int accountId) {
        String sql = "select * from [order] where accountId = ? order by orderId desc";
        List<Order> l = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                l.add(new Order(rs.getInt(1), accountId, rs.getTimestamp(3), rs.getInt(4)));
            }
            return l;
        } catch (Exception e) {
        }

        return null;
    }

    public List<Integer> getAllProductOptionIdByOrderId(int orderId) {
        String sql = "select productOptionId from Order_Info where orderId= ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Integer> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt(1));
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public int getProductOptionQuantityByOrderIdAndProductOptionId(int orderId, int productOptionId) {
        String sql = "select quantity from Order_Info where orderId= ? and productOptionId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setInt(2, productOptionId);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return 0;
    }

    public String getOrderStatusByOrderId(int orderId) {
        String sql = "select osd.status from order_status os, OrderStatusDetail osd where os.orderStatusDetailId = osd.orderStatusDetailId and os.orderId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String orderStatus = rs.getString(1);
                return orderStatus;
            }
        } catch (SQLException e) {
            System.out.println("Error at insertOrderStatus " + e.getMessage());
        }
        return null;
    }

    public Date getChangeStatusTimeByOrderId(int orderId) {
        String sql = "select os.changeStatusTime from order_status os, OrderStatusDetail osd where os.orderStatusDetailId = osd.orderStatusDetailId and os.orderId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Date ChangeStatusTime = rs.getDate(1);
                return ChangeStatusTime;
            }
        } catch (SQLException e) {
            System.out.println("Error at insertOrderStatus " + e.getMessage());
        }
        return null;
    }

    public void insertOrderStatus(int orderId, int orderStatusDetailId, Timestamp changeStatusTime) {
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

    public double getTotalMoneyByOrderId(int orderId) {
        String sql = "select SUM(productPrice*quantity) as total from Order_Info where orderId= ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            if (rs.next()) {
                double total = rs.getDouble(1);
                return total;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return 0;
    }

    public int getCommuniCationsIdByOrderId(int orderId) {
        String sql = "select communicationsId from [Order] where orderId =?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            if (rs.next()) {
                int communicaionsId = rs.getInt(1);
                return communicaionsId;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return 0;
    }

    public List<String> getAllImageTextByOrderId(int orderId) {
        String sql = "select imageText from Image i join Order_Info oi on i.product_OptionId=oi.productOptionId where oi.orderId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<String> l = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            while (rs.next()) {
                l.add(rs.getString(1));
            }
            return l;
        } catch (SQLException e) {
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public void insertOrderInfo(int orderId, int productOptionId, double productPrice, int quantity) {
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

    public String getPaymentMethodByOderId(int orderId) {
        String sql = "select pm.paymentMethod from Payment_Method pm join Payment p on pm.paymentMethodId =p.paymentMethod where orderId = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();
            if (rs.next()) {
                String paymentMethod = rs.getString(1);
                return paymentMethod;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }

    public static void main(String[] args) {
//        String s = LocalDateTime.now().toString();
//        Calendar calendar = Calendar.getInstance();
//        Timestamp timestamp = new Timestamp(calendar.getTimeInMillis());
//        System.out.println(timestamp.toLocalDateTime().toString());

//        OrderDAO.INSTANCE.insertOrder(1, 2, new Timestamp(Calendar.getInstance().getTimeInMillis()));
        OrderDAO o = new OrderDAO();
//        List<Order> l = o.getAllOrderByAccountId(2);
//        for (Order order : l) {
//            System.out.println(order.getOrderDate());
//        }
//        System.out.println(o.getOrderStatusByOrderId(1));
//        System.out.println(o.getChangeStatusTimeByOrderId(1));
//        System.out.println(o.getTotalMoneyByOrderId(1));
//        System.out.println(o.getAllImageTextByOrderId(1));
//        System.out.println(o.getProductOptionQuantityByOrderIdAndProductOptionId(1, 1));
////        OrderDAO.INSTANCE.getAllProductOptionIdByOrderId(1).forEach((e) -> System.out.println(e));
//        System.out.println(o.getCommuniCationsIdByOrderId(1));
//        System.out.println(o.getPaymentMethodByOderId(1));
//        OrderDAO.INSTANCE.getAllOrder().forEach((e) -> System.out.println(e));
        o.changeStatus(1, "waiting");
    }
}
