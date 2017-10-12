/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.entity.Users;
import com.entity.UsersRole;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ngquangdat
 */
public class UsersModel {

    public boolean checkUsers(String username, String password) throws Exception {
        boolean check = false;
        ArrayList<Users> listUsers = new ArrayList<>();
        String sql = "SELECT* FROM Users";
        Connection connection = new DBContext().getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            listUsers.add(new Users(rs.getString("username"), rs.getString("password")));
        }
        connection.close();
        for (int i = 0; i < listUsers.size(); i++) {
            if(username.equalsIgnoreCase(listUsers.get(i).getUsername())&&password.equals(listUsers.get(i).getPassword())){
                check = true;
            }
            
        }
        return check;
    }
    
    public String getRole(String username) throws Exception{
        String role = "";
        String sql = "SELECT Roles.role_detail FROM Users JOIN UserRole ON Users.username = UserRole.username JOIN Roles ON UserRole.role_id = Roles.role_id WHERE Users.username = ?";
        Connection connection = new DBContext().getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            role = rs.getString("role_detail");
        }
        connection.close();
        return role;
    }
}
