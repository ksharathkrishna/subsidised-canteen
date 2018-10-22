package webLayer;

import DataLayer.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "invLogin")
public class invLogin extends HttpServlet {
    public final String adminName = "abc@xyz";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // String username = request.getParameter("un");
        // request.getParameter()
        //System.out.println(username);

        // request.setAttribute("password", request.getParameter("password"));

        workerDetails a1 = new workerDetails();
        if (a1.isPasswordCorrect(adminName,request.getParameter("password"))) {

            request.getRequestDispatcher("/invSection.jsp").forward(request, response);

        } else {
            request.setAttribute("errorMessage", "Invalid  password");
            request.getRequestDispatcher("/inventory.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

