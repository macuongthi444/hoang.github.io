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
    
//    public void loadCategory (){
//        try {
//            String sql = "Select * from category";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            categoryList = new ArrayList<>();
//            while(rs.next()){
//                categoryList.add(new Category(rs.getInt("categoryId"), rs.getString("categoryName")));
//            }
//        } catch (SQLException e) {
//            status = "Error at CategoryDAO.loadCategory " + e.getMessage();
//        }
//        System.out.println("skjefhskejfh");
//    }

    public List<Category> getCategoryList() {
        List<Category> list = new ArrayList<>();
        try {
            String sql = "Select * from category";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt("categoryId"), rs.getString("categoryName")));
            }
            ps.close();
            
        } catch (SQLException e) {
            status = "Error at CategoryDAO.loadCategory " + e.getMessage();
        }
        return list;
    }
    
    public static void main(String[] args) {
        System.out.println(CategoryDAO.INSTANCE.getCategoryList());
    }
}
