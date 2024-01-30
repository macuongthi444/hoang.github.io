/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.AccountProfile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author This PC
 */
public class UserDao extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account getAccountById(int id) {

        try {
            String sql = "select * from Account where accountId=?";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {

                Account acc = new Account(rs.getInt("accountId"), rs.getString("username"), rs.getString("password"), rs.getString("email"), RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")));
                return acc;
            }

        } catch (Exception e) {

        }
        return null;
    }

    public void editAccountById(int id, String name, String date, int gender) {

        try {
            String sql = "UPDATE [dbo].[Account_Profile]\n"
                    + "   SET \n"
                    + "      [fullName] = ?\n"
                    + "      ,[birthDate] = ?\n"
                    + "      ,[gender] = ?\n"
                    + "      \n"
                    + " WHERE [accountId] = ?";
            conn = new DBContext().connection;
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, date);
            ps.setInt(3, gender);
            ps.setInt(4, id);
            
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }
    public AccountProfile getAccountProfileById(int id) {

        try {
            String sql = "select * from [Account_Profile] where [accountId]=?";
           
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            UserDao dao = new UserDao();
            if (rs.next()) {
      
                AccountProfile acc = new AccountProfile(
                        dao.getAccountById(rs.getInt("accountId")),
                        rs.getString("fullName"),
                        rs.getDate("birthDate"),
                        rs.getBoolean("gender"),
                        rs.getString("avatar"));
                return acc;
            }

        } catch (Exception e) {

        }
        return null;
    }

    public static void main(String[] args) {
        UserDao dao = new UserDao();
        dao.editAccountById(15, "bao", "", 1);
        

    }
}
