/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rentalmobilfauzi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author USER
 */
public class database {
   
    private Connection connect;
    
    private String driverName ="com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost/db_rentalmobil";
    private String username = "root";
    private String password = "";
    
    public Connection getConnection(){
        if(connect == null) {
            try{
                Class.forName(driverName);
                System.out.println("Class Driver Ditemukan");
                connect = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return connect;
    }
    
    public static void main(String[] args) {
        database database = new database();
        
        database.getConnection();
    }
}
    

    