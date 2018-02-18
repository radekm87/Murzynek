<%@page import="pl.radmit.rest.client.xiaomi.gateway.TemperatureDetector"%>
<%@ page import="pl.radmit.rest.client.xiaomi.gateway.DeviceXiaomi" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<div>
	<table class="table">

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