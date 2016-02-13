<%@page import="pl.radmit.Thermometr"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>

<div>
	<h1>
		<%
			Thermometr tc2 = new Thermometr();
			out.print(tc2.getCurrentTime());
		%>
	</h1>

</div>