/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion {
  
    Connection conection;
     public  Conexion(){
         try {
              Class.forName("com.mysql.jdbc.Driver");
             conection =  DriverManager.getConnection("jdbc:mysql://localhost:3307/sistemaventas","root","");
         } catch (Exception e) {
             System.err.print("Error"+e);
         }
     }
     public Connection getConnection(){
         return conection;
     }
}
