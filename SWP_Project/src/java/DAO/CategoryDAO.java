/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
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
    
}
