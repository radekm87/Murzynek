<%@page import="pl.radmit.WeatherInformator"%>
<%@ page import="java.util.List" %>
<%@ page import="pl.radmit.weather.dto.FullDayWeather" %>

<div>
	<img src="pictures/chmura.png" style="float: left; width: 165px; height: 100px;" />
	<h4>Na dworzu:</h4>
	<h1>
		<%
			WeatherInformator wi = new WeatherInformator();
			out.print(wi.getCurrentWeatherInfo());
		%>
	</h1>
</div>

<div>
	<br/>
</div>

<div>
	<table class="table">
		<tr>
			<%
				List<FullDayWeather> daysWeather = wi.getWeatherInfoFor4Days();

				for(FullDayWeather day : daysWeather) {
			%>

			<td> <img src="<%= day.getPathIcon()%>" style="..."/></td>
			<%
				}
			%>

		</tr>




		<tr>

			<%
				for(FullDayWeather day : daysWeather) {
			%>

				<td><%= day.getTemperature() %></td>

			<%
				}
			 %>
		</tr>
	</table>
</div>