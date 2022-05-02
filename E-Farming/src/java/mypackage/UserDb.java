package mypackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ASUS
 */
public class UserDb {
    
    Connection con;
    
    public UserDb(Connection con) {
        this.con = con;
    }

    //Register user
    public boolean saveUser(User user) {
        boolean set = false;
        try {
            String query = "insert into farm values(?,?,?,?)";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPhone());
            stmt.setString(4, user.getPassword());
            stmt.executeUpdate();
            
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }

    //For User Login
    public User userLogin(String email, String password) {
        User usr = null;
        try {
            String query = "select * from farm where email=? and password=?";
            
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                usr = new User();
                usr.setName(rs.getString("user_name"));
                usr.setEmail(rs.getString("email"));
                usr.setPhone(rs.getString("phone"));
                usr.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usr;
    }
}
