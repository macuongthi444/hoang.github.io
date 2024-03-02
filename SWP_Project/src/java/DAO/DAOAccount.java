/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;




import Model.Account;
import Model.AccountProfile;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MH
 */
public class DAOAccount extends DBContext {


    public Account login(String username, String password) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String sql = "select *from Account\n"
                    + "		where username=?\n"
                    + "		and password =?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();

            if (rs.next()) {
                int id = rs.getInt(1);

                Account ac = new Account(id, rs.getString("username"), rs.getString("password"), rs.getString("email"),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("RoleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            closeStatement(stm, rs);
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        String sql = "select * from [Account] where username=?";
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();

            if (rs.next()) {
                int id = rs.getInt(1);
                Account ac = new Account(id, rs.getString("username"), rs.getString("password"), rs.getString("email"),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("RoleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            closeStatement(stm, rs);
        }
        return null;
    }
     public List<Account> getAllAccount(){
        String sql = "select * from [Account]";
        List<Account> list = new ArrayList<>();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            
            while (rs.next()) {   
            int id = rs.getInt(1);
                Account ac = new Account(id, rs.getString("username"), rs.getString("password"), rs.getString("email"), 
                       RoleDAO.INSTANCE.getRoleById(rs.getInt("RoleId")), AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")) );
                list.add(ac);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Error at getAllAccount " + ex.getMessage());
        } finally{
            closeStatement(stm, rs);
        }
        return list;
        
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
        String sql = "INSERT INTO [dbo].[Account] "
                + "([username], [email], [roleId], [password]) "
                + "VALUES (?, ?, ?, ?)";
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, email);
            stm.setString(3, "1"); // Sử dụng giá trị roleId cố định, có thể thay đổi tùy thuộc vào logic của ứng dụng
            stm.setString(4, pass);
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error at signup " + e.getMessage());
        } finally {
            // Đảm bảo đóng các tài nguyên như PreparedStatement
            closeStatement(stm, rs);
        }
    }

    public AccountProfile getAccountProfileById(int id) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String sql = "select * from [Account_Profile] where [accountId]=?";
           
            stm = connection.prepareStatement(sql);
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

        } catch (SQLException e) {
            System.out.println("Error at getAccountProfileById " + e.getMessage());
        } finally{
            closeStatement(stm, rs);
        }
        return null;
    }
    
    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        AccountProfile acc = dao.getAccountProfileById(14);
        System.out.println(dao.login("admin", "123"));
    }

}
