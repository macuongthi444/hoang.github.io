/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nguye
 */
public class AccountStatus {
    private int accountStatusId;
    private String accountStatusDetail;

    public AccountStatus() {
    }

    public AccountStatus(int accountStatusId, String accountStatusDetail) {
        this.accountStatusId = accountStatusId;
        this.accountStatusDetail = accountStatusDetail;
    }

    public int getAccountStatusId() {
        return accountStatusId;
    }

    public void setAccountStatusId(int accountStatusId) {
        this.accountStatusId = accountStatusId;
    }

    public String getAccountStatusDetail() {
        return accountStatusDetail;
    }

    public void setAccountStatusDetail(String accountStatusDetail) {
        this.accountStatusDetail = accountStatusDetail;
    }
    
    
}
