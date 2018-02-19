<%@page import="pl.radmit.rest.client.xiaomi.gateway.TemperatureDetector"%>
<%@ page import="pl.radmit.rest.client.xiaomi.gateway.DeviceXiaomi" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<div>
	<img src="pictures/100/icons8-thermometer-100.png" style="float: left; " />
	<table class="table" style="width: 75%; ">

			<%
				TemperatureDetector td = new TemperatureDetector();
				List<DeviceXiaomi> items = td.getAllTemperatureSensorFromOpenhab();

				for(DeviceXiaomi dev : items) {
			%>
		<tr>
			<td><h6> <%= dev.getLabel()%> </h6> </td>
			<td><h6> <%= dev.getState()%> </h6> </td>
		</tr>
		<%
			}
		%>

	</table>
</div>