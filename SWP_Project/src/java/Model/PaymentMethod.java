/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author zenzen1
 */
public class PaymentMethod {
    private int paymentMethodId;
    private String paymentMethod;

    public PaymentMethod() {
    }

    public PaymentMethod(int paymentMethodId, String paymentMethod) {
        this.paymentMethodId = paymentMethodId;
        this.paymentMethod = paymentMethod;
    }

    public int getPaymentMethodId() {
        return paymentMethodId;
    }

    public void setPaymentMethodId(int paymentMethodId) {
        this.paymentMethodId = paymentMethodId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    @Override
    public String toString() {
        return "PaymentMehod{" + "paymentMethodId=" + paymentMethodId + ", paymentMethod=" + paymentMethod + '}';
    }
    
    
}
