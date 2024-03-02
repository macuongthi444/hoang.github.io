/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.AccountStatus;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class AccountStatusDAO extends DBContext{
    public static final AccountStatusDAO INSTANCE = new AccountStatusDAO();
    public AccountStatus getAccountStatusById (int id){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from accountStatus where accountStatusId = ?";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                return new AccountStatus(id, rs.getString("accountStatusDetail"));
            }
        } catch (SQLException e) {
            status = "Error at AccountStatusDAO.getAccountStatusById " + e.getMessage();
        } finally{
            if(ps != null) try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(AccountStatusDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            if(rs != null) try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(AccountStatusDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }
    
    public static void main(String[] args) {
        AccountStatusDAO dao = new AccountStatusDAO();
        AccountStatus acc = dao.getAccountStatusById(1);
        System.out.println(acc.getAccountStatusDetail());
    }
    
}
