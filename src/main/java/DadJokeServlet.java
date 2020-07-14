import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DadJokeServlet", urlPatterns = "/dadjoke")
public class DadJokeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String joke = request.getParameter("jokes");

        if(joke == null){
            joke = "hungry";
        }
        out.println("<h2>Hi " + joke + ", I'm Dad!</h2>");
        out.println("<a href='/portfolio'>My Portfolio</a>");
    }

}
