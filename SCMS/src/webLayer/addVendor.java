package webLayer;

import DataLayer.workerDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addVendor")
public class addVendor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        workerDetails a2 = new workerDetails();
        System.out.println("inside add vendor");
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cardno = request.getParameter("phone");
        String age = request.getParameter("itemid");

        System.out.println("addStudent username"+username);
        System.out.println("addStudent pwd"+password);
        if(a2.addUser(name,username,password,cardno,age)){
            request.getRequestDispatcher("/vendor.jsp").forward(request, response);
        }
        else {
            if(a2.f==1) {
                request.setAttribute("errorMessage", "Account with this username or Card Number already exists");
                request.getRequestDispatcher("/addVendor.jsp").forward(request, response);
            }
            else{
                request.setAttribute("errorMessage", "Enter a Valid card number ");
                request.getRequestDispatcher("/addVendor.jsp").forward(request, response);

            }

        }

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
