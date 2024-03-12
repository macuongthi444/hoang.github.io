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
public class Payment {
    private int paymentId;
    private Order order;
    private Timestamp payDate;
    private double moneyAmount;
    private PaymentMethod paymentMethod;

    public Payment() {
    }

    public Payment(int paymentId, Order order, Timestamp payDate, double moneyAmount, PaymentMethod paymentMethod) {
        this.paymentId = paymentId;
        this.order = order;
        this.payDate = payDate;
        this.moneyAmount = moneyAmount;
        this.paymentMethod = paymentMethod;
    }

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Timestamp getPayDate() {
        return payDate;
    }

    public void setPayDate(Timestamp payDate) {
        this.payDate = payDate;
    }

    public double getMoneyAmount() {
        return moneyAmount;
    }

    public void setMoneyAmount(double moneyAmount) {
        this.moneyAmount = moneyAmount;
    }

    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    @Override
    public String toString() {
        return "Payment{" + "paymentId=" + paymentId + ", order=" + order + ", payDate=" + payDate + ", moneyAmount=" + moneyAmount + ", paymentMethod=" + paymentMethod + '}';
    }
    
    
}
