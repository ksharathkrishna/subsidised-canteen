package webLayer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DataLayer.*;

@WebServlet(name = "addCustomer")
public class addCustomer extends HttpServlet {

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        accountDetails a2 = new accountDetails();
        System.out.println("inside add student");
        //String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cardno = request.getParameter("cardno");
        //String age = request.getParameter("age");

    System.out.println("addCustomer username"+username);
    System.out.println("addCustomer pwd"+password);
    if(a2.addUser(username,password,cardno)){
            request.getRequestDispatcher("/adminSection.jsp").forward(request, response);
        }
        else {
            if(a2.f==1) {
                request.setAttribute("errorMessage", "Account with this username or Card Number already exists");
                request.getRequestDispatcher("/addCustomer.jsp").forward(request, response);
            }
            else{
                request.setAttribute("errorMessage", "Enter a Valid card number ");
                request.getRequestDispatcher("/addCustomer.jsp").forward(request, response);

            }

    }

    }


}
