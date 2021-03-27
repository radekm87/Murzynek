package pl.radmit.rest.client.xiaomi.gateway;

import com.google.api.client.util.Lists;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by radek on 06.02.2018.
 */
public class TemperatureDetector {

    private static final String REST_URI
            = "http://192.168.1.90:8123/api/states";
    private String token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI4YTY5N2YxMmJmNDk0MTk3OGFhY2M0MjRkNmEyZWU0NiIsImlhdCI6MTU4ODUyNDQ0NiwiZXhwIjoxOTAzODg0NDQ2fQ.7Jkbv_qIEZ12MEUV91d-7B_BwnHtAaVBD0mf-5BpdyU";

    Client client = ClientBuilder.newClient();

    public List<DeviceXiaomi> getAllTemperatureSensorFromOpenhab(){
        List<ItemHomeAssistant> allItemsFromOpenhab = getAllItemsFromOpenhab();
        List<ItemHomeAssistant> temperatureItems = filtrItemsByCategory(allItemsFromOpenhab);

        List<DeviceXiaomi> xiaomiList = temperatureItems.stream().map(itemOpenhab -> {
            BigDecimal tempValue = itemOpenhab.getState()==null || itemOpenhab.getState().equalsIgnoreCase("null") ? BigDecimal.valueOf(0) :
                    new BigDecimal(itemOpenhab.getState()).subtract(new BigDecimal(0.7)).setScale(1, BigDecimal.ROUND_HALF_UP);
            return new DeviceXiaomi(tempValue.toString(), itemOpenhab.getAttributes().getFriendly_name().replace("temperature", "").replace("Temperature", ""));
        }).collect(Collectors.toList());

        return xiaomiList;
    }

//    ClientConfig configuration = new ClientConfig();
//configuration.property(ClientProperties.CONNECT_TIMEOUT, 1000);
//configuration.property(ClientProperties.READ_TIMEOUT, 1000);
//    Client client = ClientBuilder.newClient(configuration);

    private List<ItemHomeAssistant> getAllItemsFromOpenhab() {
        try {
            List<ItemHomeAssistant> itemsOpenhab = client.target(REST_URI).request(MediaType.APPLICATION_JSON).header(HttpHeaders.AUTHORIZATION, "Bearer " + token).get(new GenericType<List<ItemHomeAssistant>>() {});
            return itemsOpenhab;
        } catch (Exception e) {
            return Lists.newArrayList();
        }
    }

    private List<ItemHomeAssistant> filtrItemsByCategory(List<ItemHomeAssistant> allItemsFromOpenhab) {
//        return allItemsFromOpenhab.stream()
//                    .filter(i -> i.getCategory() != null &&
//                            (
//                                    i.getCategory().equalsIgnoreCase("temperature")
//                                           // || i.getCategory().equalsIgnoreCase("humidity")
//                            )
//                    ).collect(Collectors.toList());

        return allItemsFromOpenhab.stream()
                .filter(i -> i.getEntity_id().contains("sensor.0x00"))
                .filter(i -> i.getEntity_id().contains("temperature")
                ).collect(Collectors.toList());


//        return  allItemsFromOpenhab.stream().filter(d -> d.getAttributes() != null && "temperature".equalsIgnoreCase(d.getAttributes().getDevice_class())).collect(Collectors.toList());

    }
}
