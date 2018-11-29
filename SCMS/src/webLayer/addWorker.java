package webLayer;

import DataLayer.workerDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addWorker")
public class addWorker extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



            workerDetails w7 = new workerDetails();
            System.out.println("inside add vendor");
            String name = request.getParameter("name");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String cardno = request.getParameter("phone");
            String age = request.getParameter("age");

            System.out.println("addCustomer username" + username);
            System.out.println("addCustomer pwd" + password);
            if (w7.addWorker(name, username, password, cardno, age)) {
                request.getRequestDispatcher("/worker.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Account with this id already exists");
                request.getRequestDispatcher("/addWorker.jsp").forward(request, response);

            }

        }
    }
