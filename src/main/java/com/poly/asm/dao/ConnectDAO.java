package com.poly.asm.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class ConnectDAO {

    protected Connection conn;

    public ConnectDAO(){
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=QLBANHANG";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(url, "DESKTOP-NVM220J\\huydu", "");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
