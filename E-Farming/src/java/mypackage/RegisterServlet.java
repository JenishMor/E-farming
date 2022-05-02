package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");

        User userModel = new User(name, email, phone, password);
        UserDb regUser = new UserDb(MyConnection.getConnection());

        if (regUser.saveUser(userModel)) {
            res.sendRedirect("login.jsp");
        } else {
            String errMsg = "User Alredy Available";
            HttpSession regSession = req.getSession();
            regSession.setAttribute("RegError", errMsg);
            res.sendRedirect("registration.jsp");
        }
    }
}
