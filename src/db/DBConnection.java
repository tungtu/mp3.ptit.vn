package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String HOST_NAME = "localhost";
    private static final String DB_NAME = "java";
    private static final String USER = "root";
    private static final String PASS = "root";

    private static Connection connection;

    private static Connection getConnect(){
        if (connection == null){
            String url = "jdbc:mysql://localhost:3306/" + DB_NAME;
//            Class.forName("");
//            connection = DriverManager.getConnection(url, USER, PASS);
        }
        return connection;
    }
}
