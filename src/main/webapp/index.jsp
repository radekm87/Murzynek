<%@page import="pl.radmit.Thermometr"%>
<%@page import="pl.radmit.WeatherInformator"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>




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
<meta http-equiv="refresh" content="60" />
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Murzyn v 0.0.0.1</title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">

</head>
<body bgcolor="black">
	<div class="container theme-showcase" role="main">
				<h1>
					CZAS:
					<%
					   // Set refresh, autoload time as 5 seconds
					 
					   // Get current time
					  
					Thermometr tc = new Thermometr();
					out.print(tc.getCurrentTime());
				%>
				</h1>


				<h2>
					DP:
					<%
					   // Set refresh, autoload time as 5 seconds
					   response.setIntHeader("Refresh", 5);
					   // Get current time
					   Calendar calendar = new GregorianCalendar();
					   String am_pm;
					   int hour = calendar.get(Calendar.HOUR);
					   int minute = calendar.get(Calendar.MINUTE);
					   int second = calendar.get(Calendar.SECOND);
					   if(calendar.get(Calendar.AM_PM) == 0)
					      am_pm = "AM";
					   else
					      am_pm = "PM";
					   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
					   out.println("Crrent Time: " + CT + "\n");
					
				%>
				</h2>
				
				<h2>
					DW:
					<%
					WeatherInformator wi = new WeatherInformator();
				out.print(wi.getCurrentWeatherInfo());
				%>
				</h2>
			


		<!--
			<div id="RozkladyJazdy"><h2 id="h2b64"><span>rozkłady jazdy</span></h2><div id="RozkladyJazdyTop"><p>Rozkłady jazdy ważne w dniu: 04.02.2016 (czwartek)</p></div><div id="RozkladyJazdyTopDays" class="noprint"><p>przejdź do rozkładów na kolejne dni:</p><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=06&amp;k=A&amp;d=2016-02-05" class="textmore">piątek</a><span> </span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=06&amp;k=A&amp;d=2016-02-06" class="textmore">sobota</a><span> </span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=06&amp;k=A&amp;d=2016-02-07" class="textmore">niedziela</a><span> </span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=06&amp;k=A&amp;d=2016-02-08" class="textmore">poniedziałek</a><span> </span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=06&amp;k=A&amp;d=2016-02-09" class="textmore">wtorek</a><span> </span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=06&amp;k=A&amp;d=2016-02-10" class="textmore">środa</a></div><div class="cb"></div><div id="RozkladContent" class="ascale"><div id="PrzystanekRozklad"><h4><img src="./img/ico/big/ico_bus.png" alt="Ikona" class="busico" /><a href="rozklad_nowy.php?c=182&amp;l=1&amp;q=218"><span>218</span></a> - linia zwykła</h4><p>przystanek: <strong><a href="rozklad_nowy.php?c=183&amp;l=1&amp;a=3114">Metro Wierzbno</a> 06</strong> &raquo; <strong>Metro Wilanowska</strong></p><p>najbliższy odjazd za 5 min. (15:15)</p><div class="TableHeader"><div class="godz">godz.</div><div class="block">&nbsp;</div><div class="minuty">minuty</div></div><div class="cb"></div><div class="go"><h5>5</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=5.03" class="mi gr"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=5.33" class="mi gr"><span  class="nsp">33</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=5.48" class="mi gr"><span  class="nsp">48</span></a><div class="cb"></div><div class="go"><h5>6</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=6.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=6.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=6.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=6.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>7</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=7.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=7.15" class="mi gr"><span  class="nsp">15</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=7.27" class="mi gr"><span  class="nsp">27</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=7.37" class="mi gr"><span  class="nsp">37</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=7.47" class="mi gr"><span  class="nsp">47</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=7.57" class="mi gr"><span  class="nsp">57</span></a><div class="cb"></div><div class="go"><h5>8</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=8.07" class="mi gr"><span  class="nsp">07</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=8.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=8.29" class="mi gr"><span  class="nsp">29</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=8.41" class="mi gr"><span  class="nsp">41</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=8.53" class="mi gr"><span  class="nsp">53</span></a><div class="cb"></div><div class="go"><h5>9</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=9.05" class="mi gr"><span  class="nsp">05</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=9.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=9.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=9.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>10</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=10.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=10.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=10.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=10.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>11</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=11.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=11.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=11.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=11.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>12</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=12.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=12.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=12.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=12.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>13</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=13.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=13.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=13.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=13.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>14</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=14.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=14.17" class="mi gr"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=14.32" class="mi gr"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=14.47" class="mi gr"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>15</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=15.02" class="mi gr"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=15.15" class="mi re"><span  class="nsp">15</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=15.27" class="mi"><span  class="nsp">27</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=15.39" class="mi"><span  class="nsp">39</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=15.51" class="mi"><span  class="nsp">51</span></a><div class="cb"></div><div class="go"><h5>16</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=16.03" class="mi"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=16.15" class="mi"><span  class="nsp">15</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=16.27" class="mi"><span  class="nsp">27</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=16.39" class="mi"><span  class="nsp">39</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=16.51" class="mi"><span  class="nsp">51</span></a><div class="cb"></div><div class="go"><h5>17</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=17.03" class="mi"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=17.15" class="mi"><span  class="nsp">15</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=17.27" class="mi"><span  class="nsp">27</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=17.39" class="mi"><span  class="nsp">39</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=17.51" class="mi"><span  class="nsp">51</span></a><div class="cb"></div><div class="go"><h5>18</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=18.03" class="mi"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=18.15" class="mi"><span  class="nsp">15</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=18.27" class="mi"><span  class="nsp">27</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=18.39" class="mi"><span  class="nsp">39</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=18.51" class="mi"><span  class="nsp">51</span></a><div class="cb"></div><div class="go"><h5>19</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=19.04" class="mi"><span  class="nsp">04</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=19.17" class="mi"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=19.32" class="mi"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=19.47" class="mi"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>20</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=20.02" class="mi"><span  class="nsp">02</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=20.17" class="mi"><span  class="nsp">17</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=20.32" class="mi"><span  class="nsp">32</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=20.47" class="mi"><span  class="nsp">47</span></a><div class="cb"></div><div class="go"><h5>21</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=21.03" class="mi"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=21.18" class="mi"><span  class="nsp">18</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amamp;h=21.33" class="mi"><span  class="nsp">33</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=21.48" class="mi"><span  class="nsp">48</span></a><div class="cb"></div><div class="go"><h5>22</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=22.03" class="mi"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=22.33" class="mi"><span  class="nsp">33</span></a><div class="cb"></div><div class="go"><h5>23</h5></div><div class="block">&nbsp;</div><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=23.03" class="mi"><span  class="nsp">03</span></a><a href="rozklad_nowy.php?c=182&amp;l=1&amp;g=281&amp;n=3114&amp;o=06&amp;h=23.33" class="mi"><span  class="nsp">33</span></a><div class="cb"></div><div class="RozkladLegenda"><p>Rozkład ważny od 2016-01-02</p><p>_ - kurs realizowany przez pojazd niskopodłogowy</p></div><div class="LinkiDodatkowe"><p><a href="rozklad_nowy.php?c=182&amp;l=1&amp;n=3114&amp;o=06" class="textmore">Odjazdy wszystkich linii z tego przystanku</a><br/><a href="rozklad_nowy.php?c=182&amp;l=1&amp;w=281&amp;n=3114&amp;o=06" class="textmore">Drukuj rozkład na wszystkie dni</a><br/><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=05&amp;k=B" class="textmore">Zobacz odjazdy w przeciwnym kierunku</a></p></div><div class="cb"></div><div class="RozkladInne"><h4>Pozostałe rozkłady z przystanków Metro Wierzbno:</h4><div class="ILin"><strong>18</strong></div><div class="IKier"><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=18&amp;n=3114&amp;o=04&amp;k=A">Służewiec</a><br /><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=18&amp;n=3114&amp;o=03&amp;k=B">Żerań FSO</a></div><div class="cb"></div><div class="ILin"><strong>31</strong></div><div class="IKier"><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=31&amp;n=3114&amp;o=04&amp;k=A">Służewiec</a><br /><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=31&amp;n=3114&amp;o=03&amp;k=B">Metro Wilanowska</a></div><div class="cb"></div><div class="ILin"><strong>174</strong></div><div class="IKier"><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=174&amp;n=3114&amp;o=01&amp;k=A">Bokserska</a><br /><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=174&amp;n=3114&amp;o=02&amp;k=B">Rondo ONZ</a></div><div class="cb"></div><div class="ILin"><strong>218</strong></div><div class="IKier"><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=218&amp;n=3114&amp;o=05&amp;k=B">Królikarnia</a></div><div class="cb"></div><div class="ILin"><strong>700</strong></div><div class="IKier"><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=700&amp;n=3114&amp;o=02&amp;k=A">Dw.Centralny</a><br /><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=700&amp;n=3114&amp;o=01&amp;k=B">Pańska</a></div><div class="cb"></div><div class="ILin"><strong>N36</strong></div><div class="IKier"><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=N36&amp;n=3114&amp;o=02&amp;k=A">Dw.Centralny</a><br /><span>&raquo;</span><a href="rozklad_nowy.php?c=182&amp;l=1&amp;a=N36&amp;n=3114&amp;o=06&amp;k=B">Bokserska</a></div><div class="cb"></div></div><div class="cb"></div></div></div></div>
		-->
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
