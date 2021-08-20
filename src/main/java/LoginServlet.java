import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pw = request.getParameter("pw");
        PrintWriter writer = response.getWriter();
        if (name.equals("KA") && pw.equals("123")){
            writer.println("Thanh cong");
        }
        else {
            writer.println("That bai");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pw = request.getParameter("pw");
        PrintWriter writer = response.getWriter();
        if (name.equals("KA") && pw.equals("123")){
            writer.println("Thanh cong");
        }
        else {
            writer.println("That bai");
        }
    }
}
