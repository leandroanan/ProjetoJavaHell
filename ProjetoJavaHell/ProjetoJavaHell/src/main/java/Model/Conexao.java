/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author AX4B
 */
public class Conexao {

    public static Connection abrirConexao() {
        
        try {
            Class.forName("org.sqlite.JDBC");
            Connection conn = DriverManager.getConnection(
            "jdbc:sqlite:C:\\Users\\AX4B\\Documents\\JavaHell.db");
            conn.setAutoCommit(false);
            System.out.println("Conectado com banco");
            return conn;
        } catch (ClassNotFoundException | SQLException | HeadlessException e) {
            System.out.println("nao conectado com banco");
            System.out.println(e);
            return null;
        }
    }

}


