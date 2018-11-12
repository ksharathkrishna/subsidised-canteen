package webLayer;
import DataLayer.reviews;

import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet(name = "Reviews")
public class Reviews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        System.out.println("inside servelet");



                String name = request.getParameter("name");
                String country = request.getParameter("country");
        String service = request.getParameter("service");
                if ((name == null || name.equals(""))
                        || (country == null || country.equals(""))) {
                    request.setAttribute("error", "Mandatory Parameters Missing");
                    request.getRequestDispatcher("/Mongo.jsp").forward(request, response);

                } else {
                     reviews r = new reviews();
                     r.addReview(name,country,service);
                    request.setAttribute("error", "Thank You ");
                    request.getRequestDispatcher("/feedBack.jsp").forward(request, response);

                }
       // request.getRequestDispatcher("/feedback.jsp").forward(request, response);

    }

        }







