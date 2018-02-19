<%@page import="pl.radmit.Thermometr"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<div>
	<h4>
		<%
			Thermometr tc = new Thermometr();
			out.print(tc.getCurrentDate());
		%>
	</h4>
</div>