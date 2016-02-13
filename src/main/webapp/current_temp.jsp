<%@page import="pl.radmit.Thermometr"%>
<%@page import="pl.radmit.WeatherInformator"%>

<div>
	<h2>
		<%
			Thermometr tc3 = new Thermometr();
			out.print(tc3.testMethod());
		%>
	</h2>
</div>