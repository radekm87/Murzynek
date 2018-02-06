<%@page import="pl.radmit.rest.client.xiaomi.gateway.TemperatureDetector"%>

<div>
	<h4>
		<%
			TemperatureDetector td = new TemperatureDetector();
			out.print(td.lecPoAllCzujkachTemp());
		%>
	</h4>
</div>