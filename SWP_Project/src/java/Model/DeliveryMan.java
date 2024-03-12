/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author vinhp
 */
public class DeliveryMan {

    private int accountId;
    private String deliveryCompany;

    public DeliveryMan(int accountId, String deliveryCompany) {
        this.accountId = accountId;
        this.deliveryCompany = deliveryCompany;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getDeliveryCompany() {
        return deliveryCompany;
    }

    public void setDeliveryCompany(String DeliveryCompany) {
        this.deliveryCompany = DeliveryCompany;
    }

}
