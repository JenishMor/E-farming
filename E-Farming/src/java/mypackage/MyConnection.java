package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author ASUS
 */
public class MyConnection {
    private static Connection con = null;

    public static Connection getConnection() {
        String url = "jdbc:mysql://127.0.0.1:3306/register";
        String user = "mydb";
        String pw = "mydb";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pw);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
