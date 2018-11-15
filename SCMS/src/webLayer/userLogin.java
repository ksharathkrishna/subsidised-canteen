package webLayer;

import DataLayer.accountDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

@WebServlet( name = "userLogin")
public class userLogin extends HttpServlet {
public  String un;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        accountDetails a3 = new accountDetails();
        un = request.getParameter("username");
        if (a3.isPasswordCorrect(request.getParameter("username"),request.getParameter("password"))) {

            Calendar cal = GregorianCalendar.getInstance();
            int hr = cal.get(Calendar.HOUR_OF_DAY);
            //System.out.println(cal.get(Calendar.HOUR_OF_DAY));
            accountDetails a4 =new accountDetails();
            String un1 = un.substring(0,un.indexOf('@'));


            if(hr >=8&&hr<=22)
            {
                if(((hr>=8 && hr<=12) && (a4.isBf(un) == 0))) {
                    request.setAttribute("message",un1+"   ! enjoy your breakfast");
                    a4.setBf(un);
                    request.getRequestDispatcher("/token.jsp").forward(request, response);

                }
                else if(a4.isBf(un) == 1){
                    request.setAttribute("message",un1+"   you have already collected the token");
                    //request.getRequestDispatcher("/userLogin.jsp").forward(request, response);

                }


                if(((hr>=13 && hr<=17) && (a4.isLu(un) == 0))) {
                    request.setAttribute("message",un1+"     collect your token... enjoy your Lunch");
                    a4.setLu(un);
                    request.getRequestDispatcher("/token.jsp").forward(request, response);

                }
                else if(a4.isLu(un) == 1){
                    request.setAttribute("message",un+"     you have already collected the token");
                    //.getRequestDispatcher("/userLogin.jsp").forward(request, response);

                }


                if(((hr>=19 && hr<22 ) && (a4.isDi(un) == 0))) {
                    request.setAttribute("message",un1+"     collect your token... enjoy your Dinner");
                    request.getRequestDispatcher("/token.jsp").forward(request, response);
                    a4.setDi(un);

                }
                else if(a4.isDi(un) == 1){
                    request.setAttribute("message",un1+"       you have already collected the token");
                    //request.getRequestDispatcher("/userLogin.jsp").forward(request, response);

                }
                request.getRequestDispatcher("/userLogin.jsp").forward(request, response);
            }
            else{
                request.setAttribute("message","Sorry"+un1+"canteen closed");
                request.getRequestDispatcher("/userLogin.jsp").forward(request, response);

            }

           // request.getRequestDispatcher("/userLogin.jsp").forward(request, response);

           // request.getRequestDispatcher("/generateToken.jsp").forward(request, response);

        } else {
            request.setAttribute("errorMessage", "Invalid Login");
           // request.setAttribute("un",un);
            request.getRequestDispatcher("/userLogin.jsp").forward(request, response);
        }
    }

    public String getUn()
    {
        return un;
    }
}
