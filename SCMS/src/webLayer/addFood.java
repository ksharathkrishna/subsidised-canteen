package webLayer;

import DataLayer.accountDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addFood")
public class addFood extends HttpServlet {
    public String FI;
    public String Q;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        accountDetails a6 = new accountDetails();
        FI = request.getParameter("foodid");
        Q = request.getParameter("quantity");
        a6.updQuantity(FI, Q);
        if(a6.ac==1) {
            request.setAttribute("message", "Successfully updated");
        }
        else{
            request.setAttribute("message", "Invalid foodID");
        }
        request.getRequestDispatcher("/addFood.jsp").forward(request, response);


    }

}