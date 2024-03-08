/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Timestamp;
import java.sql.Date;

/**
 *
 * @author nguye
 */
public class Order {
    private int orderId;
    private Account account;
    private Timestamp orderDate;
    private Communications communications;
    
    private int accountId;
    private int communicationId;
    
    public Order() {
    }
    
    public Order(int orderId, Account account, Timestamp orderDate, Communications communications) {
        this.orderId = orderId;
        this.account = account;
        this.orderDate = orderDate;
        this.communications = communications;

    }
    

    public Order(int orderId, int accountId, Timestamp orderDate, int communicationId) {
        this.orderId = orderId;
        this.accountId = accountId;
        this.orderDate = orderDate;
        this.communicationId = communicationId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public Communications getCommunications() {
        return communications;
    }

    public void setCommunications(Communications communications) {
        this.communications = communications;
    }

    public int getCommunicationId() {
        return communicationId;
    }

    public void setCommunicationId(int communicationId) {
        this.communicationId = communicationId;
    }
 
 
}
