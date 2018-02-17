package pl.radmit.weather.dto;

/**
 * Created by radek on 16.02.2018.
 */
public class FullDayWeather {
    private String temperature;
    private String pathIcon;

    public String getTemperature() {
        return temperature;
    }

    public String getPathIcon() {
        return pathIcon;
    }

    public FullDayWeather(String temperature, String idIcon) {
        this.temperature = temperature + "*";
        this.pathIcon = translateIdIconToPathPictureIcon(idIcon);
    }

    private String translateIdIconToPathPictureIcon(String idIcon){
        String path = "";
        if (idIcon.equals("01d")) {
            path = "pictures/40/icons8-sun-40.png";
        } else if (idIcon.equals("02d")) {
            path = "pictures/40/icons8-partly-cloudy-day-40.png";
        } else if (idIcon.equals("03d") || idIcon.equals("04d")) {
            path = "pictures/40/icons8-cloud-40.png";
        }else if (idIcon.equals("09d")) {
            path = "pictures/40/icons8-rain-40.png";
        }else if (idIcon.equals("10d")) {
            path = "pictures/40/icons8-rain-cloud-40.png";
        }else if (idIcon.equals("11d")) {
            path = "pictures/40/icons8-cloud-lightning-40.png";
        }else if (idIcon.equals("13d")) {
            path = "pictures/40/icons8-snow-40.png";
        }else if (idIcon.equals("50d")) {
            path = "pictures/40/icons8-dust-40.png";
        }

        return path;
    }
}
