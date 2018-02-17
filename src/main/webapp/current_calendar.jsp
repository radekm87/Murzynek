<%@page import="pl.radmit.google.calendar.GoogleCalendar"%>

<div>
    <h6>
        <%
            GoogleCalendar calendar = new GoogleCalendar();
            out.print(calendar.getWydarzenia());
        %>
    </h6>
</div>
