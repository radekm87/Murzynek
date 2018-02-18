<%@page import="pl.radmit.WeatherInformator"%>
<%@ page import="java.util.List" %>
<%@ page import="pl.radmit.weather.dto.FullDayWeather" %>

<div>
	<img src="pictures/chmura.png" style="float: left; width: 165px; height: 100px;" />
	<h4>Warszawa</h4>
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
	<table class="table table2">
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

			<td><h6><%= day.getTemperature() %> </h6></td>

			<%
				}
			 %>
		</tr>
	</table>
</div>