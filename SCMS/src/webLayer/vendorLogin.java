package webLayer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "vendorLogin")
public class vendorLogin extends HttpServlet {
    public static String un;
    public static String q;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataLayer.workerDetails w2=new DataLayer.workerDetails();
        un = request.getParameter("username");
        q=request.getParameter("quantity");
        if (w2.isPasswordCorrect(request.getParameter("username"),request.getParameter("password"))){
            request.setAttribute( "message","Successfully added to inventory");
            w2.updQuantity(un,q);

            request.getRequestDispatcher("/vendorReciept.jsp").forward(request, response);

            // request.getRequestDispatcher("/generateToken.jsp").forward(request, response);

        } else {
            request.setAttribute("errorMessage", "Invalid Login");
            // request.setAttribute("un",un);
            request.getRequestDispatcher("/vendorLogin.jsp").forward(request, response);

        }

    }
    public String getUn()
    {
        return un;
    }

}
