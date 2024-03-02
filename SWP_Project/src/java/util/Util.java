/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import DAO.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nguye
 */
public class Util {
    private static final DBContext dBContext = new DBContext();
    public static int generateId(String idField, String table){
//        String sql = "select ? from ? ";
        String sql = "select [" + idField + "] from [" + table + "]";
        try {
            PreparedStatement ps = dBContext.getConnection().prepareStatement(sql);
//            ps.setString(1, idField);
//            ps.setString(2, table);
            ResultSet rs = ps.executeQuery();
            List<Integer> idList = new ArrayList<>();
            while(rs.next()){
                idList.add(rs.getInt(idField));
            }
            if(idList.isEmpty()) return 1;
            idList.sort((o1, o2) -> {return o1 - o2;});
            return idList.get(idList.size() - 1) + 1;
        } catch (SQLException e) {
            System.out.println("Error at Util.generateId " + e.getMessage());
        }
        return 1;
    }
    public static void main(String[] args) {
        System.out.println(generateId("optionId", "option"));
    }
}
