/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import Model.AccountProfile;
import Model.AccountStatus;
import Model.Chart;
import Model.Role;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author This PC
 */
public class UserDao extends DBContext {

    public static final UserDao INSTANCE = new UserDao();

    public List<Account> getAllAccount() {
        ArrayList<Account> arr = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Account ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                arr.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")),
                        AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId"))));

            }

        } catch (SQLException e) {
            
        } finally{
            closeStatement(ps, rs);
        }
        return arr;
    }

    public Account getAccountById(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Account where accountId=?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {

                Account acc = new Account(rs.getInt("accountId"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")),
                        AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId")));
                return acc;
            }

        } catch (SQLException e) {
            System.out.println("Error at getAccountById " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }

    public void editAccountById(int id, String name, String date, int gender) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "UPDATE [dbo].[Account_Profile]\n"
                    + "   SET \n"
                    + "      [fullName] = ?\n"
                    + "      ,[birthDate] = ?\n"
                    + "      ,[gender] = ?\n"
                    + "      \n"
                    + " WHERE [accountId] = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, date);
            ps.setInt(3, gender);
            ps.setInt(4, id);
            
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Error at editAccountById " + e.getMessage());

        } finally{
            closeStatement(ps, rs);
        }

    }
    
    public List<AccountProfile> getAllAccountAndProfile() {
        ArrayList<AccountProfile> arr = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from  Account_Profile";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                arr.add(new AccountProfile(
                        UserDao.INSTANCE.getAccountById(rs.getInt("accountId")),
                        rs.getString("fullName"),
                        rs.getDate("birthDate"),
                        rs.getBoolean("gender"),
                        rs.getString("avatar")));

            }

        } catch (Exception e) {
            System.out.println(e);
        } finally{
            closeStatement(ps, rs);
        }
        return arr;
    }

    public AccountProfile getAccountProfileById(int id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from [Account_Profile] where [accountId]=?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {

                AccountProfile acc = new AccountProfile(
                        UserDao.INSTANCE.getAccountById(rs.getInt("accountId")),
                        rs.getString("fullName"),
                        rs.getDate("birthDate"),
                        rs.getBoolean("gender"),
                        rs.getString("avatar"));
                return acc;
            }

        } catch (SQLException e) {
            System.out.println("Error at getAccountProfileById " + e.getMessage());
        } finally{
            closeStatement(ps, rs);
        }
        return null;
    }

    public void updateAcount1(String username, String email, int role, int accountStatusId,
            String fullName, Date birthDate, boolean gender, int id) {
        String sql = "UPDATE [SWP_Project_Gr6].[dbo].[Account]\n"
                + "SET \n"
                + "    [username] =?,\n"
                + "    [email] = ?,\n"
                + "    [roleId] = ?,\n"
                + "    [accountStatusId] = ?\n"
                + "FROM [SWP_Project_Gr6].[dbo].[Account] AS A\n"
                + "JOIN [Account_Profile] AS B ON A.[accountId] = B.[accountId]\n"
                + "WHERE A.[accountId] = ?;\n"
                + "\n"
                + "UPDATE [Account_Profile]\n"
                + "SET \n"
                + "    [fullName] = ?,\n"
                + "    [birthDate] = ?,\n"
                + "    [gender] = ?\n"
                + "FROM [Account_Profile] AS B\n"
                + "JOIN [SWP_Project_Gr6].[dbo].[Account] AS A ON A.[accountId] = B.[accountId]\n"
                + "WHERE A.[accountId] = ?;";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setInt(3, role);
            ps.setInt(4, accountStatusId);
            ps.setInt(5, id);
            ps.setString(6, fullName);
            ps.setDate(7, birthDate);
            ps.setBoolean(8, gender);
            ps.setInt(9, id);

            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateAcount(int role, int accountStatusId, int id) {
        String sql = "  UPDATE [SWP_Project_Gr6].[dbo].[Account]\n"
                + "SET \n"
                + "    [roleId] = ?,\n"
                + "    [accountStatusId] = ?\n"
                + "WHERE\n"
                + "    [accountId] = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, role);
            ps.setInt(2, accountStatusId);
            ps.setInt(3, id);

            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Account> getAccountByRoleStatus(String role, String status) {
        List<Account> list = new ArrayList<>();

        String sql = "select  *from Account a join Role r on a.roleId=r.roleId\n"
                + "join Account_Status s on a.accountStatusId=s.accountStatusId\n"
                + "  where r.roleName like ? and s.accountStatusDetail like ?";
        try {
            if (role == null || role.isEmpty()) {
                role = "";
            }
            if (status == null || status.isEmpty()) {
                status = "";
            }
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + role);
            ps.setString(2, status + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")),
                        AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId"))));

            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Role> getRole() {
        List<Role> list = new ArrayList<>();

        String sql = "select * from [Role]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Role(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Account> getStatus(String status) {
        List<Account> list = new ArrayList<>();

        String sql = "select  *from Account a join Role r on a.roleId=r.roleId\n"
                + "join Account_Status s on a.accountStatusId=s.accountStatusId\n"
                + "  where s.accountStatusDetail like ?";
        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + status + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")),
                        AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId"))));

            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<AccountStatus> getAccountStatus() {
        List<AccountStatus> list = new ArrayList<>();

        String sql = "select * from [Account_Status]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AccountStatus(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Account> searchByName(String searchTxt) {
        List<Account> list = new ArrayList<>();

        String sql = "select *from Account a join Account_Profile p on a.accountId=p.accountId\n"
                + "  where a.username like ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            if (searchTxt == null || searchTxt.isEmpty()) {
                searchTxt = "";
            }
            ps.setString(1, "%" + searchTxt + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        RoleDAO.INSTANCE.getRoleById(rs.getInt("roleId")),
                        AccountStatusDAO.INSTANCE.getAccountStatusById(rs.getInt("accountStatusId"))));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public void addUser(String userName, String password, int role) {
        String sql = "insert into Account values(?,?,?,?, 1)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, userName + "@gmail.com");
            ps.setInt(4, role);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Account> getListByPage(List<Account> list, int start, int end) {
        ArrayList<Account> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Chart> countAccount() {
        List<Chart> list = new ArrayList<>();

        String sql = "  select r.roleName ,count(a.accountId) from [Account] a \n"
                + "  join Role r on a.roleId=r.roleId\n"
                + "  group by r.roleName";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Chart chart = new Chart(
                        rs.getString(1),
                        rs.getInt(2));

                list.add(chart);
            }
            return list;
        } catch (SQLException e) {
            return null;
        }

    }

    public int countAccountRole1() {

        String sql = "  select count(a.accountId) from [Account] a \n"
                + "  where a.roleId = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (rs.getInt(1));
            }

        } catch (SQLException e) {

        }
        return 0;
    }

    public int countAccountRole3() {

        String sql = "  select count(a.accountId) from [Account] a \n"
                + "  where a.roleId = 3";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (rs.getInt(1));
            }

        } catch (SQLException e) {

        }
        return 0;
    }

    public int countAccountRole4() {

        String sql = "  select count(a.accountId) from [Account] a \n"
                + "  where a.roleId = 4";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (rs.getInt(1));
            }

        } catch (SQLException e) {

        }
        return 0;
    }

    public int countAccountRole5() {

        String sql = "  select count(a.accountId) from [Account] a \n"
                + "  where a.roleId = 5";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (rs.getInt(1));
            }

        } catch (SQLException e) {

        }
        return 0;
    }

    public static void main(String[] args) {
        UserDao dao = new UserDao();
        Account acc = dao.getAccountById(53);
        List<Account> arr = dao.getAllAccount();
        AccountProfile acc1 = dao.getAccountProfileById(53);
        List<Account> arr1 = dao.getAccountByRoleStatus("Active", "");
        List<AccountProfile> ap = dao.getAllAccountAndProfile();
        List<Chart> arr11 = dao.countAccount();
        int arr232 = dao.countAccountRole1();
        // List<Account> as = dao.searchByName("admin");
        //System.out.println(as);
        //  System.out.println(ap.get(1).getAccount().getAccountStatus());
        // System.out.println(acc);
         System.out.println(arr11.get(1).getRoleName());
        //System.out.println(arr232);
        //      dao.updateAcount("hoang1", "hssd@gmail.com",3, 6, "Hoang", Date.valueOf("2002-12-16"), true, 31);
//        System.out.println(arr);
//        System.out.println(acc1.isGender());
        //System.out.println(acc.getUsername());
    }
}
