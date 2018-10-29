package webLayer;

import DataLayer.workerDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteWorker")
public class deleteWorker extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("username");
        System.out.println(username);
        workerDetails a6 =new workerDetails();
        if(!a6.delete1(username)){
            req.setAttribute("errorMessage","no account with such username exists");
            req.getRequestDispatcher("/deleteVendor.jsp").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("/vendor.jsp").forward(req, resp);
        }

    }
}
