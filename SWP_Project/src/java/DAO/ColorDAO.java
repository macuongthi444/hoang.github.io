/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Color;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author hoang
 */
public class ColorDAO extends DBContext{
    public static final ColorDAO INSTANCE = new ColorDAO();
     public Color getColorById(int colorID) {
        PreparedStatement ps = null;
        ResultSet rs = null;
            String sql = "select * from [HardwareMemory] where [hardwareMemoryId] = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, colorID);  
            rs = ps.executeQuery();
            if(rs.next()){
                return new Color(rs.getInt("colorId"), rs.getString("color"));
            }
        } catch (SQLException e) {
            
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }
}
