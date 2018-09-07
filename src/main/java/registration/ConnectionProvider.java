package main.java.registration;

import java.sql.Connection;
import java.sql.DriverManager;

import static main.java.registration.Provider.*;

public class ConnectionProvider {
    private static Connection connection = null;
    static {
        try{
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
        } catch (Exception e){
            System.out.println(e);
        }
    }

    public static Connection getConnection(){
        return connection;
    }
}
