/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.Contact;
import Model.ReplyContact;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author nguye
 */
public class ContactDAO extends DBContext{
    public static final ContactDAO INSTANCE = new ContactDAO();
    
    public ReplyContact getReplyContactByContactId(int cid){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from reply_contact where ContactId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            if(rs.next()){
                ReplyContact replyContact = new ReplyContact(rs.getInt("replyContactId"), rs.getString("replyContent"), 
                        rs.getTimestamp("replyDate"), cid, getReplyContactImageListByContactId(rs.getInt("replyContactId")));
                replyContact.setImageList(getReplyContactImageListByContactId(rs.getInt("replyContactId")));
                return replyContact;
            }
        } catch (SQLException e) {
            System.out.println("Error at getReplyContactById " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    } 
    
    public ReplyContact getReplyContactById(int id){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from reply_contact where replyContactId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if(rs.next()){
                ReplyContact replyContact = new ReplyContact(id, rs.getString("replyContent"), 
                        rs.getTimestamp("replyDate"), rs.getInt("contactId"), getReplyContactImageListByContactId(rs.getInt("replyContactId")));
                replyContact.setImageList(getReplyContactImageListByContactId(rs.getInt("replyContactId")));
                return replyContact;
            }
        } catch (SQLException e) {
            System.out.println("Error at getReplyContactById " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public List<String> getReplyContactImageListByContactId(int replyContactId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<String> list = new ArrayList<>();
        try {
            String sql = "select * from reply_contact_image where replyContactId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, replyContactId);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(rs.getString("imageText"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getContactImageListByContactId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public void insertReplyContact(int replyContactId, String replyContent, Timestamp replyDate, int contactId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "insert into reply_Contact values(?, ?, ?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, replyContactId);
            ps.setString(2, replyContent);
            ps.setTimestamp(3, replyDate);
            ps.setInt(4, contactId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertReplyContact " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public void insertReplyContactImage(int replyContactId, String imageText){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "insert into reply_Contact_Image values(?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, replyContactId);
            ps.setString(2, imageText);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertReplyContactImage " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public List<Contact> getContactListBySql(String sql){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Contact> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Contact contact = new Contact(rs.getInt("contactId"), DAOAccount.INSTANCE.getAccountByAccountId(rs.getInt("accountId")), 
                        rs.getString("email"), rs.getString("phoneNumber"), rs.getString("content"), rs.getTimestamp("contactDate"), rs.getBoolean("isResponded"));
                contact.setImageList(getContactImageListByContactId(rs.getInt("contactId")));
                contact.setReplyContact(getReplyContactByContactId(rs.getInt("contactId")));
                list.add(contact);
            }
        } catch (SQLException e) {
            System.out.println("Error at getContactListBySql " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public void deleteContactImageByContactId(int contactId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "delete from contact_Image where contactId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, contactId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at deleteContactImageByContactId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public void updateContact(int contactId, int accountId, String email, String phoneNumber, String content, Timestamp contactDate, boolean isResponded){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "update contact set accountId = ?, email = ?, phoneNumber = ?, content = ?, contactDate = ?, isResponded = ? where contactId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setString(2, email);
            ps.setString(3, phoneNumber);
            ps.setString(4, content);
            ps.setTimestamp(5, contactDate);
            ps.setBoolean(6, isResponded);
            ps.setInt(7, contactId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at updateContact " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public void updateContact(int contactId, int accountId, String email, String phoneNumber, String content, Timestamp contactDate){
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "update contact set accountId = ?, email = ?, phoneNumber = ?, content = ?, contactDate = ? where contactId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setString(2, email);
            ps.setString(3, phoneNumber);
            ps.setString(4, content);
            ps.setTimestamp(5, contactDate);
            ps.setInt(6, contactId);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at updateContact " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
    }
    
    public Contact getContactByContactId(int contactId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from contact where contactId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, contactId);
            rs = ps.executeQuery();
            if(rs.next()){
                Contact contact = new Contact(rs.getInt("contactId"), DAOAccount.INSTANCE.getAccountByAccountId(rs.getInt("accountId")), 
                        rs.getString("email"), rs.getString("phoneNumber"), rs.getString("content"), rs.getTimestamp("contactDate"));
                contact.setImageList(getContactImageListByContactId(rs.getInt("contactId")));
                contact.setIsResponded(rs.getBoolean("isResponded"));
                contact.setReplyContact(getReplyContactByContactId(rs.getInt("contactId")));
                return contact;
            }
        } catch (SQLException e) {
            System.out.println("Error at getContactByContactId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public List<Contact> getContactList(){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Contact> list = new ArrayList<>();
        try {
            String sql = "select * from contact";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Contact contact = new Contact(rs.getInt("contactId"), DAOAccount.INSTANCE.getAccountByAccountId(rs.getInt("accountId")), rs.getString("email"), 
                        rs.getString("phoneNumber"), rs.getString("content"), rs.getTimestamp("contactDate"));
                contact.setImageList(getContactImageListByContactId(rs.getInt("contactId")));
                contact.setIsResponded(rs.getBoolean("isResponded"));
                contact.setReplyContact(getReplyContactByContactId(rs.getInt("contactId")));
                list.add(contact);
            }
        } catch (SQLException e) {
            System.out.println("Error at getContactList " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public List<String> getContactImageListByContactId(int contactId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<String> list = new ArrayList<>();
        try {
            String sql = "select * from contact_image where contactId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, contactId);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(rs.getString("imageText"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getContactImageListByContactId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public List<Contact> getContactListByAccountId(int accountId){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Contact> list = new ArrayList<>();
        try {
            String sql = "select * from contact where accountId = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            rs = ps.executeQuery();
            while(rs.next()){
                Contact contact = new Contact(rs.getInt("contactId"), DAOAccount.INSTANCE.getAccountByAccountId(rs.getInt("accountId")), rs.getString("email"), 
                        rs.getString("phoneNumber"), rs.getString("content"), rs.getTimestamp("contactDate"));
                contact.setImageList(getContactImageListByContactId(rs.getInt("contactId")));
                contact.setIsResponded(rs.getBoolean("isResponded"));
                list.add(contact);
                
            }
        } catch (SQLException e) {
            System.out.println("Error at getContactListByAccountId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public void insertContactImage(int contactId, String imageText){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "insert into contact_image values (?, ?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, contactId);
            ps.setString(2, imageText);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertContactImage " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
    }
    
    public void insertContact(int contactId, int accountId, String email, String phoneNumber, String content, Timestamp contactDate){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "insert into contact values(?, ?, ?, ?, ?, ?, 0)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, contactId);
            ps.setInt(2, accountId);
            ps.setString(3, email);
            ps.setString(4, phoneNumber);
            ps.setString(5, content);
            ps.setTimestamp(6, contactDate);
            ps.execute();
        } catch (SQLException e) {
            System.out.println("Error at insertContact " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
    }
    
    public static void main(String[] args) {
        ContactDAO.INSTANCE.getContactList().forEach(t -> System.out.println(t));
    }
}
