<%@page import="pl.radmit.Thermometr"%>

<div>
	<h4>
		<%
			Thermometr tc = new Thermometr();
			out.print(tc.getCurrentDate());
		%>
	</h4>
</div>