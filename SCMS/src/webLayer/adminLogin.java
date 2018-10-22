package webLayer;

import DataLayer.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "adminLogin")
public class adminLogin extends HttpServlet {
    public final String adminName = "xyz@abc";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // String username = request.getParameter("un");
       // request.getParameter()
        //System.out.println(username);

       // request.setAttribute("password", request.getParameter("password"));

        accountDetails a1 = new accountDetails();
        if (a1.isPasswordCorrect(adminName,request.getParameter("password"))) {

            request.getRequestDispatcher("/admin.jsp").forward(request, response);

        } else {
            request.setAttribute("errorMessage", "Invalid  password");
            request.getRequestDispatcher("/adminLogin.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

