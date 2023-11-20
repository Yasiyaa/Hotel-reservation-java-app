/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication1;

import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Chamod
 */
public class DBConnection {
    
     public static Connection con;
    
    public static Connection creatConnection()
    {
       String path = "jdbc:mysql://localhost:3306/guest_details";
        try 
        {
            con = DriverManager.getConnection(path,"root","");
        } 
        catch (SQLException ex) 
        {
            JOptionPane.showMessageDialog(null, ex);
        }
        return con;
    }
    
    
    public int searchUser(String user,String pass){
    
        int count = 0;
        ResultSet rst;
        
         try {
             Statement st = DBConnection.creatConnection().createStatement();
             
             String query = "select * from guest_details where email ='"+user+"' and password ='"+pass+"'";
             rst = st.executeQuery(query);
      
             
             if(rst.next()){
             count = 1;
             }else{
             count = 0;
             }
             
         } catch (SQLException ex) {
             Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
         }
      
        
        return count;
    }
    
    
    public ResultSet getUserInformation(String user,String pass){
        ResultSet rst = null;
        
         try {
             Statement st = DBConnection.creatConnection().createStatement();
             
             String query = "select * from guest_details where email ='"+user+"' and password ='"+pass+"'";
             rst = st.executeQuery(query);
      
            
             
         } catch (SQLException ex) {
             Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
         }
        
        
        return rst;
    }
    
}
