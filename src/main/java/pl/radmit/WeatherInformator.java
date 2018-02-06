package pl.radmit;

import java.math.BigDecimal;

import net.aksingh.owmjapis.CurrentWeather;
import net.aksingh.owmjapis.OpenWeatherMap;
import net.aksingh.owmjapis.OpenWeatherMap.Language;
import net.aksingh.owmjapis.OpenWeatherMap.Units;

public class WeatherInformator {
	private static int counter = 10;
	
	public String getCurrentWeatherInfo() throws Exception {
//		if(counter < 10) {
//			counter++;
//			return "";
//		}
//		
//		counter = 0;
		
		StringBuffer strReturn = new StringBuffer();

		// declaring object of "OpenWeatherMap" class
		OpenWeatherMap owm = new OpenWeatherMap("");
		owm.setApiKey("a0cce921751099ac376c0d8b77541f2e");

		// Bug po stronie openweathermap - przyjumujemy default tj kelvin i konwertujemy
				owm.setUnits(Units.METRIC);
				owm.setLang(Language.POLISH);

		// getting current weather data for the "London" city
		CurrentWeather cwd = owm.currentWeatherByCityName("Warsaw");

		// printing city name from the retrieved data
		// System.out.println("City: " + cwd.getCityName());

		// printing the max./min. temperature
		float tempFromOWM = cwd.getMainInstance().getTemperature();
		double actualTempInC = tempFromOWM ; //- 273.15;
		
		strReturn.append(new BigDecimal(actualTempInC)
				.setScale(1, BigDecimal.ROUND_HALF_UP));
		
		strReturn.append("*\n");
//		strReturn.append(" Humidity=");
//		strReturn.append(new BigDecimal(cwd.getMainInstance().getHumidity())
//				.setScale(1, BigDecimal.ROUND_HALF_UP));
//		strReturn.append("%");

		

		return strReturn.toString();
	}
}
