/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectwisata;

import java.sql.DriverManager;

/**
 *
 * @author user
 */
public class Koneksi {
    
     private static java.sql.Connection koneksi;
    
    static java.sql.Connection getKoneksi(){
    
        if (koneksi == null){
        try{
        
            String url = "jdbc:mysql://localhost:3306/objectwisata";
            String user = "root";
            String password = "";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            koneksi = DriverManager.getConnection(url, user, password);
            System.out.println("Berhasil Terhubung");
        }catch (Exception e){
            System.out.println("Gagal Terhubung");
        
         }
        
       }
        return koneksi;
    }
    
    public static void main (String args[]){
    getKoneksi();
    }
    
}
