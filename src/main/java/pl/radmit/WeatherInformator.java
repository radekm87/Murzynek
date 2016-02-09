package pl.radmit;

import java.math.BigDecimal;

import org.bitpipeline.lib.owm.OwmClient;
import org.bitpipeline.lib.owm.WeatherData;
import org.bitpipeline.lib.owm.WeatherData.WeatherCondition;
import org.bitpipeline.lib.owm.WeatherStatusResponse;


public class WeatherInformator {
	public String getCurrentWeatherInfo() throws Exception {
		StringBuffer strReturn = new StringBuffer();
	OwmClient owm = new OwmClient();
	owm.setAPPID("a0cce921751099ac376c0d8b77541f2e");
	WeatherStatusResponse currentWeather = owm.currentWeatherAtCity("Warsaw", "PL");
	if (currentWeather.hasWeatherStatus ()) {
	    WeatherData weather = currentWeather.getWeatherStatus ().get (0);
	    strReturn.append("Temp=");
	    strReturn.append(new BigDecimal(weather.getTemp() / 100).setScale(1, BigDecimal.ROUND_HALF_UP));
	    strReturn.append("*");
	    strReturn.append(" Humidity=");
	    strReturn.append(new BigDecimal(weather.getHumidity()).setScale(1, BigDecimal.ROUND_HALF_UP));
	    strReturn.append("%");
//	    if (weather.getPrecipitation () == Integer.MIN_VALUE) {
//	        WeatherCondition weatherCondition = weather.getWeatherConditions ().get (0);
//	        String description = weatherCondition.getDescription ();
//	        if (description.contains ("rain") || description.contains ("shower"))
//	            System.out.println ("No rain measures in Tokyo but reports of " + description);
//	        else
//	            System.out.println ("No rain measures in Tokyo: " + description);
//	    } else
//	        System.out.println ("It's raining in Tokyo: " + weather.getPrecipitation () + " mm/h");
	}
		return strReturn.toString();
	}
}
