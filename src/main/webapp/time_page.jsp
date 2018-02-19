<%@page import="pl.radmit.Thermometr"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<div>
	<h0>
		<%
			Thermometr tc2 = new Thermometr();
			out.print(tc2.getCurrentTime());
		%>
	</h0>

</div>