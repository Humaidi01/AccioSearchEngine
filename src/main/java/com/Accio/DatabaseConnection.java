package com.Accio;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    static Connection connection = null;

    public static Connection getConnection(){
        if(connection !=null){
            return connection;
        }
        String db = "sql6581469";
        String user = "sql6581469";
        String pwd = "eG2TA2D8h2";
        return getConnection(db, user, pwd);
    }
    private static Connection getConnection(String db, String user, String pwd){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql:// sql6.freesqldatabase.com/"+db+"?user="+user+"&password="+pwd);
        }
        catch(Exception exception){
            exception.printStackTrace();
        }
        return connection;
    }
}
