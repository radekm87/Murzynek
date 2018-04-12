package pl.radmit;

/**
 * Created by radek on 19.02.2018.
 */
public class Utils {

    public static String convertToPolish(String dayName) {
        String s = dayName.toLowerCase();
        if (s.equals("monday")) {
            return "Poniedziałek";
        } else if (s.equals("thuersday")) {
            return "Wtorek";
        } else if (s.equals("wednesday")) {
            return "Środa";
        }else if (s.equals("thursday")) {
            return "Czwartek";
        }else if (s.equals("friday")) {
            return "Piątek";
        }else if (s.equals("saturday")) {
            return "Sobota";
        }else if (s.equals("sunday")) {
            return "Niedziela";
        }

        return dayName;
    }

    public static String convertToPolish(int dayNumber) {
        switch(dayNumber) {
            case 6:
                return "Piątek";
            case 7:
                return "Sobota";
            case 1:
                return "Niedziela";
            case 2:
                return "Poniedziałek";
            case 3:
                return "Wtorek";
            case 4:
                return "Środa";
            case 5:
                return "Czwartek";
        }

        return "Nieznany numer (" + dayNumber + ")";
    }
}
