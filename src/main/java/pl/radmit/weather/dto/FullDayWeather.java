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

    public FullDayWeather(String temperature, String idIcon, String size) {
        this.temperature = temperature + "*";
        this.pathIcon = translateIdIconToPathPictureIcon(idIcon, size);
    }

    private String translateIdIconToPathPictureIcon(String idIcon, String size){
        String path = "";
        if (idIcon.equals("01d") || idIcon.equals("01n")) {
            path = "pictures/" + size + "/icons8-sun-" + size + ".png";
        } else if (idIcon.equals("02d") || idIcon.equals("02n")) {
            path = "pictures/" + size +"/icons8-partly-cloudy-day-" + size + ".png";
        } else if (idIcon.equals("03d") || idIcon.equals("04d") || idIcon.equals("03n") || idIcon.equals("04n")) {
            path = "pictures/" + size + "/icons8-cloud-" + size + ".png";
        }else if (idIcon.equals("09d") || idIcon.equals("09n")) {
            path = "pictures/" + size + "/icons8-rain-" + size + ".png";
        }else if (idIcon.equals("10d") || idIcon.equals("10n")) {
            path = "pictures/" + size + "/icons8-rain-cloud-" + size + ".png";
        }else if (idIcon.equals("11d") || idIcon.equals("11n")) {
            path = "pictures/" + size +"/icons8-cloud-lightning-" + size + ".png";
        }else if (idIcon.equals("13d") || idIcon.equals("13n")) {
            path = "pictures/" +size + "/icons8-snow-" + size + ".png";
        }else if (idIcon.equals("50d") || idIcon.equals("50n")) {
            path = "pictures/" + size + "/icons8-dust-" + size + ".png";
        }

        return path;
    }
}
