<%@page import="pl.radmit.Thermometr"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>

<div>
	<h0>
		<%
			Thermometr tc2 = new Thermometr();
			out.print(tc2.getCurrentTime());
		%>
	</h0>

</div>