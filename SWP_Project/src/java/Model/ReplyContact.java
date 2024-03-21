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
public class ReplyContact {
    private int replyContactId;
    private String replyContent;
    private Timestamp replyDate;
    private int contactId;
    
    private List<String> imageList;

    public ReplyContact() {
    }

    public ReplyContact(int replyContactId, String replyContent, Timestamp replyDate, int contactId) {
        this.replyContactId = replyContactId;
        this.replyContent = replyContent;
        this.replyDate = replyDate;
        this.contactId = contactId;
    }

    public ReplyContact(int replyContactId, String replyContent, Timestamp replyDate, int contactId, List<String> imageList) {
        this.replyContactId = replyContactId;
        this.replyContent = replyContent;
        this.replyDate = replyDate;
        this.contactId = contactId;
        this.imageList = imageList;
    }

    public int getReplyContactId() {
        return replyContactId;
    }

    public void setReplyContactId(int replyContactId) {
        this.replyContactId = replyContactId;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public Timestamp getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Timestamp replyDate) {
        this.replyDate = replyDate;
    }

    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public List<String> getImageList() {
        return imageList;
    }

    public void setImageList(List<String> imageList) {
        this.imageList = imageList;
    }
    
    
}
