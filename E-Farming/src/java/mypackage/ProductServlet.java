package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author ASUS
 */
public class ProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();

        Connection con = null;
        PreparedStatement stmt = null;

        String url = "jdbc:mysql://127.0.0.1:3306/register";
        String user = "mydb";
        String pw = "mydb";

        String pname = req.getParameter("name");
        String price = req.getParameter("price");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String add = req.getParameter("address");

        try {
//            out.println(pname + "<br>");
//            out.println(price + "<br>");
//            out.println(phone + "<br>");
//            out.println(email + "<br>");
//            out.println(add + "<br>");

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pw);
            String query = "insert into product values(?,?,?,?,?)";
            stmt = con.prepareStatement(query);

            stmt.setString(1, pname);
            stmt.setString(2, price);
            stmt.setString(3, phone);
            stmt.setString(4, email);
            stmt.setString(5, add);
            stmt.executeUpdate();
            res.sendRedirect("thanks.jsp");
        } catch (Exception e) {
            out.println("Error: " + e);
        }
    }
}
