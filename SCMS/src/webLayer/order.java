package webLayer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "order")
public class order extends HttpServlet {
    public static String FI;
//    public static String FI1;

    public static int Q;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataLayer.accountDetails a7 = new DataLayer.accountDetails();
        FI = request.getParameter("foodid");
//        FI = FI1.substring(0,2);
        String[] arrOfStr = FI.split("-");
        FI=arrOfStr[0];


        Q = Integer.parseInt(request.getParameter("quantity"));


//        public String food=FI;
//        public int quan=Q;


        int f=a7.decQuantity(FI, Q);
        if(f>0) {
            if (a7.dc == 1) {
//                request.setAttribute("foodid", FI);
//                request.setAttribute("quantity", Q);
                request.getRequestDispatcher("/bill.jsp").forward(request, response);
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
    protected String getf1(){
        return FI;
    }
    protected  int getq(){
        return Q;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", FI);
        request.getRequestDispatcher("/bill.jsp").forward(request, response);


    }


}
