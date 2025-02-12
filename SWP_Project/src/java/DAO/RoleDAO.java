/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nguye
 */
public class RoleDAO extends DBContext{
    public static final RoleDAO INSTANCE = new RoleDAO();
    
    public List<Role> getRoleList(){
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Role> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement("select * from [role]");
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Role(rs.getInt("roleId"), rs.getString("roleName")));
            }
        } catch (SQLException e) {
            System.out.println("Error at getRoleList " + e.getMessage());
        } finally {
            closeStatement(ps, rs);
        }
        return list;
    }
    
    public Role getRoleById(int id) throws SQLException{
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from [Role] where roleId = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);  
            rs = ps.executeQuery();
            if(rs.next()){
                return new Role(rs.getInt("roleId"), rs.getString("roleName"));
            }
        } catch (SQLException e) {
            status = "Error at RoleDAO. getRoleById " + e.getMessage();
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }
}
