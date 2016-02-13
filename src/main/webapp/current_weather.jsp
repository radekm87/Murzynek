<%@page import="pl.radmit.WeatherInformator"%>

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