<%@page import="pl.radmit.Thermometr"%>
<%@page import="pl.radmit.WeatherInformator"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<div>
	<h6>
		<%
			Thermometr tc3 = new Thermometr();
			out.print(tc3.testMethod());
		%>
	</h6>
</div>