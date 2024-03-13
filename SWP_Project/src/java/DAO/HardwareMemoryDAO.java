/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.HardwareMemory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author hoang
 */
public class HardwareMemoryDAO extends DBContext{
      public static final HardwareMemoryDAO INSTANCE = new HardwareMemoryDAO();
     public HardwareMemory getHardwareMemoryById(int hmID) throws SQLException{
        String sql = "select * from [HardwareMemory] where [hardwareMemoryId] = ?";
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, hmID);  
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return new HardwareMemory(rs.getInt("hardwareMemoryId"), rs.getString("hardwareMemory"));
            }
        } catch (SQLException e) {
            System.out.println("Error at getHardwareMemoryById " + e.getMessage());
        } finally{
            closeStatement(ps, null);
        }
        return null;
    }
}
