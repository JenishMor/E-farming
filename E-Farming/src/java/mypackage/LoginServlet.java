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
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();

        String uemail = req.getParameter("uemail");
        String upass = req.getParameter("upass");

        UserDb db = new UserDb(MyConnection.getConnection());
        User user = db.userLogin(uemail, upass);
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("logUser", user);
            res.sendRedirect("welcome.jsp");
        } else {
//            out.println("User Not Found <br>");
//            out.println("<a href='registration.jsp'>Register Here</a>");
            res.sendRedirect("error.jsp");
        }
    }
}
