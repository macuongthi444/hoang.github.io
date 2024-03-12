/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author nguye
 */
public class Contact {
    private int contactId;
    private Account account;
    private String email;
    private String phoneNumber;
    private String content;
    private Timestamp contactDate;
    private boolean isResponded;
    
    private List<String> imageList;
    
    public Contact() {
    }

    public Contact(int contactId, Account account, String email, String phoneNumber, String content, Timestamp contactDate) {
        this.contactId = contactId;
        this.account = account;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.content = content;
        this.contactDate = contactDate;
        isResponded = false;
    }    

    public boolean isIsResponded() {
        return isResponded;
    }

    public void setIsResponded(boolean isResponded) {
        this.isResponded = isResponded;
    }
    
    
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    
    
    public Timestamp getContactDate() {
        return contactDate;
    }

    public void setContactDate(Timestamp contactDate) {
        this.contactDate = contactDate;
    }
    
    
    
    public List<String> getImageList() {
        return imageList;
    }

    public void setImageList(List<String> imageList) {
        this.imageList = imageList;
    }
    
    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Contact{" + "contactId=" + contactId + ", account=" + account + ", content=" + content + '}';
    }
    
    
}
