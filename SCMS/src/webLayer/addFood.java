package webLayer;

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
        DataLayer.accountDetails a6 = new DataLayer.accountDetails();
        FI = request.getParameter("foodid");
        Q = request.getParameter("quantity");
        a6.updQuantity(FI, Q);
        request.setAttribute("message","Successfully updated");
        request.getRequestDispatcher("/addFood.jsp").forward(request, response);

    }

}