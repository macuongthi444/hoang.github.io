/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MH
 */
public class DAOAccount extends DBContext {
    PreparedStatement stm = null;
    ResultSet rs = null;

     public Account login (String username,String password){
        try {
            String sql = "select *from Account\n" +
"		where username=?\n" +
"		and password =?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            
            if (rs.next()) {   
                int id = rs.getInt(1);

               Account ac = new Account(id, rs.getString("username"), rs.getString("password"), rs.getString("email"), 
                       RoleDAO.INSTANCE.getRoleById(rs.getInt("RoleId")),
                       AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")) );
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
     public Account checkAccountExist (String username){
        String sql = "select * from [Account] where username=?";

        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            
            if (rs.next()) {   
            int id = rs.getInt(1);
            Account ac = new Account(id, rs.getString("username"), rs.getString("password"), rs.getString("email"), 
                       RoleDAO.INSTANCE.getRoleById(rs.getInt("RoleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")) );
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
//     public void signup(String user, String email, String pass) {
//         
//        String sql = "INSERT INTO [dbo].[Account]\n" +
//"           ([username]\n" +
//"           ,[email]\n" +
//"           ,[roleId]\n" +
//"           ,[password]\n" +
//
//"     VALUES\n" +
//"           (?,?,?,?)";
//       
//        try {
//            stm = connection.prepareStatement(sql);
//            stm.setString(1, user);
//            stm.setString(2, email);
//            stm.setString(3, "1");
//            stm.setString(4, pass);
//           
//            stm.executeUpdate();
//
//        } catch (Exception e) {
//        }
//    } 
     public void signup(String user, String email, String pass) {
    String sql = "INSERT INTO [dbo].[Account] " +
                 "([username], [email], [roleId], [password]) " +
                 "VALUES (?, ?, ?, ?)";

    try {
        stm = connection.prepareStatement(sql);
        stm.setString(1, user);
        stm.setString(2, email);
        stm.setString(3, "1"); // Sử dụng giá trị roleId cố định, có thể thay đổi tùy thuộc vào logic của ứng dụng
        stm.setString(4, pass);

        stm.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Đảm bảo đóng các tài nguyên như PreparedStatement
        try {
            if (stm != null) {
                stm.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


    
    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        Account ac = dao.login("admin","123" );
        System.out.println(ac.toString());
    }
    
}
