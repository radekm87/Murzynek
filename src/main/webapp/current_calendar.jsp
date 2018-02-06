<%@page import="pl.radmit.google.calendar.GoogleCalendar"%>

<div>
    <h4>
        <%
            GoogleCalendar calendar = new GoogleCalendar();
            out.print(calendar.getWydarzenia());
        %>
    </h4>
</div>
