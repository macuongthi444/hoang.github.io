/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class OrderStatusDetail {
    private int orderStatusDetailId;
    private String status;
    private String discription;

    public OrderStatusDetail() {
    }

    public OrderStatusDetail(int orderStatusDetailId, String status, String discription) {
        this.orderStatusDetailId = orderStatusDetailId;
        this.status = status;
        this.discription = discription;
    }

    public int getOrderStatusDetailId() {
        return orderStatusDetailId;
    }

    public void setOrderStatusDetailId(int orderStatusDetailId) {
        this.orderStatusDetailId = orderStatusDetailId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    @Override
    public String toString() {
        return "OrderStatusDetail{" + "orderStatusDetailId=" + orderStatusDetailId + ", status=" + status + ", discription=" + discription + '}';
    }
    
    
}
