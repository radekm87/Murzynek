package pl.radmit;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;

import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

public class Thermometr {
	
	private static int counter = 10;
	
	public String testMethod() throws Exception {
//		if(counter < 10) {
//			counter++;
//			return "";
//		}
//		
//		counter = 0;
		StringBuffer strReturn = new StringBuffer();
		JSch jsch = new JSch();
		try {
			Session session = jsch.getSession("pi", "192.168.1.12", 22);

			session.setPassword("raspberry");
			Properties config = new Properties();
			config.put("StrictHostKeyChecking", "no");
			session.setConfig(config);
			session.connect();

			ChannelExec channel = (ChannelExec) session.openChannel("exec");
			BufferedReader in = new BufferedReader(new InputStreamReader(
					channel.getInputStream()));
			channel.setCommand("sudo ./git/Adafruit_Python_DHT/examples/AdafruitDHT.py 22 4;");
			channel.connect();

			String msg = null;
			while ((msg = in.readLine()) != null) {
				strReturn.append(msg);
			}

			channel.disconnect();
			session.disconnect();
		} catch(Exception e) {
			strReturn.append("ERR");
		}
		//
		//
		// Process p = Runtime.getRuntime().exec("ssh pi@192.168.1.16");
		// PrintStream out = new PrintStream(p.getOutputStream());
		// BufferedReader in = new BufferedReader(new
		// InputStreamReader(p.getInputStream()));
		//
		// out.println("ls -l /home/pi");
		// while (in.ready()) {
		// String s = in.readLine();
		// System.out.println(s);
		// }
		// out.println("exit");
		//
		// p.waitFor();

		return strReturn.toString();
	}

	
	public String getCurrentDate() throws Exception {
		Calendar calendar = Calendar.getInstance();
		// 3 letter name form of the day
		
		// full name form of the day
		String dayName= new SimpleDateFormat("EEEE", Locale.ENGLISH).format(calendar.getTime());
		String currentDateString =  new SimpleDateFormat("dd.MM.yy").format(calendar.getTime());
		
		return dayName + ", " + currentDateString;
	}
	
	
	public String getCurrentTime() throws Exception {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		return sdf.format(cal.getTime());
	}
}
