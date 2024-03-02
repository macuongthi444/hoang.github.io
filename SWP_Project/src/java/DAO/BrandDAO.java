/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Model.Brand;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author hoang
 */
public class BrandDAO extends DBContext{
     public static final BrandDAO INSTANCE = new BrandDAO();
     public Brand getBrandById(int brandID) {
        
            
        try {
            String sql = "select * from Brand where brandId = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brandID);  
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               Brand b = new Brand(rs.getInt("brandId"),
                        rs.getString("brandName"));
                        return b;  
            }
          
        } catch (SQLException e) {
            
        }
        return null;
    }
     public static void main(String[] args) {
        BrandDAO d = new BrandDAO();
        Brand p = d.getBrandById(5);
         System.out.println(p);
    }
}
