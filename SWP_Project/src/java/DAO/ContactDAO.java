/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Contact;
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
            String sql = "insert into contact values(?, ?, ?, ?, ?, ?)";
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
