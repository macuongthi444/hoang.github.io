/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
import Model.Coupon;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nguye
 */
public class CategoryDAO extends DBContext{
    public static final CategoryDAO INSTANCE = new CategoryDAO();
    private List<Category> categoryList;
    
    public void loadCategory (){
        try {
            String sql = "Select * from category";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            categoryList = new ArrayList<>();
            while(rs.next()){
                categoryList.add(new Category(rs.getInt("categoryId"), rs.getString("categoryName")));
            }
        } catch (SQLException e) {
            status = "Error at CategoryDAO.loadCategory " + e.getMessage();
        }
    }

    public List<Category> getCategoryList() {
        loadCategory();
        return categoryList;
    }
    public Category getCategoryByID(int categoryId) {
        String sql = "select * from [Category] where [categoryId] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                return c;
                 
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        CategoryDAO d = new CategoryDAO();
        Category c = d.getCategoryByID(3);
        System.out.println(c);
    }
    
}
