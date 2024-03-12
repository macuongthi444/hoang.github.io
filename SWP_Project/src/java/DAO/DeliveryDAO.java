/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.AccountProfile;
import Model.DeliveryMan;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vinhp
 */
public class DeliveryDAO extends DBContext {
    
    public static final DeliveryDAO INSTANCE = new DeliveryDAO();
    
    public List<AccountProfile> getAllDeliveryMan() {
        List<AccountProfile> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select ap.* from Account_Profile ap join Account a on ap.accountId = a.accountId where a.roleId=6";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AccountProfile(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getBoolean(4), rs.getString(5)));
            }
            return list;
        } catch (SQLException e) {
            System.out.println("error at getAllDeliveryManByAccountId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public List<DeliveryMan> getDeliveryCompanyByAccountId(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<DeliveryMan> list = new ArrayList<>();
        String sql = "select * from deliveryMan_Company where accountId= ? ";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DeliveryMan(rs.getInt(1), rs.getString(2)));
            }
            return list;
        } catch (SQLException e) {
            System.out.println("error at getAllDeliveryManByAccountId " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return null;
    }
    
    public static void main(String[] args) {
        DeliveryDAO d = new DeliveryDAO();
        List<AccountProfile> l = d.getAllDeliveryMan();
        List<DeliveryMan> l2= d.getDeliveryCompanyByAccountId(4);
        for (AccountProfile company : l) {
            System.out.println(company.getAvatar());
        }
    }
}
