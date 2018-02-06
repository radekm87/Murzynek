package pl.radmit.rest.client.xiaomi.gateway;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by radek on 06.02.2018.
 */
public class TemperatureDetector {

    private static final String REST_URI
            = "http://192.168.1.12:8080/rest/items/";




    public String lecPoAllCzujkachTemp(){
        StringBuilder sb = new StringBuilder();
        Client client = ClientBuilder.newClient();
        DeviceXiaomi pSalon = getJsonEmployee("XiaomiMiTemperatureHumiditySensorP9_Temperature", client);
        sb.append("Salon: " + new BigDecimal(pSalon.getState()).setScale(1, BigDecimal.ROUND_HALF_UP));
        sb.append("<br/>");
        DeviceXiaomi p9 = getJsonEmployee("XiaomiMiTemperatureHumiditySensor_Temperature", client);
        sb.append("P9: " + new BigDecimal(p9.getState()).setScale(1, BigDecimal.ROUND_HALF_UP));

        return sb.toString();
    }


    private DeviceXiaomi getJsonEmployee(String deviceName, Client client) {
        try {
            return client
                    .target(REST_URI)
                    .path(deviceName)
                    .request(MediaType.APPLICATION_JSON)
                    .get(DeviceXiaomi.class);
        } catch(Exception e) {
            e.printStackTrace();
            return new DeviceXiaomi("", "0", "");
        }
    }

//    private void updateCustomer(Customer customer) {
//        try {
//            Client client = ClientBuilder.newClient();
//            WebTarget target = client.target("http://192.168.1.12:8080").path("resource");
//
//
//
//            MyJAXBBean bean =
//                    target.request(MediaType.APPLICATION_JSON_TYPE)
//                            .post(Entity.entity(form,MediaType.APPLICATION_FORM_URLENCODED_TYPE),
//                                    MyJAXBBean.class);
//        } catch(Exception e) {
//            throw new RuntimeException(e);
//        }
//    }
}
