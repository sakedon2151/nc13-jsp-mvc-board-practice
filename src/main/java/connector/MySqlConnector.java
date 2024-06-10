package connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnector {
    private final String URL = "jdbc:mysql://localhost:3306/board";
    private final String USERNAME = "root";
    private final String PASSWORD = "12345678";

    public Connection makeConnection() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // 여기서 ClassNotFoundException 발생시 catch
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD); // 여기서 SQLException 발생시 catch

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }
}
