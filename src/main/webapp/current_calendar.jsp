<%@page import="pl.radmit.google.calendar.GoogleCalendar"%>
<%@ page import="pl.radmit.google.calendar.GCalendarDto" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<div>
    <%--<h6>--%>
        <%--<%--%>
            <%--GoogleCalendar calendar = new GoogleCalendar();--%>
            <%--out.print(calendar.getCalendarEvents());--%>
        <%--%>--%>
    <%--</h6>--%>
    <table class="table" style="width: 90%;">
        <%
            GoogleCalendar calendar = new GoogleCalendar();
            List<GCalendarDto> events = calendar.getCalendarEvents();

            for(GCalendarDto dto : events) {
        %>
        <tr>
            <td><h6> <%= dto.getDayName()%> </h6> </td>
            <td><h6> <%= dto.getDesc()%> </h6> </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
