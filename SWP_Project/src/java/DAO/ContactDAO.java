/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;

/**
 *
 * @author nguye
 */
public class ContactDAO extends DBContext{
    public static final ContactDAO INSTANCE = new ContactDAO();
    
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
        ContactDAO.INSTANCE.insertContact(1, 2, "abca", "2893742983473", "abca", new Timestamp(Calendar.getInstance().getTimeInMillis()));
    }
}
