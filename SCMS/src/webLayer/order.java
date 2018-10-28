package webLayer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "order")
public class order extends HttpServlet { public String FI;
    public String Q;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataLayer.accountDetails a7 = new DataLayer.accountDetails();
        FI = request.getParameter("foodid");
        Q = request.getParameter("quantity");
        int f=a7.decQuantity(FI, Q);
        if(f>0) {
            if (a7.dc == 1) {
                request.setAttribute("message", "Enjoy your Food");
            }
            else{
                request.setAttribute("message", "Enter valid food id");
            }
        }
        else{
            request.setAttribute("message", "Sorry ! Out of stock");

        }
        request.getRequestDispatcher("/buy.jsp").forward(request, response);


    }


}
