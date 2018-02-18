package pl.radmit.rest.client.xiaomi.gateway;

import com.google.api.client.util.Lists;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by radek on 06.02.2018.
 */
public class TemperatureDetector {

    private static final String REST_URI
            = "http://192.168.1.12:8080/rest/items";

    Client client = ClientBuilder.newClient();

    public List<DeviceXiaomi> getAllTemperatureSensorFromOpenhab(){
        List<ItemOpenhab> allItemsFromOpenhab = getAllItemsFromOpenhab();
        List<ItemOpenhab> temperatureItems = filtrItemsByCategory(allItemsFromOpenhab);

        List<DeviceXiaomi> xiaomiList = temperatureItems.stream().map(itemOpenhab -> {
            BigDecimal tempValue = itemOpenhab.getState()==null || itemOpenhab.getState().equalsIgnoreCase("null") ? BigDecimal.valueOf(0) : new BigDecimal(itemOpenhab.getState()).setScale(1, BigDecimal.ROUND_HALF_UP);
            return new DeviceXiaomi(tempValue.toString(), itemOpenhab.getLabel());
        }).collect(Collectors.toList());

        return xiaomiList;
    }

//    ClientConfig configuration = new ClientConfig();
//configuration.property(ClientProperties.CONNECT_TIMEOUT, 1000);
//configuration.property(ClientProperties.READ_TIMEOUT, 1000);
//    Client client = ClientBuilder.newClient(configuration);

    private List<ItemOpenhab> getAllItemsFromOpenhab() {
        try {
            List<ItemOpenhab> itemsOpenhab = client.target(REST_URI).path("/").request(MediaType.APPLICATION_JSON).get(new GenericType<List<ItemOpenhab>>() {});
            return itemsOpenhab;
        } catch (Exception e) {
            return Lists.newArrayList();
        }
    }

    private List<ItemOpenhab> filtrItemsByCategory(List<ItemOpenhab> allItemsFromOpenhab) {
        return allItemsFromOpenhab.stream()
                    .filter(i -> i.getCategory() != null &&
                            (
                                    i.getCategory().equalsIgnoreCase("temperature")
                                           // || i.getCategory().equalsIgnoreCase("humidity")
                            )
                    ).collect(Collectors.toList());
    }
}
