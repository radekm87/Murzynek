package pl.radmit;

import java.math.BigDecimal;
import java.util.List;

import com.google.api.client.util.Lists;
import net.aksingh.owmjapis.CurrentWeather;
import net.aksingh.owmjapis.DailyForecast;
import net.aksingh.owmjapis.OpenWeatherMap;
import net.aksingh.owmjapis.OpenWeatherMap.Language;
import net.aksingh.owmjapis.OpenWeatherMap.Units;
import pl.radmit.weather.dto.FullDayWeather;

public class WeatherInformator {
	private static int counter = 10;
	
	public FullDayWeather getCurrentWeatherInfo() throws Exception {
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

		if(cwd.getMainInstance() == null) {
			return new FullDayWeather("00", "", "100");
		}

		// printing the max./min. temperature
		float tempFromOWM = cwd.getMainInstance().getTemperature();
//		double actualTempInC = tempFromOWM ; //- 273.15;
		
		String tmp = new BigDecimal(tempFromOWM).setScale(1, BigDecimal.ROUND_HALF_UP).toString();
		
		return new FullDayWeather(tmp, cwd.getWeatherInstance(0).getWeatherIconName(), "100");
	}

	public List<FullDayWeather> getWeatherInfoFor4Days() throws Exception {

		List<FullDayWeather> daysWeather = Lists.newArrayList();

		// declaring object of "OpenWeatherMap" class
		OpenWeatherMap owm = new OpenWeatherMap("");
		owm.setApiKey("a0cce921751099ac376c0d8b77541f2e");

		owm.setUnits(Units.METRIC);
		owm.setLang(Language.POLISH);



		// pobranie prognozy pogody na 5 dni, bo dzien pierwszy to obecny
		byte count = 5;
		DailyForecast dailyForecast = owm.dailyForecastByCityName("Warsaw", count);
		for(int i=1; i<dailyForecast.getForecastCount(); i++) {
			DailyForecast.Forecast forecastInstance = dailyForecast.getForecastInstance(i);
			FullDayWeather d = new FullDayWeather(
					new BigDecimal(forecastInstance.getTemperatureInstance().getDayTemperature()).setScale(1, BigDecimal.ROUND_HALF_UP).toString(),
					forecastInstance.getWeatherInstance(0).getWeatherIconName(),
					"40"
			);
			daysWeather.add(d);
		}


		return daysWeather;
	}
}
