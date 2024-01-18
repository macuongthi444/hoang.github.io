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
    public AccountStatus getAccountStatusById (int id){
        try {
            String sql = "select * from accountStatus where accountStatusId = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return new AccountStatus(id, rs.getString("accountStatusDetail"));
            }
        } catch (SQLException e) {
            status = "Error at AccountStatusDAO.getAccountStatusById " + e.getMessage();
        }
        return null;
    }
    
    
}
