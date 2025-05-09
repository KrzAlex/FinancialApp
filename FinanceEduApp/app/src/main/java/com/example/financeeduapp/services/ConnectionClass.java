package com.example.financeeduapp.services;


import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {

    protected static String db ="ErasmusDev_Database";
    protected static String ip ="192.168.107.174";
    protected static String port ="3306";
    protected static String username ="erasmusroot";
    protected static String password ="admin";

    public Connection CONN(){
        Connection conn = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            String connectionString = "jdbc:mysql://"+ip+":"+port+"/"+db;
            conn = DriverManager.getConnection(connectionString, username, password);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return conn;
    }

}
