<%@page import="pl.radmit.Thermometr"%>
<%@page import="pl.radmit.WeatherInformator"%>
<%@page import="java.util.Calendar"%>





<%--
 Copyright 2004-2005 Sun Microsystems, Inc.  All rights reserved.
 Use is subject to license terms.
 
 
 <html>
<body>
<h2>Hello World 1!</h2>
</body>
</html>

--%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--   meta http-equiv="refresh" content="60" /> -->
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Murzyn v 0.0.0.1</title>
	<script
			src="http://code.jquery.com/jquery-2.2.4.min.js"
			integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
			crossorigin="anonymous"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<%--<script src="js/bootstrap.min.js"></script>--%>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<link href="css/murzyn.css" rel="stylesheet">

</head>

<body>

	<table align="left" border="0" cellpadding="1" cellspacing="1"
		style="width: 100%;">
		<tbody>
			<tr>
				<td style="width: 50%; vertical-align: top;">
					<div id="load_day">
					<%@include file="current_day.jsp" %>
					</div>
					<div id=load_time>
						<%@include file="time_page.jsp" %>
					</div>
				</td>

				<td>
					<div id="load_weather">
						<%@include file="current_weather.jsp" %>
					</div>
					
					
					 </br> </br>
				</td>
			</tr>

			<tr>
				<td>
					<div id="load_calendar">
						<%@include file="current_calendar.jsp" %>
					</div>
				</td>

				<td>
					<div id="load_temp">
						<%@include file="current_temp.jsp" %>
					</div>

					<br/>
					<div id="load_xiaomi_temp">
						<%@include file="current_temp_xiaomi.jsp" %>
					</div>
				</td>
			</tr>

			<tr>
				<td class="tg-yw4l"></td>
				<td class="tg-yw4l"></td>
			</tr>
		</tbody>
	</table>


	<div class="container theme-showcase">


	</div>



	<script type="text/javascript">
		var auto_refresh_time = setInterval(function() {
			$('#load_time').load('time_page.jsp#load_time').fadeIn("slow");
		}, 10000); // refresh every 10 seconds
	</script>

	<script type="text/javascript">
		var auto_refresh_other = setInterval(function() {
			$('#load_day').load('current_day.jsp#load_day').fadeIn("slow");
			$('#load_weather').load('current_weather.jsp').fadeIn("slow");
			$('#load_temp').load('current_temp.jsp').fadeIn("slow");
            $('#load_calendar').load('current_calendar.jsp').fadeIn("slow");
            $('#load_xiaomi_temp').load('current_temp_xiaomi.jsp').fadeIn("slow");

		}, 300000); // refresh every 5 minutes
	</script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

</body>
</html>
