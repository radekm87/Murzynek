<%@page import="pl.radmit.WeatherInformator"%>
<%@ page import="java.util.List" %>
<%@ page import="pl.radmit.weather.dto.FullDayWeather" %>

<div>
	<%
		WeatherInformator wi = new WeatherInformator();
		FullDayWeather wInfo = wi.getCurrentWeatherInfo();
	%>
	<img src="<%= wInfo.getPathIcon()%>" style="float: left; " />
	<h4>&nbsp;&nbsp;Warszawa</h4>
	<h1>
		<%
			out.print("&nbsp;&nbsp;&nbsp;" + wInfo.getTemperature());
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