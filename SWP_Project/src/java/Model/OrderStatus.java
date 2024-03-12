/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Timestamp;

/**
 *
 * @author nguye
 */
public class OrderStatus {
    private int orderId;
    private OrderStatusDetail orderStatusDetail;
    private Timestamp changeStatusTime;

    public OrderStatus() {
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public OrderStatusDetail getOrderStatusDetail() {
        return orderStatusDetail;
    }

    public void setOrderStatusDetail(OrderStatusDetail orderStatusDetail) {
        this.orderStatusDetail = orderStatusDetail;
    }

    public Timestamp getChangeStatusTime() {
        return changeStatusTime;
    }

    public void setChangeStatusTime(Timestamp changeStatusTime) {
        this.changeStatusTime = changeStatusTime;
    }

    @Override
    public String toString() {
        return "OrderStatus{" + "orderId=" + orderId + ", orderStatusDetail=" + orderStatusDetail + ", changeStatusTime=" + changeStatusTime + '}';
    }
    
    
}
