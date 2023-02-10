/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author oXCToo
 */
public class MyConnection {
    Connection conn = null;
    public static Connection conDB()
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/introse", "root", "");
            return con;
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Exception : "+ex.getMessage());
           return null;
        }
    }
    //make sure you add the lib
}
