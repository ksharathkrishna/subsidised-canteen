package webLayer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DataLayer.*;
@WebServlet(name = "deleteStudent")
public class deleteStudent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("username");
        System.out.println(username);
        accountDetails a5 =new accountDetails();
        if(!a5.delete(username)){
            req.setAttribute("errorMessage","no account with such username exists");
            req.getRequestDispatcher("/deleteCustomer.jsp").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("/admin.jsp").forward(req, resp);
        }
    }
}
