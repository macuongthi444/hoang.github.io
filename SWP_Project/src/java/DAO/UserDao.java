/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
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

    public Account getAccountById(int id) {
//        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Account where accountId=?";
            connection = new DBContext().connection;
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Account acc = new Account(rs.getInt("accountId"), rs.getString("username"), rs.getString("password"), rs.getString("email"), RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")));
                return acc;
            }

        } catch (SQLException e) {
            System.out.println("Error at getAccountById");
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }

    public static void main(String[] args) {
        UserDao dao = new UserDao();
        Account acc = dao.getAccountById(1);
        System.out.println(acc.getUsername());
    }
}
