/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.AccountStatus;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nguye
 */
public class AccountStatusDAO extends DBContext{
    public static final AccountStatusDAO INSTANCE = new AccountStatusDAO();
    public AccountStatus getAccountStatusById(int id) throws SQLException{
        String sql = "select * from [Account_Status] where accountStatusId = ?";
        try {
            
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                 return new AccountStatus(rs.getInt("accountStatusId"), rs.getString("accountStatusDetail"));
                 
            }
        } catch (SQLException e) {
            status = "Error at AccountStatusDAO.getAccountStatusById " + e.getMessage();
        }
        return null;
    }
    
    public static void main(String[] args) {
//        AccountStatusDAO d = new AccountStatusDAO();
//        AccountStatus a = d.getAccountStatusById(5);
//        System.out.println(a);
        
//        AccountStatusDAO dao = new AccountStatusDAO();
//        AccountStatus acc = dao.getAccountStatusById(1);
//        System.out.println(acc);
        
    }
}
///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package DAO;
//
//import Model.AccountStatus;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
///**
// *
// * @author nguye
// */
//public class AccountStatusDAO extends DBContext{
//    public static final AccountStatusDAO INSTANCE = new AccountStatusDAO();
//    public AccountStatus getAccountStatusById (int id){
//        try {
//            String sql = "select * from Account_Status where accountStatusId = ?";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, id); 
//            ResultSet rs = ps.executeQuery();
//            if(rs.next()){
//                return new AccountStatus(id, rs.getString("accountStatusDetail"));
//            }
//        } catch (SQLException e) {
//            status = "Error at AccountStatusDAO.getAccountStatusById " + e.getMessage();
//        }
//        return null;
//    }
//    public static void main(String[] args) {
//        AccountStatusDAO dao = new AccountStatusDAO();
//        AccountStatus acc = dao.getAccountStatusById(1);
//        System.out.println(acc.getAccountStatusDetail());
//    }
//    
//}