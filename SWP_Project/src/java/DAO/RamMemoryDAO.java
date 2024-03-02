/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Model.RamMemory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author hoang
 */
public class RamMemoryDAO extends DBContext{
     public static final RamMemoryDAO INSTANCE = new RamMemoryDAO();
     public RamMemory getRamMemoryById(int ramMemoryID) {
        
            String sql = "select * from [RamMemory] where [ramMemoryId] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ramMemoryID);  
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return new RamMemory(rs.getInt("ramMemoryId"), rs.getString("ramMemory"));
            }
        } catch (SQLException e) {
            
        }
        return null;
    }
}
