package pl.radmit.google.calendar;

/**
 * Created by radek on 19.02.2018.
 */
public class GCalendarDto {
    String dayName;
    String date;
    String desc;

    public GCalendarDto(String dayName, String date, String desc) {
        this.dayName = dayName;
        this.date = date;
        this.desc = desc;
    }

    public String getDayName() {
        return dayName;
    }

    public String getDate() {
        return date;
    }

    public String getDesc() {
        return desc;
    }
}
