/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author zenzen1
 */
public class Communications {
    private int communicationId;
    private Account account;
    private String phoneNumber, address;

    public Communications() {
    }

    public Communications(int communicationId, Account account, String phoneNumber, String address) {
        this.communicationId = communicationId;
        this.account = account;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public int getCommunicationId() {
        return communicationId;
    }

    public void setCommunicationId(int communicationId) {
        this.communicationId = communicationId;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Communications{" + "communicationId=" + communicationId + ", account=" + account.getId() + ", phoneNumber=" + phoneNumber + ", address=" + address + '}';
    }
    
    
}
