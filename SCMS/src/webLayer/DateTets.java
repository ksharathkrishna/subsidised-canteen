package webLayer;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class DateTets {
    public static void main(String[] args) {
        Calendar cal = GregorianCalendar.getInstance();
         //cal.get(Calendar.HOUR_OF_DAY);
       // int hr = Calendar.HOUR_OF_DAY;
        int hr = cal.get(Calendar.HOUR_OF_DAY);
        //int hr2 = Calendar.
        System.out.println(cal.get(Calendar.HOUR_OF_DAY) );
      System.out.println(hr);
    }
}
