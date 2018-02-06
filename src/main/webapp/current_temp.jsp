<%@page import="pl.radmit.Thermometr"%>
<%@page import="pl.radmit.WeatherInformator"%>

<div>
	<h4>
		<%
			Thermometr tc3 = new Thermometr();
			out.print(tc3.testMethod());
		%>
	</h4>
</div>